Resource pools allow administrators to logically group resources (machines and VM hosts) into pools. Pools can help you budget machines for a particular set of functions.  For example, if you're using MAAS to manage a hospital data centre, you may want to keep a certain number of machines reserved for provider use, whether that be for the charts, documentation, or orders application.  You can use resource pools to reserve those machines, regardless of which of the three applications you end up loading onto a particular machine at any given time. 

#### Quick questions you may have:

* [How can I add a resource pool?](/t/resource-pools/831#heading--add-a-resource-pool)
* [How can I delete a resource pool?](/t/resource-pools/831#heading--deleting-a-resource-pool)
* [How do I add a node to a resource pool?](/t/resource-pools/831#heading--add-a-node-to-a-resource-pool)
* [How do I remove a node from a resource pool?](/t/resource-pools/831#heading--removing-a-node-from-a-resource-pool)
* [How do I add a VM host to a resource pool?](/t/resource-pools/831#heading--add-a-vm-host-to-a-resource-pool)
* [How do I remove a VM host from a resource pool?](/t/resource-pools/831#heading--removing-a-vm-host-from-a-resource-pool)

Administrators can manage resource pools on the Machines page in the web UI, under the Resource pools tab.   Also note that all MAAS installations have a resource pool named "default." MAAS automatically adds new machines to the default resource pool.

<h2 id="heading--add-a-resource-pool">Add a resource pool</h2>

Use the Add pool button to add a new resource pool.

After giving your new pool a name and description, click the Add pool button:

<!-- vanilla
![add resource pool](images/2f010325-nodes-resource-pools__2.5_add-pool.png)
 vanilla -->

<!-- ui
![add resource pool](images/2f010325-nodes-resource-pools__2.5_add-pool.png)
 ui -->

<!-- cli
### ADD SUITABLE CLI EXAMPLE OR PRINTOUT ###
 cli -->

<h2 id="heading--deleting-a-resource-pool">Deleting a resource pool</h2>

To delete a resource pool, click the trashcan icon next to the pool.

<!-- vanilla
![add resource pool](images/630ed938-nodes-resource-pools__2.5_delete-pool.png)
 vanilla -->

<!-- ui
![add resource pool](images/630ed938-nodes-resource-pools__2.5_delete-pool.png)
 ui -->

<!-- cli
### ADD SUITABLE CLI EXAMPLE OR PRINTOUT ###
 cli -->

[note]
If you delete a resource pool, all machines that belong to that resource pool will return to the default pool.
[/note]

<h2 id="heading--add-a-node-to-a-resource-pool">Add a machine to a resource pool</h2>

To add a machine to a resource pool, on the Machines page, select the machine you want to add to the resource pool. Next, select the Configuration tab. Now select the resource pool and click the Save changes button.

<!-- vanilla
![add resource pool](images/648e7a8e-nodes-resource-pools__2.5_add-machine.png)
 vanilla -->

<!-- ui
![add resource pool](images/648e7a8e-nodes-resource-pools__2.5_add-machine.png)
 ui -->

<!-- cli
### ADD SUITABLE CLI EXAMPLE OR PRINTOUT ###
 cli -->

<h2 id="heading--removing-a-node-from-a-resource-pool">Removing a machine from a resource pool</h2>

To remove a machine from a resource pool, follow the same procedure you would use to add a machine, but select "default" as the new resource pool. This action will return the machine to the default resource pool.

<h2 id="heading--add-a-vm-host-to-a-resource-pool">Add a VM host to a resource pool</h2>

You can add a VM host to a resource pool when you create a new VM host, or you can edit a VM host's configuration:

<!-- vanilla
![add_pod_to_pool](images/84a89952-nodes-resource-pools__2.5_pod_to_pool.png)
 vanilla -->

<!-- ui
![add_pod_to_pool](images/84a89952-nodes-resource-pools__2.5_pod_to_pool.png)
 ui -->

<!-- cli
### ADD SUITABLE CLI EXAMPLE OR PRINTOUT ###
 cli -->

<h2 id="heading--removing-a-vm-host-from-a-resource-pool">Removing a VM host from a resource pool</h2>

To remove a VM host from a resource pool, follow the same procedure you would use to add a VM host to a resource pool, except select "default" as the new resource pool. This action will return the machine to the default resource pool.

<!-- LINKS -->