# etcd cluster
This repo including vagrant machine and relevant etcd scripts to establish a 3-nodes etcd cluster

## How to init etcd cluster
- provision vm via `vagrant up`
- `vagrant ssh machine-1` and running `## machine-1` section codes in `init-etcd-script.sh` script file
- same action to login `machine-2` and `machine-3` and run scripts

## How to check etcd member
- `vagrant ssh machine-1` or any other vm
- run the `## Check etcd members` codes in `check-etcd-member-script.sh` script file

## How to remove etcd member
- `vagrant ssh machine-1` or any other vm
- run the `## Remove etcd members` codes in `remove-etcd-member-script.sh` script file

## How to replace a failed etcd member
It is recommended to use a unique name for each member to avoid human errors. For example, consider a three-member etcd cluster. Let the URLs be, member1=http://10.0.0.1, member2=http://10.0.0.2, and member3=http://10.0.0.3. When member1 fails, replace it with member4=http://10.0.0.4. Here, the IP can be no change. Ref: https://kubernetes.io/docs/tasks/administer-cluster/configure-upgrade-etcd/. The steps:
- Stop the etcd server on the broken node, rebuild the vm
- Remove the failed member from member list
- Add the new member to member list as:
```
etcdctl --endpoints=$ENDPOINTS member add member4 --peer-urls=http://192.168.33.22:2380
```
- Start the newly added member on a machine with the IP 10.0.0.4 via run the codes in `start-newly-added-member-script.sh`


## References
- https://etcd.io/docs/v3.6/tutorials/how-to-deal-with-membership/
- https://etcd.io/docs/v3.6/tutorials/how-to-deal-with-membership/
- https://developer.hashicorp.com/vagrant/docs/provisioning/shell
- https://github.com/etcd-io/etcd/releases/tag/v3.5.9
- https://etcd.io/docs/v3.5/tutorials/how-to-setup-cluster/
- https://kubernetes.io/docs/tasks/administer-cluster/configure-upgrade-etcd/

