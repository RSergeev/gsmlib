# Debian package build (Debian 12)

## Build dependencies
```bash
sudo apt-get update
sudo apt-get install -y build-essential debhelper devscripts fakeroot chrpath
```

## Build .deb packages
From the gsmlib repo root:
```bash
dpkg-buildpackage -us -uc -b
```

The resulting `.deb` files will appear in the parent directory.

## Install
```bash
sudo dpkg -i ../libgsmme1c2a_1.10-13+deb12-1_*.deb ../libgsmme-dev_1.10-13+deb12-1_*.deb ../gsm-utils_1.10-13+deb12-1_*.deb
sudo ldconfig
```
