resource "aws_key_pair" "deployer" {
  key_name   = "terraform-ssh"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDVBoFKoeOseKMON/ERUhLTxo5RRYACVlTQ77MGMbInP+N/MCkoUDtvg/MeW2JDVUxDje7rjX6NAvqEC9bmuthjHtRyV1DEo2ejrDJjbHxJB3crJqvSCc45RKJC3E4GGQArmupe7Dlq7dwHF3xS/YgMLOkUhsCuCUTJivPs48exxsfOGlVKaQ/FLAs8hBpJwDpsHFEGFXD/DbKblP8q9cbXhl/M1BksbPEEEJupo+BhVUXQnE3zTz4BTyyDV71n55q7dUMF4dF31m/YFWpNy7TApD2sGMi8LWogj/UoUV5MEgPNdWbOVjlWEqgu/Fbk3kwChvLTU4xmYoklfQPAB9eF nikhi@Nikhith_Naini"
}
resource "aws_instance" "example" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"
  key_name      = "terraform-ssh"
  vpc_security_group_ids = [aws_security_group.main.id]

  // other instance configurationterra
}

