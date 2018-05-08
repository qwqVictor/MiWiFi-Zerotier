#!/bin/sh
echo "ZeroTier One for Miwifi"
echo "Code with Love by Victor Huang <https://imvictor.tech/>"
echo "Installing..."
cp -a files/var/* /var/
cp -a files/userdisk/* /userdisk/
printf "Your network ID? Input: "
read netid
echo > /userdisk/ZeroTier/run.sh
echo "export LD_LIBRARY_PATH=/userdisk/ZeroTier/usr/lib:\$LD_LIBRARY_PATH" >> /userdisk/ZeroTier/run.sh
echo "/userdisk/ZeroTier/usr/bin/zerotier-one -d" >> /userdisk/ZeroTier/run.sh
echo "/userdisk/ZeroTier/usr/bin/zerotier-cli join $netid" >> /userdisk/ZeroTier/run.sh
chmod a+x /userdisk/ZeroTier/run.sh
echo > /tmp/tmp_zerotier.sh
echo "sh /userdisk/ZeroTier/run.sh" >> /tmp/tmp_zerotier.sh
echo >> /tmp/tmp_zerotier.sh
mv /etc/rc.local /etc/rc.local.zerotier_backup
cat /tmp/tmp_zerotier.sh /etc/rc.local.zerotier_backup > /etc/rc.local
/userdisk/ZeroTier/usr/bin/zerotier-one -d
/userdisk/ZeroTier/usr/bin/zerotier-cli -join $netid
echo "Installation successfully finished."
