# Devops_assignment
1. Logic / Steps:
    • Created database pucsdStudent ,and user pucsd and set password is pucsd as per the instructions.
    • Created table studentData as per the schema in the database pucsdStudent and inserted default values in the table. And created test.sql file.
    • Pulled mysql image from the dockerhub.
    • Created Dockerfile.
    • The below command used to create custom docker image:
      sujit@sujit-Aspire-E5-573G:~$ sudo docker build -t mysql .
    • The below command used to create container specifying default mysql port number 3306.
      sujit@sujit-Aspire-E5-573G:~$ sudo docker run -d --name mydb -p 3306:3306 -e MYSQL_ROOT_PASSWORD=sujit mysql
    • For connecting the container below command is used:
      sujit@sujit-Aspire-E5-573G:~$ sudo docker exec -it mydb bash
    • Finally we can use mysql using:
      root@8ce9a0954d7a:/# mysql pucsdStudent -u pucsd -p
      Enter password:      	(Entering pucsd as instructed)

2. Dockerfile Explaination :
In the Dockerfile there are two commands:
    • FROM mysql – creates mysql custom docker image.
    • COPY ./test.sql /docker-entrypoint-initdb.d/ -  Added test.sql at the entrypoint so that it will be executed automatically on startup.
