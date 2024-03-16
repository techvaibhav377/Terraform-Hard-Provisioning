# Terraform-Hard-Provisioning

Terraform Project: Deploying a Web Server with DNS Configuration

This Terraform project automates the deployment of a web server and configures DNS using AWS resources. The project is structured into separate files for better organization and modularity.

==>  Project Structure  <==
provider.tf: Configures the AWS provider with the desired region and credentials.
variable.tf: Defines input variables used throughout the project.
resource.tf: Defines the AWS resources to be provisioned, including instances, security groups, and key pairs.
script.sh: Bash script for configuring the web server and DNS.



==>  Deployment Steps  <==
1. Instance Provisioning: Terraform provisions an EC2 instance on AWS.
2. DNS Configuration: The script named.conf and vaibhav_dns zone file are deployed to the instance using Terraform's file provisioner.
3. Web Server Setup: The script.sh script is executed on the instance to install and configure Apache HTTP Server (httpd), download a web content zip file, and set up the web server document root.
4. DNS Service Start: The DNS service (named) is started on the instance.
Usage
5. Clone the repository to your local machine.
6. Set up AWS credentials and region in the provider.tf file.
7 Customize input variables in the variable.tf file if necessary.
8. Run terraform init to initialize the working directory.
9. Run terraform plan to preview the changes.
10. Run terraform apply to apply the changes and provision the resources.
11. Access the website via the public IP address of the EC2 instance.


==> Requirements <==
Terraform installed on your local machine.
AWS account with appropriate permissions.
Basic understanding of AWS services and Terraform concepts.


[Author]
VAIBHAV GAUTAM

License
This project is licensed under the techvaibhav.site.
