terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}
variable "yc_token" {}
provider "yandex" {
  zone = "ru-central1-a"
  token = var.yc_token
}
