#!/bin/bash


Install_Menu()
{

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
}
  Install_Menu 
while true;
do
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
	     Main_Menu
	     ;;
  esac
done

