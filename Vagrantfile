Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/trusty64'
  config.vm.network :forwarded_port, host: 3000, guest: 3000

  config.vm.provision 'shell', path: 'bootstrap.sh'
  config.vm.provision 'file', source: '.gitconfig', destination: '.gitconfig'
end
