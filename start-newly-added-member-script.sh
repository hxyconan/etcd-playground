## Start the newly added member on a machine
export TOKEN=token-01
export CLUSTER_STATE=existing
export NAME_1=machine-1
export NAME_4=machine-4
export NAME_3=machine-3
export HOST_1=192.168.33.21
export HOST_4=192.168.33.22
export HOST_3=192.168.33.23
export CLUSTER=${NAME_1}=http://${HOST_1}:2380,${NAME_4}=http://${HOST_4}:2380,${NAME_3}=http://${HOST_3}:2380

export THIS_NAME=${NAME_4}
export THIS_IP=${HOST_4}
etcd --data-dir=data.etcd --name ${THIS_NAME} --initial-advertise-peer-urls http://${THIS_IP}:2380 --listen-peer-urls http://${THIS_IP}:2380 --advertise-client-urls http://${THIS_IP}:2379 --listen-client-urls http://${THIS_IP}:2379 --initial-cluster ${CLUSTER} --initial-cluster-state ${CLUSTER_STATE} --initial-cluster-token ${TOKEN}

