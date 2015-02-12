#！ /bin/bash
apt-get update
apt-get dist-upgrade
apt-get install build-essential git
wget "http://nginx.org/download/nginx-1.7.9.tar.gz"
wget "ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.36.tar.gz"
wget "https://www.openssl.org/source/openssl-1.0.1j.tar.gz"
wget "http://zlib.net/zlib-1.2.8.tar.gz"
git clone https://github.com/cuber/ngx_http_google_filter_module
git clone https://github.com/yaoweibin/ngx_http_substitutions_filter_module
tar xzvf nginx-1.7.8.tar.gz
tar xzvf nginx-1.7.9.tar.gz
tar xzvf pcre-8.36.tar.gz
tar xzvf openssl-1.0.1j.tar.gz
tar xzvf zlib-1.2.8.tar.gz
cd nginx-1.7.9
./configure \
  --prefix=/opt/nginx-1.7.9 \
  --with-pcre=../pcre-8.36 \
  --with-openssl=../openssl-1.0.1j \
  --with-zlib=../zlib-1.2.8 \
  --add-module=../ngx_http_google_filter_module\
  --add-module=../ngx_http_substitutions_filter_module

make
make install
