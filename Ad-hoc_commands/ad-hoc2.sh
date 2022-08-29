
      # Installing package (telnet and httpd-manual)

ansible all -m yum -a "name=telnet state=present"
ansible all -m yum -a "name=httpd-manual state=present"

      # Starting httpd package service 

ansible all -m service -a "name=httpd state=started"

      # Start httpd and enable at boot time

ansible all -m service -a "name=httpd state=started enabled=yes"

      # Checking httpd service status on remote client

ansible all -m shell -a "systemctl status httpd"  # ? shell module allow us to use the commands avaible in the client node. 

      # Remove httpd package

ansible all -m shell -a "yum remove httpd"