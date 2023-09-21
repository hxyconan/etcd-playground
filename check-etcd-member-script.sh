
## Check etcd members
export ETCDCTL_API=3
export HOST_1=192.168.33.21
export HOST_2=192.168.33.22
export HOST_3=192.168.33.23
export ENDPOINTS=$HOST_1:2379,$HOST_2:2379,$HOST_3:2379

etcdctl --endpoints=$ENDPOINTS member list

