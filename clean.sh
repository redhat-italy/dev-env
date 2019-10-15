unset HISTFILE
/sbin/service rsyslog stop
/sbin/service auditd stop
package-cleanup --oldkernels --count=1 -y
yum clean all
subscription-manager remove --all
subscription-manager clean
touch /etc/ssh/testkeytest
sed -i '/^(HWADDR|UUID)=/d' /etc/sysconfig/network-scripts/ifcfg-e*
rm -fr /etc/udev/rules.d/70*
rm -fr /etc/ssh/*key*
rm -fr ~root/.bash_history
rm -fr ~root/.ssh/
rm -fr ~root/anaconda-ks.cfg
rm -fr ~sviluppo/.mozilla
find /var/log -type f -exec rm -fr {} \;
