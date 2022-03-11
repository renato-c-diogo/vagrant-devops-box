Vagrant.configure("2") do |config|
  # Make sure to have installed vagrant-env plugin
  config.env.enable
  config.vm.box = ENV['OS_VERSION']
  config.vm.hostname = ENV['HOSTNAME']
  config.vm.network "public_network"
  #mount project
  #config.vm.synced_folder ENV['XXX'], "/home/vagrant/workspace"
  #mount ssh keys and .gitconfig into /tmp directory and through permission script move them later
  config.vm.synced_folder "~/.ssh/", "/tmp/.ssh/", create:true
  config.vm.synced_folder "~/.aws/", "/tmp/.aws/", create:true
  config.vm.provision "file", source: "~/.gitconfig", destination: "/tmp/"
  config.vm.provision "file", source: ".env",         destination: "/tmp/"
  config.vm.provision "shell", path: "scripts/bootstrap.sh"
  config.vm.provision "shell", path: "scripts/permission.sh"
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.name = ENV['VM_NAME']
    vb.memory = ENV['MEMORY']
  end
end