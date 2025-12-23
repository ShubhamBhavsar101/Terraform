## Programmatic Access to AWS
Commands 
aws help    
aws iam help
aws iam create-user help

Terraform Commands:
Taint Resource - Terraform taint
Untaint Resource - terraform untaint
Change Log Level - export TF_LOG = ERROR/INFO/DEBUG/TRACE
Store Logs persistently - export TF_LOG_PATH=/tmp/terraform.log
Format Files - Terraform format
Import Resources created by others - terraform import aws_instance.webserver-2 i-026e13be12asdf
needs resource block as terraform import does not update configuration instead only updates state files

