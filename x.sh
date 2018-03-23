#!/bin/bash

su fedora -c "ansible --version"
su fedora -c ./deploy.sh
#su fedora -c whoami
