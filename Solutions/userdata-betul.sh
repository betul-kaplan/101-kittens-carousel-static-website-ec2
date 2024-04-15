        #! /bin/bash 
        dnf update -y
        dnf install httpd -y
        chmod 777 /var/www/html
        cd /var/www/html
        dnf install git -y
        git clone https://github.com/betul-kaplan/101-kittens-carousel-static-website-ec2.git
        mv 101-kittens-carousel-static-website-ec2/static-web/* .
        systemctl restart httpd
        systemctl enable httpd