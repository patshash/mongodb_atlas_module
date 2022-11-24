terraform {
  required_providers {
    mongodbatlas = {
      source = "mongodb/mongodbatlas"
    }
  }
  required_version = ">= 0.13"
}

provider "mongodbatlas" {}

resource "mongodbatlas_project" "project" {
  name   = var.project_name
  org_id = var.org_id
}

resource "mongodbatlas_cluster" "cluster" {
  project_id             = mongodbatlas_project.project.id
  name                   = var.cluster_name

  # Provider Settings "block"
  provider_name                = var.cloud_provider
  provider_instance_size_name  = "M0"
  backing_provider_name = "AWS"
  provider_region_name = var.provider_region_name
}
  
resource "mongodbatlas_database_user" "user" {
  username           = var.dbuser
  password           = var.dbuser_password
  project_id         = mongodbatlas_project.project.id
  auth_database_name = "admin"

  roles {
    role_name     = "readWrite"
    database_name = var.database_name # The database name and collection name need not exist in the cluster before creating the user.
  }
  labels {
    key   = "Name"
    value = "DB User1"
  }
}
