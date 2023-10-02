resource "local_file" "vinayak" {
  content  = "This file is created by Vinayak using terraform"
  filename = "./vin-test-file.txt"
}
