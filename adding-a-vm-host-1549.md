A VM host is simply a machine which can run virtual machines (VMs) by allocating  resources across the VMs you want to create.  If needed, you can overcommit resources, allocating more resources than actually available, so long as you don't try to use more than the VM host has available at any one time. Once MAAS has enlisted, commissioned, and acquired a newly-added machine, you can deploy it as a VM host.  Alternatively, you can create a VM host from a machine you've already got running.

[note type="caution" status="Warning"]
You **must** [configure your network](/t/vm-host-networking/1526) to support a VM host before following the procedures in this section.  You will also want to make sure that you have [set up SSH](/t/vm-host-networking/1526#heading--set-up-ssh) (if needed) before you follow any procedures in this section. 
[/note]

* [How do I configure networking for VM hosts?](/t/vm-host-networking/1526)
* [How do I set up SSH when manually adding a VM host?](/t/vm-host-networking/1526#heading--set-up-ssh)
* [How do I add a VM host with the web UI?](/t/adding-a-vm-host/1549#heading--adding-a-vm-host)
* [How do I add a VM host with the API/CLI?](/t/adding-a-vm-host/1549#heading--adding-a-vm-host-cli)
* [How do I configure a VM host after I've added it?](/t/adding-a-vm-host/1549#heading--configuration)
* [How do I overcommit resources on a VM host?](/t/adding-a-vm-host/1549#heading--overcommit-resources)
* [How do I add a VM host using MAAS versions below 2.5?](https://old-docs.maas.io/2.5/en/manage-kvm-add-host)


<h2 id="heading--adding-a-vm-host">Adding a VM host</h2>

After installing MAAS, the 'KVM' page is typically empty:

<a href="https://discourse.maas.io/uploads/default/original/1X/fa0cc573f34cb23ca0ac026e97ef5b618ff1fed3.jpeg" target = "_blank"><img src="https://discourse.maas.io/uploads/default/original/1X/fa0cc573f34cb23ca0ac026e97ef5b618ff1fed3.jpeg"></a> 

If you want to add a [libvirt](https://ubuntu.com/server/docs/virtualization-libvirt) or LXD VM host to a machine which is already installed, you can do so with the 'Add KVM' button:

<a href="https://discourse.maas.io/uploads/default/original/1X/197ae57b89b32546cf054fff49452f9025354af8.jpeg" target = "_blank"><img src="https://discourse.maas.io/uploads/default/original/1X/197ae57b89b32546cf054fff49452f9025354af8.jpeg"></a> 

Here, 'Virsh address' typically looks like the following for libvirt:

    qemu+ssh://<vm host IP>/system

of like this for LXD (Beta):

    https://10.0.0.100:8443

[note]
MAAS will automatically discover and store the resources your VM host contains. Any existing machines will also appear on the 'Machines' page, and MAAS will automatically attempt to commission them.
[/note]

<h3 id="heading--adding-a-vm-host-cli">CLI</h3>

If you wish to install and configure a VM host from the command line using libvirt, use the following procedure.  Once MAAS has enlisted, commissioned, and acquired a machine, you can deploy it as a VM host:

    maas $PROFILE machine deploy <system_id> install_kvm=True

<h2 id="heading--configuration">Configuration</h2>

VM hosts have several configuration options. Modify these by selecting the 'Configuration' tab and clicking 'Edit'. Options include a VM host's location, password, network zone, and default resource pool.

<a href="https://discourse.maas.io/uploads/default/original/1X/e6f9b3effcc9e4f44a09836cf6185449410bae7f.png" target = "_blank"><img src="https://discourse.maas.io/uploads/default/original/1X/e6f9b3effcc9e4f44a09836cf6185449410bae7f.png"></a>

<h3 id="heading--overcommit-resources">Overcommit resources</h3>

Overcommitted resources are those allocated beyond what's available in the physical resource. Using sliders on the configuration page, you can limit whether MAAS will attempt to overcommit CPU and memory. The input fields to the right of the sliders accept floating-point values from 0 to 10, with a default value of 1.

The following shows theoretical examples of these ratios and how they affect physical resource allocation:

-   `8 physical CPU cores  * 1 multiplier     = 8 virtual CPU cores`
-   `8 physical CPU cores  * 0.5 multiplier   = 4 virtual CPU cores`
-   `32 physical CPU cores * 10.0 multiplier  = 320 virtual CPU cores`
-   `128GB physical memory  * 5.5 multiplier  = 704G virtual Memory`

<a href="https://discourse.maas.io/uploads/default/original/1X/27a8f21392af3d29a500e33f99e1f79c578cf29c.jpeg" target = "_blank"><img src="https://discourse.maas.io/uploads/default/original/1X/27a8f21392af3d29a500e33f99e1f79c578cf29c.jpeg"></a> 

Overcommitting resources allows a user to compose many MAAS-managed machines without worrying about the physical limitations of the host. For example, on a physical host with four cores and 12 GB of memory, you could compose four libvirt machines, each using two cores and 4 GB of memory.  This arrangement overcommits the available physical resources. Provided you never run all four VMs simultaneously, you would have all the benefits of MAAS-managed VMs without over-taxing your host.