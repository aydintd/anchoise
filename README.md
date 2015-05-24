# Anchoise , Java Development Environment w/ Puppet Masterless Hiera & Vagrant

Creator : Aydın Doyak <aydintd@gmail.com>

This project provides to you a Java Development Kit 7 (v1.7.0_71) environment runs on Centos 6.6 Final.

All requirements for the project are described below, following those steps will lead you way to get a fresh and nice java development or test environment.

## Requirements

This project uses Virtualbox VM for a provider. So make sure you have VirtualBox installed in your system.

Download and install vagrant.

## Usage

Add this Centos 6.6 box to your system to use it whenever you need.

        $ vagrant box add centos-6x-minimal https://github.com/tommy-muehle/vagrant-box-centos-6.6/releases/download/1.0.0/centos-6.6-x86_64.box

        $ git clone https://github.com/aydintd/anchoise

        $ cd anchoise 

Examine the Vagrantfile, change the default values of your VM's hardware infos or Networking sections to your environment.

To fire up your JDK7 , run this command in anchoise root.

        $ vagrant up

It should download the vagrant box image first, will fire up the image in Virtualbox according to your settings. 
After it'll be provisinoed for Oracle JDK7 development environment with Masterless Puppet and Hiera.

## TO-DO

I'm going to add tomcat7 or another web application servers for Java and make it sure all will be configurable via hieradatas just
before provisioning.

For contact, please feel free to contact via e-mail : <aydintd@gmail.com> or contribute with pull requests.

Enjoy it.