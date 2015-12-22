# ec2docker
Scripts and support files for running docker containers on EC2 instances

| script   | description                                            |
| ------   | -------------------                                    |
| dinit    | init script for new EC2 instance                       |
| dps      | personalized "docker ps" command                       |
| drmi     | remove dangling docker images                          |
| dstop    | stop and remove a docker container                     |
| dtunnel  | print scp command to create tunnels for each container |
| ec2login | first login to new EC2 instance                        |
|          |                                                        |

## First time EC2 instance setup

When you have just started an EC2 instance, especially when you want
to be running docker containers, there are a bunch of steps you must
do. These scripts make it more convenient. The sequence is:

The process starts by executing the ```ec2login``` script. This does
the following:

1. resets the .ssh/known_hosts entry for instance at $ELASTIC_IP
2. copies the ```dinit``` script to the instance
3. remote executes ```dinit```

The ```dinit`` script does most of the work on the EC2 instance. It:
1. yum update
2. yum install docker git
3. start docker
4. pulls gardnerpomper/ec2docker repo
5. add ec2-user to the docker group
6. pulls and starts gardnerpomper/minimal-xfce-xvnc
7. displays the ssh command to tunnel to the containers on the instance (```dtunnel```)

* <2015-12-16 Wed>
mostly just working on emacs today, watching videos and stuff
**  [[https://www.youtube.com/watch?v=1-dUkyn_fZA][Emacs + org-mode + python for reproducible research]]
This is a classic presentation from SciPy2013

It shows inline equations, figures, running code, etc

** [[https://www.youtube.com/watch?v=6BlTGPsjGJk][Emacs as a Python IDE]]
This shows autocompletion, module lookup, docstrings, etc, along with how to actually set it all up

** [[https://www.youtube.com/watch?v=dljNabciEGg][Literate DevOps with Emacs]]
This shows some interesting stuff, like:
  + tramp through multiple machines with /ssh:mach1|ssh:mach2|mach3:filename
  + sudo through tramp with /sudo:mach1:filename
  + session in org-mode to run repeated commands on remote machine

This is by Howard Abrams, and he wrote demo-it to show stuff off.

yasnippet - auto inserting text (?)

** Emacs keys
I finally figured out a few more useful keys:

| Key     | function                  |
|---------+---------------------------|
| C-x C-- | make font smaller         |
| C-x C-= | make font larger          |
| M-s h r | highlight-regexp          |
| M-s h u | unhighlight-regexp        |
| M-s h . | highlight-symbol-at-point |
|         |                           |
