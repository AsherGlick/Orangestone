Orangestone
===========

A suite of tools for managing multiple Minecraft server instances. On a remote server by multiple users. Original idea by Josh Komoroske, new version ment to add multiple user support and documentation / usages.


Orangestone expands on the features of redstone by using a new user called "minecraft" with no password. and taking advantage of the functionality of `sudo` in order to call functions as if the user was actually the daemon process in order to start and stop the server.

From a blank server you will need to run the following commands

* Create your account
* Create the other minecraft admin's account `useradd otherguy`
* Create the minecraft account `useradd minecraft`
* Install Screen `apt-get install screen`
* Allow Screen to enter multi-user mode using the command `chmod u+s /usr/bin/screen`
* Install sudo `apt-get install sudo`
* Add your account to the sudoer's group `usermod -a -G sudoers myaccount`
* Create a new group for minecraft admins `groupadd minecraftadmins`
* Add your admins to the group `usermod -a -G minecraftadmins otherguy`
* Add the group's permissions to the sudoers file `visudo`

Now that everything is set up you should be able to run the scripts properly

If you are planning on using these scripts to run more then one server then you can create multiple permission groups and multiple daemon users, one for each server that will be run. A single admin can have permissions to modify multiple servers if this is the case, and you can also still have multiple admins on each server