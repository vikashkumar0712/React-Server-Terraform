## This repo contains Terraform Script to Create Infrastructure on Google Cloud Plateform to launch a docker container in different environments.
### Follow this steps to Create Your Infra for your React Docker Container.
> #### Create SSH keys
```
ssh-keygen
```
> #### Clone the Git repo
```
$ git clone https://github.com/vikashkumar0712/React-Server-Terraform/
cd React-Server-Terraform
```
> #### Open Code editor here
```
$ code .
```
>  #### Don't forget to paste your authentication key here which you have created on GCP.

> #### Go to provider.tf and do require changes (Project id, Authentication key, Region)

> #### Go to main.tf and change username in line 28 with your Ubuntu username.

> #### Go to backend.tf and change the bucket name along with authentication credentials.

> #### Go to script.sh and change your image name.

> #### There are some changes which is totally depends upon your requirement like Machine_type, Instance_name, firewall ports etc you can do it easily.

> #### Just run the script to create infra
```
$ sudo chmod +x run.sh
$ ./run.sh
```

