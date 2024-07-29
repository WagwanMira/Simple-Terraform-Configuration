

data "yandex_resourcemanager_cloud" "cloud-dimaholoimov" {
  name = "cloud-dimaholoimov"
}

resource "yandex_resourcemanager_cloud_iam_member" "editor" {
  cloud_id = "${data.yandex_resourcemanager_cloud.cloud-dimaholoimov.id}"
  role     = "editor"
  member   = "userAccount:aje303cf85qhceev9f1r"
}

resource "yandex_resourcemanager_cloud_iam_member" "viewer" {
  cloud_id = "${data.yandex_resourcemanager_cloud.cloud-dimaholoimov.id}"
  role     = "viewer"
  member   = "userAccount:aje303cf85qhceev9f1r"
}
