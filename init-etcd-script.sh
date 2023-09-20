## machine-1
export TOKEN=token-01
export CLUSTER_STATE=new
export NAME_1=machine-1
export NAME_2=machine-2
export NAME_3=machine-3
export HOST_1=192.168.33.21
export HOST_2=192.168.33.22
export HOST_3=192.168.33.23
export CLUSTER=${NAME_1}=http://${HOST_1}:2380,${NAME_2}=http://${HOST_2}:2380,${NAME_3}=http://${HOST_3}:2380

export THIS_NAME=${NAME_1}
export THIS_IP=${HOST_1}
etcd --data-dir=data.etcd --name ${THIS_NAME} --initial-advertise-peer-urls http://${THIS_IP}:2380 --listen-peer-urls http://${THIS_IP}:2380 --advertise-client-urls http://${THIS_IP}:2379 --listen-client-urls http://${THIS_IP}:2379 --initial-cluster ${CLUSTER} --initial-cluster-state ${CLUSTER_STATE} --initial-cluster-token ${TOKEN}


## machine-2
export TOKEN=token-01
export CLUSTER_STATE=new
export NAME_1=machine-1
export NAME_2=machine-2
export NAME_3=machine-3
export HOST_1=192.168.33.21
export HOST_2=192.168.33.22
export HOST_3=192.168.33.23
export CLUSTER=${NAME_1}=http://${HOST_1}:2380,${NAME_2}=http://${HOST_2}:2380,${NAME_3}=http://${HOST_3}:2380

export THIS_NAME=${NAME_2}
export THIS_IP=${HOST_2}
etcd --data-dir=data.etcd --name ${THIS_NAME} --initial-advertise-peer-urls http://${THIS_IP}:2380 --listen-peer-urls http://${THIS_IP}:2380 --advertise-client-urls http://${THIS_IP}:2379 --listen-client-urls http://${THIS_IP}:2379 --initial-cluster ${CLUSTER} --initial-cluster-state ${CLUSTER_STATE} --initial-cluster-token ${TOKEN}


## machine-3
export TOKEN=token-01
export CLUSTER_STATE=new
export NAME_1=machine-1
export NAME_2=machine-2
export NAME_3=machine-3
export HOST_1=192.168.33.21
export HOST_2=192.168.33.22
export HOST_3=192.168.33.23
export CLUSTER=${NAME_1}=http://${HOST_1}:2380,${NAME_2}=http://${HOST_2}:2380,${NAME_3}=http://${HOST_3}:2380

export THIS_NAME=${NAME_3}
export THIS_IP=${HOST_3}
etcd --data-dir=data.etcd --name ${THIS_NAME} --initial-advertise-peer-urls http://${THIS_IP}:2380 --listen-peer-urls http://${THIS_IP}:2380 --advertise-client-urls http://${THIS_IP}:2379 --listen-client-urls http://${THIS_IP}:2379 --initial-cluster ${CLUSTER} --initial-cluster-state ${CLUSTER_STATE} --initial-cluster-token ${TOKEN}

