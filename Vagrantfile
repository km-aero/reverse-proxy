Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"
  config.vm.network "private_network", ip: "192.168.10.100"
  config.hostsupdater.aliases = ["development.local"]

# syncing files/folders
# 'folder on HOST', 'folder in VM'
  config.vm.synced_folder 'app', '/app_folder'
  config.vm.synced_folder 'sites-available', '/etc/nginx/sites-available'

  # run bash file - provisioning instructions
  config.vm.provision 'shell', path: 'environment/provision.sh'
end
