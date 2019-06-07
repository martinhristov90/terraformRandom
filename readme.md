## This reposistory is created with learning purposes for Terraform, focusing on random provider.

## Purpose :

- It provides a simple example of how to use Terraform `random` provider.

## How to install terraform : 

- The information about installing terraform can be found on the HashiCorp website 
[here](https://learn.hashicorp.com/terraform/getting-started/install.html)

## How to use it :

- In a directory of your choice, clone the github repository :
    ```
    git clone https://github.com/martinhristov90/terraformRandom.git
    ```

- Change into the directory :
    ```
    cd terraformRandom
    ```
- Run `terraform init` to download the random provider.

- Run `terraform plan` to see what actions are going to be performed Terraform. Output should look like this :
    ```
    ------------------------------------------------------------------------

    An execution plan has been generated and is shown below.
    Resource actions are indicated with the following symbols:
      + create

    Terraform will perform the following actions:

      + random_id.rand
          id:               <computed>
          b64:              <computed>
          b64_std:          <computed>
          b64_url:          <computed>
          byte_length:      "4"
          dec:              <computed>
          hex:              <computed>
          keepers.%:        "1"
          keepers.image_id: "win95"


    Plan: 1 to add, 0 to change, 0 to destroy.

    ------------------------------------------------------------------------
    ```

- Run `terraform apply` to create the `random_id` resource. As output you should see :
    ```
    random_id.rand: Creating...
    b64:              "" => "<computed>"
    b64_std:          "" => "<computed>"
    b64_url:          "" => "<computed>"
    byte_length:      "" => "4"
    dec:              "" => "<computed>"
    hex:              "" => "<computed>"
    keepers.%:        "" => "1"
    keepers.image_id: "" => "win95"
    random_id.rand: Provisioning with 'local-exec'...
    random_id.rand (local-exec): Executing: ["/bin/sh" "-c" "echo Image_id is win95 , random number generated for it is 3282485148"]
    random_id.rand (local-exec): Image_id is win95 , random number generated for it is 3282485148
    random_id.rand: Creation complete after 0s (ID: w6a_nA)
    ```
    So throughout this execution of `terraform apply` the randomly generated number stays the same for the value of `image_id = "win95"`. 
    
- In order to destroy the created resources, you can use `terraform destroy`.