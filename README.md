Usefull dockerfiles.

* ssh.Dockerfile - creates image with possibility of ssh connections from host.

$ docker build -t sshd -f sshd.Dockerfile .
$ docker run -d -p 5000:22 --name test_sshd sshd
$ ssh -p 5000 root@localhost

Password 1

* cpp.Dockerfile - create image based on ssh.Dockerfile (sshd image). Makes possible to debug C++ programms insde docker.

$ docker build -f cpp.Dockerfile -t cpp_debugging .
$ docker run -d -p 5000:22 -p 1234:1234 --name gdb --security-opt seccomp=unconfined cpp_debugging

Host settings:
- Credentials:
  Host localhost
  Port 5000
  UserName root
  Password 1

- 'target remote' args:
  localhost:1234
