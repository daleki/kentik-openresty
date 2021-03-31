set -xeuo pipefail
#https://openresty.org/en/installation.html
VERSION=1.19.3.1
apt-get update && apt-get install -y dos2unix mercurial libpcre3 libpcre3-dev libssl-dev perl make build-essential curl zlib1g zlib1g-dev
curl https://openresty.org/download/openresty-$VERSION.tar.gz -o openresty-$VERSION.tar.gz
tar -xvf openresty-$VERSION.tar.gz
cd openresty-$VERSION/
./configure -j2 --without-http_rewrite_module
make -j2
sudo make install
