resource "docker_image" "ubuntu" {
  name = "ubuntu:latest"
}
resource "docker_container" "webserver" {
  image = "${docker_image.ubuntu.image_id}"
  name = "ubuntu55"
  must_run = true
  publish_all_ports = true
  command = [
    "tail",
    "-f",
    "/dev/null"
  ]
}







