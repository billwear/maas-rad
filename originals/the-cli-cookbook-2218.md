The following recipes may help you make better use of the [MAAS CLI](/t/maas-cli/802).  Each recipe includes the relevant CLI command sequence, with the results processed through `jq` and other relevant command-line utilities to produce cleaner output.

Most of these can be entered directly at the command line using copy/paste.  Be aware of how multiple lines are parsed by the shell:

* Quoted sections, such as the long command generally following `jq`, need no special accomodations to break lines.  You can break the lines anywhere that's convenient for you, as long as you maintain at least a single space between "words."  

* Any non-quoted section (i.e., part of a shell command) must have a `\` at the end of each line, before a continuation line.

For example, this configuration works fine:

    | jq -r '(["HOSTNAME",
    "SYSID",....
    ....' | column -t

But this one will produce an error:

    | jq
    -r '(["HOSTNAME",....

We've tried to break them so that they fit on an average terminal line, but your mileage may vary.

#### Catalog of jq recipes:

* [Basic machine list](/t/the-cli-cookbook/2218#heading--basic-machine-list)
* [Machine list + first tag](/t/the-cli-cookbook/2218#heading--machine-list-first-tag)
* [VM host list](/t/the-cli-cookbook/2218#heading--vm-host-list)

<h2 id="heading--basic-machine-list">Basic machine list</h2>

This recipe prints a basic machine list:

    #!/bin/bash
    maas admin machines read | jq -r '(["HOSTNAME","SYSID","POWER","STATUS",
    "OWNER", "POOL", "VLAN","FABRIC","SUBNET"] | (., map(length*"-"))),
    (.[] | [.hostname, .system_id, .power_state, .status_name, .owner, .pool.name,
    .boot_interface.vlan.name, .boot_interface.vlan.fabric,
    .boot_interface.links[0].subnet.name]) | @tsv' | column -t

We keep this script in a file called `lsmm` (for "list MAAS machines").

<h2 id="heading--machine-list-first-tag">Machine list with first tag added</a>

It's a good idea to keep your most important machine tag first, as it's the first one you'll see.  It makes scanning your list (UI or CLI/jq) much more efficient.  Here's a recipe that adds the first tag to the console-printed machine list.  

     #!/bin/bash
     maas admin machines read | jq -r '(["HOSTNAME","SYSID","POWER","STATUS",
     "OWNER", "TAGS", "POOL", "VLAN","FABRIC","SUBNET"] | (., map(length*"-"))),
     (.[] | [.hostname, .system_id, .power_state, .status_name, .owner // "-", 
     .tag_names[0] // "-", .pool.name,
     .boot_interface.vlan.name, .boot_interface.vlan.fabric,
     .boot_interface.links[0].subnet.name]) | @tsv' | column -t

We keep it in `lsmmtags`, but of course, you can call it whatever you want.

<h2 id="heading--vm-host-list">List existing VM hosts</h2>

This simple command gives a quick overview of your existing VM hosts:

    #!/bin/bash
    maas admin vm-hosts read | jq -r '(["ID","VM-HOST","SYSID","CORES","USED","RAM",
    "USED","STORAGE", "USED"] | (., map(length*"-"))), (.[]| [.id,.name,.host.system_id,
    .total.cores, .used.cores, .total.memory, .used.memory,.total.local_storage,
    .used.local_storage]) | @tsv' | column -t

This one goes in a file called `lsvmh` in our library.

<h2 id="heading--vm-host-config">List VM host configurable parameters</h2>

Here's a recipe to list the configurable parameters of a specific host, called `lsvmhc`:

```
#!/bin/bash
maas admin vm-host read $1 | jq -r '(["ID","NAME","POOL","ZONE",
"CPU-O/C", "RAM-O/C", "TAGS"] | (., map(length*"-"))), (.| [.id,.name,
.pool.name, .zone.name,.cpu_over_commit_ratio, 
.memory_over_commit_ratio, .tags[]]) | @tsv' | column -t
```

where $1 is the VM host ID (not the System ID; run `lsvmh` if you're in doubt).  This shellscript would be invoked like this:

```
lsvmhc $ID
```

So if your desired VM host is ID 4, you'd type:

```
lsvmhc 4
```