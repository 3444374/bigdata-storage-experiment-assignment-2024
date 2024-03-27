docker run -d --name ceph-mon --network ceph-network --ip 172.20.0.10 -e CLUSTER=ceph -e WEIGHT=1.0 -e MON_IP=172.20.0.10 -e MON_NAME=ceph-mon -e CEPH_PUBLIC_NETWORK=172.20.0.0/16 -v /etc/ceph:/etc/ceph -v /var/lib/ceph/:/var/lib/ceph/ -v /var/log/ceph/:/var/log/ceph/ ceph/daemon:latest-luminous mon