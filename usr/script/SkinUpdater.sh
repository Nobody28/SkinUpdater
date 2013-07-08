 #!/bin/sh
echo '############################'
echo '# www.gigablue-support.com #'
echo '#       www.openA.TV       #'
echo '#         @Nobody28        #'
echo '############################'
echo $LINE 
echo 'Updating only installed Skins'
echo 'Please Wait'
echo $LINE
cd /tmp
opkg update > /dev/null
opkg list-upgradable | grep plugin-skins > /tmp/liste.log
sed 's/enigma2-plugin-skins/opkg install enigma2-plugin-skins/g' /tmp/liste.log > /tmp/skins.log
chmod 755 /tmp/skins.log
./skins.log > /dev/null
echo $LINE 
if grep -qs 'enigma2-plugin-skins' cat skins.log ; then
	echo 'Updated Skins:'
else	
    echo "No Updates found!"
fi
cat liste.log
echo $LINE
rm /tmp/skins.log
rm /tmp/liste.log
echo 'Skin Update Complete'
echo $LINE
echo 'Check the LOG with UP Button!'
echo $LINE
echo 'Thank you for using Skin-Updater Plugin  by @Nobody28'
echo $LINE
#created by Nobody28
# www.gigablue-support.com (openMips)
# www.opena.tv
exit 0