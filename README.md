rpi_packages
============

A couple packages I use on my raspberry pi put into a nice repo

### Install Emacs
```
# dependencies (probably only need libtiff5)
sudo apt-get install texinfo libncurses5-dev xorg-dev libpng12-dev libjpeg8-dev libgif-dev libtiff5 libtiff5-dev
sudo dpkg -i emacs_24.4-1_armhf.deb
sudo mkdir /usr/local/share/emacs/24.4/etc/charsets
sudo cp ./charsets/* /usr/local/share/emacs/24.4/etc/charsets/
```

### Install node.js
```
sudo dpkg -i node_latest_armhf.deb
```

### Install CouchDB
```
# Dependencies
sudo apt-get install erlang-nox erlang-dev
# Create couchDB account
sudo useradd -d /var/lib/couchdb couchdb
sudo mkdir -p /usr/local/{lib,etc}/couchdb /usr/local/var/{lib,log,run}/couchdb /var/lib/couchdb
sudo chown -R couchdb:couchdb /usr/local/{lib,etc}/couchdb /usr/local/var/{lib,log,run}/couchdb
sudo chmod -R g+rw /usr/local/{lib,etc}/couchdb /usr/local/var/{lib,log,run}/couchdb
# Install the package
sudo dpkg -i --force-overwrite apache-couchdb_1.6.1-1_armhf.deb
# Copy the default into local
sudo cp /usr/local/etc/couchdb/default.ini /usr/local/etc/couchdb/local.ini
# Now you can run with sudo couchdb
```
