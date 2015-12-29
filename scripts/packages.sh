apt-get clean
apt-get update
apt-get upgrade -y
#apt-get install -y linux-virtual-lts-wily linux-image-extra-virtual-lts-wily linux-generic linux-headers-generic linux-headers-server linux-image-generic linux-server
apt-get install -y linux-virtual-lts-wily linux-image-extra-virtual-lts-wily

# Reboot with the new kernel so we can build the proper guest additions
shutdown -r now
sleep 60
