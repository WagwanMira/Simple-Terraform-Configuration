
// main.tf - и файла выбрано произвольно, важно только расширение
terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

// Terraform должен знать ключ, для выполнения команд по API

// Определение переменной, которую нужно будет задать
variable "yc_token" {}

provider "yandex" {
  zone = "ru-central1-a"
  token = var.yc_token

}
