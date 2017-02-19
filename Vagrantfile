# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # This is a learning box. It's for playing around with. In production,
  # never use a VM from a source you don't trust and can't verify.

  # This particular box is Fedora Workstation, which contains a GUI.
  # In production, you probably want the cloud edition of Fedora
  # (or your Linux distribution of choice).
  config.vm.box = "jhcook/fedora25"
  config.vm.provision :shell, path: "install.sh"
end
