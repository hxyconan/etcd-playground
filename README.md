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


## References
- https://etcd.io/docs/v3.6/tutorials/how-to-deal-with-membership/
- https://etcd.io/docs/v3.6/tutorials/how-to-deal-with-membership/
- https://developer.hashicorp.com/vagrant/docs/provisioning/shell
- https://github.com/etcd-io/etcd/releases/tag/v3.5.9
- https://etcd.io/docs/v3.5/tutorials/how-to-setup-cluster/
