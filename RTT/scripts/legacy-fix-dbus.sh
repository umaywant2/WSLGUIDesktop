#!/bin/bash
echo "Implementing udev workaround (https://github.com/Microsoft/WSL/issues/143#issuecomment-209072634)" >&2
sudo tee /usr/sbin/policy-rc.d > /dev/null <<EOF
#!/bin/sh
exit 101
EOF
sudo chmod +x /usr/sbin/policy-rc.d
sudo dpkg-divert --local --rename --add /sbin/initctl
sudo ln -fs /bin/true /sbin/initctl

