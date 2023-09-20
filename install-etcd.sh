
# machine-1

# install etcd
export ETCD_VER=v3.5.9

# choose either URL
export GOOGLE_URL=https://storage.googleapis.com/etcd
export GITHUB_URL=https://github.com/etcd-io/etcd/releases/download
export DOWNLOAD_URL=${GOOGLE_URL}

rm -f /tmp/etcd-${ETCD_VER}-linux-amd64.tar.gz
rm -rf /tmp/etcd-download-test && mkdir -p /tmp/etcd-download-test

curl -L ${DOWNLOAD_URL}/${ETCD_VER}/etcd-${ETCD_VER}-linux-amd64.tar.gz -o /tmp/etcd-${ETCD_VER}-linux-amd64.tar.gz
tar xzvf /tmp/etcd-${ETCD_VER}-linux-amd64.tar.gz -C /tmp/etcd-download-test --strip-components=1
rm -f /tmp/etcd-${ETCD_VER}-linux-amd64.tar.gz

cp /tmp/etcd-download-test/etcd /usr/local/bin/
cp /tmp/etcd-download-test/etcdctl /usr/local/bin/
cp /tmp/etcd-download-test/etcdutl /usr/local/bin/

etcd --version
etcdctl version
etcdutl version

