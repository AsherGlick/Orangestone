# Beginnings of a server setup script

# DO NOT USE YET
# $1 is the server name
# $2 is the new server mod

useradd $1
groupadd $1+"admins"
usermod -a -G $1+"admins" $2