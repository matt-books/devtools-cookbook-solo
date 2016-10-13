# Setup a swap file, because aws doesn't give you one by default

# 1024 * 1024megs = 1048576 block size
bash 'setup_swap_file' do
	code <<-EOH
rm -rf /swapfile1
dd if=/dev/zero of=/swapfile1 bs=1024 count=1048576
chown root:root /swapfile1
chmod 0600 /swapfile1
mkswap /swapfile1
swapon /swapfile1
EOH
	not_if do ::File.exists?('/swapfile1') end
end


cookbook_file '/etc/fstab' do
	    source 'fstab'
        owner  'root'
        group  'root'
        mode   '0644'
        action :create
end
