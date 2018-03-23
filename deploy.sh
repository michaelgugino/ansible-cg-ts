#!/bin/bash
set -e
. venv-243/bin/activate
APB3="`which python3` `which ansible-playbook`"
$APB3 --version
WORKDIR=$PWD
cd ~/git/openshift-ansible
#$APB3 -i $WORKDIR/inv-fedora.txt -e @$WORKDIR/extra_vars.yml ~/git/openshift-ansible/playbooks/prerequisites.yml -vvv
#$APB3 -i $WORKDIR/inv-fedora.txt -e @$WORKDIR/extra_vars.yml ~/git/openshift-ansible/playbooks/deploy_cluster.yml -vvv
#export ANSIBLE_STRATEGY=linear2
$APB3 -vvv -i $WORKDIR/inv-fedora.txt -e @$WORKDIR/extra_vars.yml ~/git/openshift-ansible/playbooks/openshift-node/config.yml
#$APB3 -vvv -i $WORKDIR/inv-fedora.txt -e @$WORKDIR/extra_vars.yml ~/git/openshift-ansible/playbooks/openshift-node/scaleup.yml

