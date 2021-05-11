resource "null_resource" "bastion" {
  provisioner "local-exec" {
                 command = "/bin/bash packages.sh"
  }
}
