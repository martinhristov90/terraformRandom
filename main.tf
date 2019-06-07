resource "random_id" "rand" {
  # Changing variable image_id is going to trigger new random id.
  keepers = {
    image_id = "${var.image_id}"
  }

  byte_length = 4

  provisioner "local-exec" {
    command = "echo Image_id is ${random_id.rand.keepers.image_id} , random number generated for it is ${random_id.rand.dec}"
  }
  
}