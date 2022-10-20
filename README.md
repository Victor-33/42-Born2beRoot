# 42 Cursus - Born to be Root

<img src="https://game.42sp.org.br/static/assets/achievements/born2berootm.png">

## Sumary
1. [Installation](#installation)
2. [*sudo*](#sudo)
    - [Step 1: Installing *sudo*](#step-1-installing-sudo)
    - [Step 2: Adding User to *sudo* Group](#step-2-adding-user-to-sudo-group)
    - [Step 3: Running *root*-Privileged Commands](#step-3-running-root-privileged-commands)
    - [Step 4: Configuring *sudo*](#step-4-configuring-sudo)
3. [SSH](#ssh)
    - [Step 1: Installing & Configuring SSH](#step-1-installing--configuring-ssh)
    - [Step 2: Installing & Configuring UFW](#step-2-installing--configuring-ufw)
    - [Step 3: Connecting to Server via SSH](#step-3-connecting-to-server-via-ssh)
4. [User Management](#user-management)
    - [Step 1: Setting Up a Strong Password Policy](#step-1-setting-up-a-strong-password-policy)
       - [Password Age](#password-age)
       - [Password Strength](#password-strength)
    - [Step 2: Creating a New User](#step-2-creating-a-new-user)
    - [Step 3: Creating a New Group](#step-3-creating-a-new-group)
5. [*cron*](#cron)
    - [Setting Up a *cron* Job](#setting-up-a-cron-job)

## Installation
To install Debian version 11, I followed the tutorial by [Youssef Oussama](https://github.com/ucefooo/born2beroot), a student at 42 École [here](https://www.youtube.com/watch?v=OQEdjt38ZJA).

[Debian 11 Download](https://www.debian.org/download)

Let's go setp by step :)

1 We will choose the version without a graphical interface ```Install``` since the subject indicates that none should be used. Every time we want to confirm something we will press ```Enter``` and to move through the options we will use the arrows.

<img width="632" alt="Captura de pantalla 2022-07-13 a las 18 58 48" src="https://user-images.githubusercontent.com/66915274/178789643-e987c6d0-5b6f-4b98-ad4a-5c092a352183.png">

2 We will choose the language that we will use for the installation and the default ```English```.

<img width="794" alt="Captura de pantalla 2022-07-13 a las 19 00 41" src="https://user-images.githubusercontent.com/66915274/178789949-4fe83ac8-23b8-4f82-a034-a6d5e81d4f17.png">

3 We introduce our Country, territory or area. In my case I will put ```other```.

<img width="791" alt="Captura de pantalla 2022-07-13 a las 19 07 50" src="https://user-images.githubusercontent.com/66915274/178791067-44230a4c-e647-46cb-9d6f-bc441bf0227b.png">

4 As I have selected other, I must indicate my continent or region. In my case I will choose ```South America```. 

<img width="797" alt="Captura de pantalla 2022-07-13 a las 19 09 58" src="https://user-images.githubusercontent.com/93587419/196958208-b3f248dd-6562-4c2b-9918-fc6a1b3b3483.png">


5 We select the country. For me ```Brazil```.

<img width="793" alt="Captura de pantalla 2022-07-13 a las 19 12 01" src="https://user-images.githubusercontent.com/66915274/178791824-7a34813c-eae9-4b5c-9873-cea158229e07.png">

6 Select ```United States```.

<img width="792" alt="Captura de pantalla 2022-07-13 a las 19 13 43" src="https://user-images.githubusercontent.com/66915274/178792054-4e72dfdd-8175-48f9-a06d-f2696fa752e3.png">

7 It is important to select ```American English``` as the keyboard configuration, otherwise we will have the wrong keys linked.

<img width="793" alt="Captura de pantalla 2022-07-13 a las 19 02 21" src="https://user-images.githubusercontent.com/66915274/178790230-d2571d4f-a546-4b43-bd44-c6a591d92d72.png">

8 In this step we must choose the ```Host Name``` of the machine, which must be your login.

<img width="792" alt="Captura de pantalla 2022-07-13 a las 19 17 23" src="https://user-images.githubusercontent.com/93587419/196958925-0372b8f1-a7ee-4435-9789-51da95b2dba4.png">


9 We will leave this section empty since the subject does not mention anything of ```Domain name```.

<img width="792" alt="Captura de pantalla 2022-07-13 a las 19 20 29" src="https://user-images.githubusercontent.com/66915274/178793113-b0934aac-fac4-4844-8412-aca124038fd0.png">

10 We must enter a password for the system administration account. It is important to write it down or take a photo since we will use it. If you want to see the password to make sure that you have written it correctly, you must tab until you reach the ```Show Password in Clear``` option, you must press the space bar and the password will be displayed.

<img width="794" alt="Captura de pantalla 2022-07-13 a las 19 21 29" src="https://user-images.githubusercontent.com/93587419/196959268-c377f541-ac4b-497c-ab86-c2626ed9387f.png">


11 Repeat the process

<img width="796" alt="Captura de pantalla 2022-07-13 a las 19 24 53" src="https://user-images.githubusercontent.com/93587419/196959430-e48cd897-c7dd-42b5-9942-9e717c43e328.png">


12 We choose the name of our new user. As the subject indicates, we must create an additional user that is not root with our login, for that reason I will call my new user ```gemartin```.

<img width="794" alt="Captura de pantalla 2022-07-13 a las 19 26 20" src="https://user-images.githubusercontent.com/93587419/196959794-807bf325-c152-42e3-bf78-20c5195f67db.png">


Put the user name again

![6](https://user-images.githubusercontent.com/93587419/196960124-405f5473-5cb2-453a-8f5d-20275d769aeb.png)



13 Now we enter the password of our new user. Like the previous one, we will repeat the process to verify that you have not written it wrong and it is also important that you save it because we will use it later.

<img width="790" alt="Captura de pantalla 2022-07-13 a las 19 30 08" src="https://user-images.githubusercontent.com/93587419/196961936-292a40df-4063-4b5a-9952-a075b9c79dcb.png">


14 Select the time of our location.

<img width="796" alt="Captura de pantalla 2022-07-13 a las 19 31 41" src="https://user-images.githubusercontent.com/93587419/196962237-e09fc8d3-77ac-48ce-af9b-65125140237b.png">


15 We will choose the third option ```Guied - use entire disk and set up encrypted LVM``` since the subject tells us that they must be encrypted partitions. ⚠️ if you want to make the bonus, you need to follow another tutorial (in the end end of the Readme.me file I will recommend a repository for this) ⚠️

<img width="796" alt="Captura de pantalla 2022-07-13 a las 19 33 13" src="https://user-images.githubusercontent.com/66915274/178795367-b82018de-edc8-47d3-8cd6-b90c5e3be2fa.png">

16 We select the disk in which we want to do the partitioning (There should only be one disk). 

<img width="789" alt="Captura de pantalla 2022-07-13 a las 19 40 03" src="https://user-images.githubusercontent.com/66915274/178796481-29ef7ebc-0518-40f0-9429-3f43316b35d3.png">

17 Once we have chosen the disk we must do the partitioning as requested. To do it properly we must select the third option ```Separate /home, /var, and /tmp partitions```.

<img width="777" alt="Captura de pantalla 2022-07-13 a las 19 41 16" src="https://user-images.githubusercontent.com/66915274/178796683-13f3ce53-9032-40c4-9957-c715856ff448.png">

18 Let's choose the ```Yes``` option so that the changes are written to disk and we can configure the logical volume manager (LVM).

<img width="777" alt="Captura de pantalla 2022-07-13 a las 19 44 30" src="https://user-images.githubusercontent.com/66915274/178797258-8c34bc31-16a7-4aef-8406-cecc21fdf028.png">

19 We give Cancel since the deletion of data on the disk is not necessary.

<img width="782" alt="Captura de pantalla 2022-07-13 a las 19 46 45" src="https://user-images.githubusercontent.com/66915274/178797666-78cdf892-1a83-4c68-8f85-0d5440cd4854.png">

20 De nuevo deberemos poner una contraseña, esta vez será la frase de encriptación. Como te he comentado previamente deberás repetir el proceso y la debes anotar ya que será importante en un futuro.

<img width="777" alt="Captura de pantalla 2022-07-13 a las 19 51 17" src="https://user-images.githubusercontent.com/66915274/178798491-4c9b4a0c-d698-47c7-9579-10b16aa47275.png">

21 In this step we must enter the amount of volume that we will use for the guided partition. We must enter ```max``` or the maximum size number available in my case is ```12.4 GB```.

<img width="794" alt="Captura de pantalla 2022-07-13 a las 19 55 02" src="https://user-images.githubusercontent.com/66915274/178799165-c6b05fd2-86ad-45b7-a026-9ee169eda5d5.png">

22 To finish the partition and write the changes to the disk we will give the option ```Finish partitioning and write changes to disk```.

<img width="795" alt="Captura de pantalla 2022-07-13 a las 19 59 15" src="https://user-images.githubusercontent.com/66915274/178800001-a0762a14-3d55-47e6-98c2-1198c7ee7d87.png">

23 We select the ```Yes``` option to continue and confirm that we do not want to make any more changes to the disk.

<img width="795" alt="Captura de pantalla 2022-07-13 a las 20 00 58" src="https://user-images.githubusercontent.com/66915274/178800331-4e9daf83-fe4e-47c0-9737-d1a89a10b3a8.png">

24 Seleccionamos la opción ```No``` ya que no necesitamos paquetes adicionales. 

<img width="770" alt="Captura de pantalla 2022-07-13 a las 20 05 42" src="https://user-images.githubusercontent.com/66915274/178801099-2dda24f5-0d46-4184-8c44-a8fe0bf46527.png">

25 We choose ```deb.debian.org``` since taking into account our region is where we will have a better connection.

<img width="792" alt="Captura de pantalla 2022-07-13 a las 20 15 00" src="https://user-images.githubusercontent.com/66915274/178802772-4f67cd99-60d5-4439-8502-317e81e07d70.png">

26 We will leave this option empty and we will give it directly to ```Continue```.

<img width="797" alt="Captura de pantalla 2022-07-13 a las 20 17 24" src="https://user-images.githubusercontent.com/66915274/178803208-2969acae-3fa7-423e-8a3c-bb7c76eff824.png">

27 We select the ```No``` option since we don't want developers to see our statistics even if they are anonymous.

<img width="796" alt="Captura de pantalla 2022-07-13 a las 20 21 54" src="https://user-images.githubusercontent.com/66915274/178803926-a4efbc70-f3e2-4e6c-9809-9152478d8237.png">

28 We will remove all the software options (with the space bar) and we will give ```Continue```.

<img width="797" alt="Captura de pantalla 2022-07-13 a las 20 24 17" src="https://user-images.githubusercontent.com/66915274/178804377-e775b89e-93d4-482f-a4d0-0ef126f47719.png">

29 We will select ```Yes``` to install [GRUB boot](https://en.wikipedia.org/wiki/GNU_GRUB) on the hard drive.

<img width="792" alt="Captura de pantalla 2022-07-13 a las 20 26 24" src="https://user-images.githubusercontent.com/66915274/178804771-ba16e0b7-9f06-4c5b-9451-0bfd65efd2bb.png">

30 We will choose the device for the bootloader installation ```/dev/sda (ata_VBOX_HARDDISK)```.

<img width="792" alt="Captura de pantalla 2022-07-13 a las 20 35 46" src="https://user-images.githubusercontent.com/66915274/178806441-f1bf3159-4e09-4c9a-9102-b3261c9000d8.png">

31 ```Continue``` to finish the installation.

<img width="794" alt="Captura de pantalla 2022-07-13 a las 20 39 30" src="https://user-images.githubusercontent.com/66915274/178807102-e2a9722e-791f-48a0-ae35-b05b36a37ed2.png">

## *Sudo*

### Step 1: Installing *sudo*
Switch to user *root* using the command `su -`.
```
$ su -
Password:
#
```
Install *sudo* via `apt install sudo`.
```
# apt install sudo
```
Verify whether *sudo* was successfully installed via `dpkg -l | grep sudo`.
```
# dpkg -l | grep sudo
```

### Step 2: Adding User to *sudo* Group
Add user to *sudo* group via `adduser <username> sudo`.
```
# adduser <username> sudo
```

### Step 3: Running *root*-Privileged Commands
From here on out, run *root*-privileged commands via prefix `sudo`. For instance:
```
$ sudo apt update
```

### Step 4: Configuring *sudo*
Configure *sudo* via command:
```
$ sudo visudo
```
To limit authentication using *sudo* to 3 attempts *(defaults to 3 anyway)* in the event of an incorrect password, add below line to the file.
```
Defaults        passwd_tries=3
```
To add a custom error message in the event of an incorrect password:
```
Defaults        insults
```
###
To log all *sudo* commands to `/var/log/sudo/<filename>`:
```
$ sudo mkdir /var/log/sudo
<~~~>
Defaults        logfile="/var/log/sudo/<filename>"
<~~~>
```
To archive all *sudo* inputs & outputs to `/var/log/sudo/`:
```
Defaults        log_input,log_output
```
To require *TTY*:
```
Defaults        requiretty
```
To set *sudo* paths to `/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/`snap/bin``:
```
Defaults        secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin"
```

## SSH

### Step 1: Installing & Configuring SSH
Install *openssh-server* via `sudo apt install openssh-server`.
```
$ sudo apt install openssh-server
```
Verify whether *openssh-server* was successfully installed via `dpkg -l | grep ssh`.
```
$ dpkg -l | grep ssh
```
Configure SSH via `sudo vi /etc/ssh/sshd_config`.
```
$ sudo vi /etc/ssh/sshd_config
```
To set up SSH using Port 4242, replace below line:
```
13 #Port 22
```
with:
```
13 Port 4242
```
To disable SSH login as *root* irregardless of authentication mechanism, replace below line
```
32 #PermitRootLogin prohibit-password
```
with:
```
32 PermitRootLogin no
```
Check SSH status via `sudo service ssh status`.
```
$ sudo service ssh status
```
>Alternatively, check SSH status via `systemctl status ssh`.
>```
>$ systemctl status ssh
>```

### Step 2: Installing & Configuring UFW
Install *ufw* via `sudo apt install ufw`.
```
$ sudo apt install ufw
```
Verify whether *ufw* was successfully installed via `dpkg -l | grep ufw`.
```
$ dpkg -l | grep ufw
```
Enable Firewall via `sudo ufw enable`.
```
$ sudo ufw enable
```
Allow incoming connections using Port 4242 via `sudo ufw allow 4242`.
```
$ sudo ufw allow 4242
```
Check UFW status via `sudo ufw status`.
```
$ sudo ufw status
```

### Step 3: Connecting to Server via SSH
SSH into your virtual machine using Port 4242 via `ssh <username>@<ip-address> -p 4242`.
```
$ ssh <username>@<ip-address> -p 4242
```
Terminate SSH session at any time via `logout`.
```
$ logout
```
>Alternatively, terminate SSH session via `exit`.
>```
>$ exit
>```

## User Management

### Step 1: Setting Up a Strong Password Policy

#### Password Age
Configure password age policy via `sudo vi /etc/login.defs`.
```
$ sudo vi /etc/login.defs
```
To set password to expire every 30 days, replace below line
```
160 PASS_MAX_DAYS   99999
```
with:
```
160 PASS_MAX_DAYS   30
```
To set minimum number of days between password changes to 2 days, replace below line
```
161 PASS_MIN_DAYS   0
```
with:
```
161 PASS_MIN_DAYS   2
```
To send user a warning message 7 days *(defaults to 7 anyway)* before password expiry, keep below line as is.
```
162 PASS_WARN_AGE   7
```

#### Password Strength
Secondly, to set up policies in relation to password strength, install the *libpam-pwquality* package.
```
$ sudo apt install libpam-pwquality
```
Verify whether *libpam-pwquality* was successfully installed via `dpkg -l | grep libpam-pwquality`.
```
$ dpkg -l | grep libpam-pwquality
```
Configure password strength policy via `sudo vi /etc/pam.d/common-password`, specifically the below line:
```
$ sudo vi /etc/pam.d/common-password
<~~~>
25 password        requisite                       pam_pwquality.so retry=3
<~~~>
```
To set password minimum length to 10 characters, add below option to the above line.
```
minlen=10
```
To require password to contain at least an uppercase character and a numeric character:
```
ucredit=-1 dcredit=-1
```
To set a maximum of 3 consecutive identical characters:
```
maxrepeat=3
```
To reject the password if it contains `<username>` in some form:
```
reject_username
```
To set the number of changes required in the new password from the old password to 7:
```
difok=7
```
To implement the same policy on *root*:
```
enforce_for_root
```
Finally, it should look like the below:
```
password        requisite                       pam_pwquality.so retry=3 minlen=10 ucredit=-1 dcredit=-1 maxrepeat=3 reject_username difok=7 enforce_for_root
```

### Step 2: Creating a New User
Create new user via `sudo adduser <username>`.
```
$ sudo adduser <username>
```
Verify whether user was successfully created via `getent passwd <username>`.
```
$ getent passwd <username>
```
Verify newly-created user's password expiry information via `sudo chage -l <username>`.
```
$ sudo chage -l <username>
Last password change					: <last-password-change-date>
Password expires					: <last-password-change-date + PASS_MAX_DAYS>
Password inactive					: never
Account expires						: never
Minimum number of days between password change		: <PASS_MIN_DAYS>
Maximum number of days between password change		: <PASS_MAX_DAYS>
Number of days of warning before password expires	: <PASS_WARN_AGE>
```

### Step 3: Creating a New Group
Create new *user42* group via `sudo addgroup user42`.
```
$ sudo addgroup user42
```
Add user to *user42* group via `sudo adduser <username> user42`.
```
$ sudo adduser <username> user42
```
>Alternatively, add user to *user42* group via `sudo usermod -aG user42 <username>`.
>```
>$ sudo usermod -aG user42 <username>
>```
Verify whether user was successfully added to *user42* group via `getent group user42`.
```
$ getent group user42
```

## *cron*

### Setting Up a *cron* Job
Configure *cron* as *root* via `sudo crontab -u root -e`.
```
$ sudo crontab -u root -e
```
To schedule a shell script to run every 10 minutes, replace below line
```
23 # m h  dom mon dow   command
```
with:
```
23 */10 * * * * sh /path/to/script
```
Check *root*'s scheduled *cron* jobs via `sudo crontab -u root -l`.
```
$ sudo crontab -u root -l
```
The mandatory part is all here :) To setup the bonus part I recommend visit this repository: https://github.com/mcombeau/Born2beroot/blob/main/guide/bonus_debian.md
