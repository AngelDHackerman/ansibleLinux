
      # Creating a user on remote clients

ansible all -m user -a "name=Jsmith home=/home/jsmith shell=/bin/bash state=present"

      # To add a user to a different group

ansible all -m user -a "name=Jsmith group=angel"

      # Deleting a user on remote clients

ansible all -m user -a "name=Jsmith home=/home/jsmith shell=/bin/bash state=absent"
ansible all -m shell -a "userdel Jsmith"

      # Getting system information from remote clients

ansible all -m setup

      # You can run commands on the remote host without a shell moduel e.g. reboot client1

ansible client1 -a "/sbin/reboot"