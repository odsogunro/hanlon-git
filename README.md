# hanlon-git

- Git on the Server
	+ https://goo.gl/qBW9uU 

```
```

```
$ mount | grep nfs
$ mount -l -t nfs4

155.246.103.74:/backup/Git on /mnt/Git type nfs4 (rw,relatime,vers=4.0,rsize=1048576,wsize=1048576,namlen=255,hard,proto=tcp,port=0,timeo=600,retrans=2,sec=sys,clientaddr=155.246.104.25,local_lock=none,addr=155.246.103.74)

$ df -h

Filesystem                   Size  Used Avail Use% Mounted on
udev                         477M     0  477M   0% /dev
tmpfs                        100M  4.7M   95M   5% /run
/dev/mapper/ubuntu--vg-root   97G  1.9G   91G   2% /
tmpfs                        497M     0  497M   0% /dev/shm
tmpfs                        5.0M     0  5.0M   0% /run/lock
tmpfs                        497M     0  497M   0% /sys/fs/cgroup
/dev/sda1                    472M  105M  343M  24% /boot
155.246.103.74:/backup/Git    81T  4.9T   76T   6% /mnt/Git
tmpfs                        100M     0  100M   0% /run/user/1000
tmpfs                        100M     0  100M   0% /run/user/2108

```

- SSH
	+ ...

```
$ ls -al ~/.ssh-copy-id

$ ssh-copy-id username@remotehost
```


- Gitolite
	+ ...

```
root@lionking:~$ sudo apt install gitolite3

root@lionking:~$ sudo adduser --system --shell /bin/bash --group --disabled-password --home /home/git git

root@lionking:~$ cp ~/.ssh/id_rsa.pub /tmp/$(whoami).pub

root@lionking:~$ sudo su - git

git@lionking:~$ gitolite setup -pk /tmp/odkazeem.pub

Initialized empty Git repository in /home/git/repositories/gitolite-admin.git/
Initialized empty Git repository in /home/git/repositories/testing.git/
WARNING: /home/git/.ssh missing; creating a new one
    (this is normal on a brand new install)
WARNING: /home/git/.ssh/authorized_keys missing; creating a new one
    (this is normal on a brand new install)

git@lionking:~$ exit

localhost:~$ git clone git@lionking:gitolite-admin.git
localhost:~$ git clone git@74.90.243.128:gitolite-admin.git

localhost:~$ cd gitolite-admin

```