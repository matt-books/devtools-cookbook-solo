username = "matt_feenstra"

### gem install bundler

execute 'gem_install_bundler' do
	command "su #{username} -l -c 'gem install bundler'"
end

### install Berkshelf gem
execute 'gem_install_berkshelf' do
	command "su #{username} -l -c 'source ~#{username}/.rvm/scripts/rvm && gem install berkshelf'"
end

### install Test Kitchen gem
execute 'gem_install_testkitchen' do
        command "su #{username} -l -c 'source ~#{username}/.rvm/scripts/rvm && gem install test-kitchen'"
end

### install kitchen-vagrant gem
#execute 'gem_install_kitchenvagrant' do
#        command "su #{username} -l -c 'source ~#{username}/.rvm/scripts/rvm && gem install kitchen-vagrant'"
#end

### install kitchen-inspec gem
#execute 'gem_install_kitcheninspec' do
#        command "su #{username} -l -c 'source ~#{username}/.rvm/scripts/rvm && gem install kitchen-inspec'"
#end

### install kitchen AWS gem
execute 'gem_install_kitchen_ec2' do
        command "su #{username} -l -c 'source ~#{username}/.rvm/scripts/rvm && gem install kitchen-ec2'"
end


execute 'gem_install_chefdk' do
	command "su #{username} -l -c 'source ~#{username}/.rvm/scripts/rvm && gem install chef-dk'"
end
