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

* (Basic machine list)[#heading--basic-machine-list]
* (Machine list + first tag)[#heading--machine-list-first-tag]
* (VM host list)[#heading--vm-host-list]

<h2 id="heading--basic-machine-list>Basic machine list</a>

This recipe prints a basic machine list:

    #!/bin/bash
    maas admin machines read | jq -r '(["HOSTNAME","SYSID","POWER","STATUS",
    "OWNER", "POOL", "VLAN","FABRIC","SUBNET"] | (., map(length*"-"))),
    (.[] | [.hostname, .system_id, .power_state, .status_name, .owner, .pool.name,
    .boot_interface.vlan.name, .boot_interface.vlan.fabric,
    .boot_interface.links[0].subnet.name]) | @tsv' | column -t

We keep this script in a file called `jq-ls-machines.sh`.

<h2 id="heading--machine-list-first-tag">Machine list with first tag added</a>

It's a good idea to keep your most important machine tag first, as it's the first one you'll see.  It makes scanning your list (UI or CLI/jq) much more efficient.  Here's a recipe that adds the first tag to the console-printed machine list.  

     #!/bin/bash
     maas admin machines read | jq -r '(["HOSTNAME","SYSID","POWER","STATUS",
     "OWNER", "TAGS", "POOL", "VLAN","FABRIC","SUBNET"] | (., map(length*"-"))),
     (.[] | [.hostname, .system_id, .power_state, .status_name, .owner // "-", 
     .tag_names[0] // "-", .pool.name,
     .boot_interface.vlan.name, .boot_interface.vlan.fabric,
     .boot_interface.links[0].subnet.name]) | @tsv' | column -t

We keep it in `jq-ls-tagged-machines.sh`, but of course, you can call it whatever you want.

<h2 id="heading-vm-host-list">

This simple command gives a quick overview of your existing VM hosts:

    #!/bin/bash
    maas admin vm-hosts read | jq -r '(["VM HOST","SYSID","CORES","USED","RAM",
    "USED","STORAGE", "USED"] | (., map(length*"-"))), (.[]| [.name,.host.system_id,
    .total.cores, .used.cores, .total.memory, .used.memory,.total.local_storage,
    .used.local_storage]) | @tsv' | column -t

This one goes in a file called `jq-ls-vm-hosts.sh` in our library.

