[Snap](https://discourse.maas.io/t/maas-installation-from-a-snap/773) is the preferred method of installing MAAS.  Fully-confined snap installs begin with version 2.7.0.  For completeness, this page offers package installation instructions.  There is also a more detailed page about [installing from packages](/t/maas-installation-from-packages/769) that may be useful for installing packages for versions 2.7 and below.

<h2 id="heading--install-from-packages">Install MAAS from packages</h2>

This section covers the obsoleted use of deb/APT packages to install MAAS.  With the advent of MAAS 2.7.0, installation via [snap](/t/install-from-a-snap/773) is the recommended method to acquire MAAS.  You may want to consider an installation within [LXD containers](/t/install-with-lxd/757). These containers allow MAAS nodes to also run as local containers and are ideal for testing and experimenting with MAAS.

You can install a newer stable version via PPAs listed on the [MAAS launchpad](https://launchpad.net/~maas), including:

-   [ppa:maas/2.6](https://launchpad.net/~maas/+archive/ubuntu/2.6)
-   [ppa:maas/2.7](https://launchpad.net/~maas/+archive/ubuntu/2.7)
-   [ppa:maas/2.8](https://launchpad.net/~maas/+archive/ubuntu/2.8)

For example, to add the 2.8 PPA, type:

``` bash
sudo apt-add-repository -yu ppa:maas/2.8
```

There is also a "transitional" PPA:

-   [ppa:maas/snap-transition](https://launchpad.net/~maas/+archive/ubuntu/snap-transition)

This PPA contains the same transitional deb packages that are available in 20.04.  It's designed to help people running deb-based MAAS on 18.04 to migrate to the snap even before upgrading to 20.04.

<h3 id="heading--installation-scenarios">Installation scenarios</h3>

The recommended way to set up an initial MAAS environment is to put everything on one machine:

``` bash
sudo apt install maas
```

Executing this command leads you to a list of dependent packages to be installed, and a summary prompt that lets you choose whether to continue with the install:

![apt-install-maas-y-n|522x499](upload://26gNdi5vdnCMEDqgO9bp2xXz68R.jpeg) 

Choosing "Y" proceeds with a standard <code>apt</code> package install.

<h4>Distributed environment</h4> 

<p>For a more distributed environment, you can place the region controller on one machine:</p>

``` bash
sudo apt install maas-region-controller
```

and the rack controller (see [Rack controller](/t/rack-controller/771) for details) on another:

``` bash
sudo apt install maas-rack-controller
sudo maas-rack register
```

These two steps will lead you through two similar <code>apt</code> install sequences.

<h3 id="heading--creating-a-maas-user">Creating a MAAS user</h3>

<p>Finally, you will need to create a MAAS administrator user to access the web UI:</p>

``` bash
sudo maas createadmin --username=$PROFILE --email=$EMAIL_ADDRESS
```

<p>For example, the process might go like this:</p>

![apt-create-admin-sequence|690x67](upload://72BsWNvix7Wfm45vFLbMIjV6WBX.jpeg) 
<p>The username can be anything. You will also be prompted to supply a password for the user. The command option <code>--password=$PASSWORD</code> can be used to specify one but, depending on your environment, this may pose a security risk.</p>
<div class="p-notification">
<p class="p-notification__response">At this time, MAAS does not make use of the email address. However, it may do so in the future.</p>
</div>

Finally, the <code>createadmin</code> option asks for an SSH key:

![create-admin-ssh-key-prompt|475x26](upload://a9E7n9qKDwZCeuDvLKwyv3imTXE.jpeg) 

<p>If you have an SSH key associated with your launchpad or github accounts, you can enter the username here to include the key.  For launchpad, just enter <code>lp:username</code>, and for github, enter <code>gp:username</code> at the prompt.  In both cases, the actual username has to be supplied after the <code>lp:</code> or <code>gh:</code> prefix. </p>

<p>If you don't have a key associated with either of these services, you will have an opportunity to paste your public key into the MAAS SSH key list, after you've started MAAS for the first time as part of the welcome screens.</p>

Once all this is done, you're ready to access MAAS from the web UI and begin your [Configuration journey](https://maas.io/docs/configuration-journey).

<h3 id="heading--next-steps">Next steps</h3>

Once you have installed your MAAS environment (region + rack controller) and any possible extra rack controllers(s), you are ready to begin your [Configuration journey](https://maas.io/docs/configuration-journey).