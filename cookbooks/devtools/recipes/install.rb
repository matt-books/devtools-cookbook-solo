
cookbook_file '/usr/bin/findwgrep' do
	source 'findwgrep'
	owner 'root'
	group 'root'
	mode '0755'
end
