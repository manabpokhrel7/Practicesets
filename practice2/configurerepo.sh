#!/bin/bash
ansible all -m yum_repository -a "name='myrepo' description='enable' baseurl='ftp://172.16.138.174/repo' enabled='yes' gpgcheck='no'"
ansible all -m command -a "dnf clean all"
ansible all -m command -a "yum clean metadata"
ansible all -m dnf -a "disablerepo='all' enablerepo='myrepo'"
