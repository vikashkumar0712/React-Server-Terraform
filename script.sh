    #!/bin/bash
    sudo apt-get update
    # sudo apt-get install -y nginx
    # sudo service nginx start
    # echo "Hii, This is Vikash Kumar" > /var/www/html/index.nginx-debian.html
    sudo apt install docker.io -y
    sudo service docker start
    sudo docker run -d -p 3000:3000 vikashkumar07/my-react-app:latest
