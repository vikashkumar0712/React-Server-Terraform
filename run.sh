#!/bin/bash

terraform workspace new dev

terraform apply --auto-approve -var-file=dev-terraform.tfvars -var="fw_enable=true"  

terraform workspace new prod 

terraform apply --auto-approve -var-file=prod-terraform.tfvars -var="fw_enable=false"
