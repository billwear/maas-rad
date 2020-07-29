MAAS is **Metal As A Service**, a service that lets you treat physical servers like virtual machines -- instances -- in the cloud.  No need to manage servers individually: MAAS turns your bare metal into an elastic, cloud-like resource.
<!-- cli
You can do everything through the MAAS CLI.  No need for a GUI, a browser, or dense Web forms.  We can also link you to a neat python toolset which will give you some command-line shortcuts.
 cli -->
 
#### Quick questions you might have:

* [What is MAAS -- and what does it really do for me?](/t/about-maas/840)
* [Can you show me an example datacentre using MAAS?](/t/give-me-an-example-of-maas/1314)
* [How does MAAS work, in detail?](/t/about-maas/840#heading--how-maas-works)
* [What concepts might I need to understand before starting?](/t/concepts-and-terms/785)
* [Can I just install it and try it for myself?](/t/explore-maas/787)

<!-- cli
```
+-------------------+---------+-----------+------------+-------------+--------------+-------------------+
| Hostname          | Power   | Status    | Owner      | Zone        | Fabric       | Subnet            |
| System ID         | Type    | Vendor    | Pool       | Spaces      | VLAN         | MAC Address       |
+===================+=========+===========+============+=============+==============+===================+
| 52-54-00-15-36-f2 | off     | Allocated | admin      | Medications | Patient-Care | 192.168.123.0/24  |
| kbrpyq            | virsh   | QEMU      | MedRec     |             | untagged     | 52:54:00:15:36:f2 |
+-------------------+---------+-----------+------------+-------------+--------------+-------------------+
| 52-54-00-17-64-c8 | off     | Deployed  | admin      | Medications | Patient-Care | 192.168.123.0/24  |
| n4cgrm            | virsh   | QEMU      | Prescriber |             | untagged     | 52:54:00:17:64:c8 |
+-------------------+---------+-----------+------------+-------------+--------------+-------------------+
| 52-54-00-1d-47-95 | off     | Allocated | admin      | Payroll     | Patient-Care | 192.168.123.0/24  |
| b73rrn            | virsh   | QEMU      | StaffComp  |             | untagged     | 52:54:00:1d:47:95 |
+-------------------+---------+-----------+------------+-------------+--------------+-------------------+
| 52-54-00-1e-06-41 | off     | Deployed  | admin      | Medications | Patient-Care | 192.168.123.0/24  |
| ysf7g8            | virsh   | QEMU      | NurServ    |             | untagged     | 52:54:00:1e:06:41 |
+-------------------+---------+-----------+------------+-------------+--------------+-------------------+
| 52-54-00-1e-a5-7e | off     | Ready     | None       | ProServ     | Patient-Care | 192.168.123.0/24  |
| cnky7e            | virsh   | QEMU      | PhysDoc    |             | untagged     | 52:54:00:1e:a5:7e |
+-------------------+---------+-----------+------------+-------------+--------------+-------------------+
| 52-54-00-2e-c4-40 | off     | Ready     | None       | Inventory   | Patient-Care | 192.168.123.0/24  |
| 7ca7qs            | virsh   | QEMU      | SuppServ   |             | untagged     | 52:54:00:2e:c4:40 |
+-------------------+---------+-----------+------------+-------------+--------------+-------------------+
| 52-54-00-4e-60-b2 | off     | Ready     | None       | Medications | Patient-Care | 192.168.123.0/24  |
| tgckyb            | virsh   | QEMU      | MedRec     |             | untagged     | 52:54:00:4e:60:b2 |
+-------------------+---------+-----------+------------+-------------+--------------+-------------------+
| 52-54-00-52-93-10 | off     | Ready     | None       | BizOffice   | Patient-Care | 192.168.123.0/24  |
| c3337x            | virsh   | QEMU      | BusOfc     |             | untagged     | 52:54:00:52:93:10 |
+-------------------+---------+-----------+------------+-------------+--------------+-------------------+
| 52-54-00-5d-b5-a1 | off     | Ready     | None       | Payroll     | Patient-Care | 192.168.123.0/24  |
| epth6x            | virsh   | QEMU      | StaffComp  |             | untagged     | 52:54:00:5d:b5:a1 |
+-------------------+---------+-----------+------------+-------------+--------------+-------------------+
```
cli -->
![splash-screen|690x406](https://discourse.maas.io/uploads/default/optimized/1X/18456dbd3fbfec14eddd044816fd0719692282da_2_690x406.jpeg) 
<!-- vanilla
![splash-screen|690x406](https://discourse.maas.io/uploads/default/optimized/1X/18456dbd3fbfec14eddd044816fd0719692282da_2_690x406.jpeg) 
 vanilla -->
 
*Part of the machine list from [Metaphorical General Hospital](/t/give-me-an-example-of-maas/1314), our example datacentre.*
<!-- cli
 *Generated with [lsmm](https://github.com/billwear/maas-cli-tools).*
 cli -->
---

<h2 id="heading--whats-new">New version of MAAS</h2>

- [What's new in 2.8 ›](https://discourse.maas.io/t/whats-new-in-maas-2-8/1655)

---

<h2 id="heading--getting-support">Getting support</h2>

- [Professional support](https://maas.io/contact-us)
- [Ask a question](http://askubuntu.com/questions/tagged/maas)
- [IRC](http://webchat.freenode.net/?channels=maas)
- [MAAS 2.5 (and earlier) documentation](https://old-docs.maas.io/2.5/en/)

---

<h2 id="heading--contribute">Contribute</h2>

- [Guide to contributing](/t/writing-guide/747)
- [Push some code](https://launchpad.net/maas)
- [File an issue](https://bugs.launchpad.net/maas/+filebug)

