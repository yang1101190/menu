
#!/bin/bash


Usage()
{
     echo "Usage:sh menu.sh user password"
	 exit 1
}
if [ $# -ne 2 ];then
{   
	Usage
}
fi
   
echo $1
echo $2
if [ $1 == "yangjw"  -a $2 == "yangjw" ] ;then
     echo "login success"
elif [ $1 == "yangjw" ];then
     echo "password wrong"
else
     echo "login fail"
         exit 1
fi

#User&Password
##############################
#user=yangjw
#Epassword=yangjw
############################3

#Variable
today=$(date "+Y%m%")
USER=$(whoami)





Install_Menu()
{

while true;
do
cat <<-EOF
   ----------------------------             
   |          Install_Menu    |
   ----------------------------
   |      1) Install_Nginx    |
   |      2) Install_Httpd    |
   |      3) Install_Mysql    |
   |      4) Main_Menu        |
   ---------------------------
EOF

  read -p "input you choice:" num
  case $num in
      1) echo "Install_Nginx"
             #Install_Nginx
                 ;;
      2) echo "Install_Httpd"
             #Install_Httpd
                 ;;
      3) echo "Install_Mysql"
             #Install_Mysql
                 ;;
          *) echo "return Main_Menu"
            break
             ;;
  esac
done
}

Check_Menu()
{

while true
do
cat <<-EOF
   -----------------------------|           
   |          Check_Menu        |
   -----------------------------|
   |      1) Check_system      |
   |      2) Check_system      |
   |      3) Check_Mysql      |
   |      4) Main_Menu          |
   -----------------------------|
EOF

  read -p "input you choice:" num
  case $num in
      1) echo "Check_system"
             #Install_Nginx
                 ./Check_System.sh
                 ;;
      2) echo "Check_Httpd"
             #Install_Httpd
                 ;;
      3) echo "Check_Mysql"
             #Install_Mysql
                 ;;
          *) echo "return Main_Menu"
            break
             ;;
  esac
done
}

Backup_Recover_menu()
{

while true
do
cat <<-EOF
   -----------------------------|           
   |          Backup&Recover_Menu        |
   -----------------------------|
   |      1) Check_Nginx      |
   |      2) Check_Httpd      |
   |      3) Check_Mysql      |
   |      4) Main_Menu          |
   -----------------------------|
EOF

  read -p "input you choice:" num
  case $num in
      1) echo "Check_Nginx"
             #Install_Nginx
                 ;;
      2) echo "Check_Httpd"
             #Install_Httpd
                 ;;
      3) echo "Check_Mysql"
             #Install_Mysql
                 ;;
          *) echo "return Main_Menu"
            break
             ;;
  esac
done
}


Main_Menu()
{

while true
do
cat <<-EOF
   User:$USER         Date:$today
   --------------------------------- 
   |          Main_Menu            |
   |-------------------------------|  
   |      1) Install Menu          |
   |      2) Check_Menu            |
   |      3) Backup_Recover_Menu   | 
   |      q|Q) Quit                |
   --------------------------------
EOF


read -p "input you choice:" num
case $num in
        1) echo "Install Progrom"
           Install_Menu
           ;;
        2)
           echo "Check_Status"
           Check_Menu
           ;;
        3) echo "Backup&Recover"
           Backup_Recover_menu
           ;;
         q|Q) echo "Quit"
           exit 0
           ;;
        *) Main_Menu
 esac
done
}


Main_Menu

