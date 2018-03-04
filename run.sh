#!/bin/bash

# 配置国内源
cp /etc/apt/sources.list /etc/apt/sources.list.bak
echo "deb http://mirrors.163.com/ubuntu/ xenial main restricted universe multiverse" > /etc/apt/sources.list
echo "deb http://mirrors.163.com/ubuntu/ xenial-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://mirrors.163.com/ubuntu/ xenial-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://mirrors.163.com/ubuntu/ xenial-proposed main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://mirrors.163.com/ubuntu/ xenial-backports main restricted universe multiverse" >> /etc/apt/sources.list

# 安装ssh
apt update && apt install openssh-server -y

# 配置我们的公钥进虚拟机

mkdir /root/.ssh
mkdir /var/run/sshd

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCo+AmiehMwiEwtTc7VRvYs2kmxBbo+0kcmRZMhucRE3akhcmg6NSiQw9cGnWZfvrBpjtTRLW1Yn4q0eEHSUbYZdCnjB05q6Ir7O1WR4xK03D/UKTN63xGr8sEBpcwVYr3UVfv2ecc4SoMD8DxDsJCwW4RA0KVewSEgOgF6i1XMAv7SPNVTirWOnRZSF/YXN2+BtylIcF4hccdHawY40lHsuUQtn7WB7AKogvbMzR6yHSoIe73SXebHVMND5iu4eKezuugKNqPMyisujwZLr3AVJFPM7KhkfHDkXrB4wzVxi7ZAdNuSmV7xzYXDGkAU74323E+RA92oXp4psBtLIzEH houmu@yonhdeMacBook-Pro.local" > /root/.ssh/authorized_keys

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDN6t/NFC7XmmJ01lICTXV3YQ+qwwEkApeprlbiDhmlpYU3GonuuDSQi8mIuWyeUc+/LiyKBrZl3FNQd+jwVvWaA+swDoV8KpMvJfdBAVMfejmGwvBf3CreVff4YNwRQh9lIQy7Buen2tO3kfVIqFemylE3RjvM8NuTFVc+IU4yvQu4RHSWtSO5h5imWgMqPPjR6+3xDE7LEt4V9AEE4tx0i3+1bXiQzS1cIRs7UI6BKMFTPGX6o0SFqg0jbFtv3mlUW8Z81uujP8RIGAmIiM5av7mWnqhldArmag/oyo765D8oyG4RaZGYox90KTRKSvjckSKmfodnTa3qq/3C4ayn yonh@bogon" >> /root/.ssh/authorized_keys


