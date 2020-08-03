[note type="negative" status="Deprecated page/older procedure"]
This page has been deprecated, because it lists an older procedure for creating and deleting VMs that my not work with later versions, and may not be necessary with older versions.  Please use the procedures here with discretion.  You may want to try the [up-to-date procedure](/t/creating-and-deleting-vms/806) if the instructions here do not work for your older version of MAAS.
[/note]

While on a pod's details view, select 'Compose' from the 'Take action' drop-down menu to compose a machine.

<!-- vanilla
![pod compose machine](https://assets.ubuntu.com/v1/62316284-manage-kvm-pods__2.5_pod-compose-machine.png)
 vanilla -->

<!-- ui
![pod compose machine](https://assets.ubuntu.com/v1/62316284-manage-kvm-pods__2.5_pod-compose-machine.png)
 ui -->

<!-- cli
### ADD SUITABLE CLI EXAMPLE OR PRINTOUT ###
 cli -->

You can choose which storage to use from a drop-down list.

Click the 'Compose machine' button when you're finished. MAAS will present the pod detail view. In a few moments, your new machine will be auto-commissioned. The 'Machines' page will reflect this as well.

MAAS will deduct the new machine's resources from the pod's resources:

<!-- vanilla
![pod compose machine commissioning](https://assets.ubuntu.com/v1/0047fe3d-manage-kvm-pods__2.5_pod-compose-machine-commissioning.png)
 vanilla -->

<!-- ui
![pod compose machine commissioning](https://assets.ubuntu.com/v1/0047fe3d-manage-kvm-pods__2.5_pod-compose-machine-commissioning.png)
 ui -->

<!-- cli
### ADD SUITABLE CLI EXAMPLE OR PRINTOUT ###
 cli -->

<h2 id="heading--cli">CLI</h2>

Creating RSD machines in MAAS using the CLI is identical to creating KVM virtual machines. Please see [Creating and deleting machines](/t/creating-and-deleting-new-vms/806#heading--cli) for more information.

# Delete a machine

To delete a machine, delete it, select the desired machine from the list of machines and select 'Delete' from the 'Take Action' menu.

<!-- vanilla
![pod decompose machine](https://assets.ubuntu.com/v1/613c1d7b-manage-kvm-pods__2.5_pod-decompose-machine.png)
 vanilla -->

<!-- ui
![pod decompose machine](https://assets.ubuntu.com/v1/613c1d7b-manage-kvm-pods__2.5_pod-decompose-machine.png)
 ui -->

<!-- cli
### ADD SUITABLE CLI EXAMPLE OR PRINTOUT ###
 cli -->

<!-- LINKS -->