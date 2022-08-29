
      # Ping localhost

ansible localhost -m ping

      # Creating a file on all remote clients 

ansible all -m file -a "path=/home/new_file_created.txt state=touch mode=700"

      # Deleting a file on all remote clients

ansible all -m file -a "path=/home/new_file_created.txt state=absent"

      # Copying a file to remote clients

ansible all -m copy -a "src=/tmp/document.txt dest=/home/angel/document.txt

