variable "org_id" {
  type        = string
  description = "MongoDB Organization ID"
}
variable "project_name" {
  type        = string
  description = "The MongoDB Atlas Project Name"
  default = "ProjectPatrick"
}
variable "cluster_name" {
  type        = string
  description = "The MongoDB Atlas Cluster Name"
  default = "DemoCluster"
}
variable "cloud_provider" {
  type        = string
  description = "The cloud provider to use, must be AWS, GCP or AZURE"
  default = "TENANT"
}
variable "region" {
  type        = string
  description = "MongoDB Atlas Cluster Region, must be a region for the provider given"
  default = "ap-southeast-1"
}
variable "mongodbversion" {
  type        = string
  description = "The Major MongoDB Version"
  default = "4.2"
}
variable "dbuser" {
  type        = string
  description = "MongoDB Atlas Database User Name"
  default = "patrick"
}
variable "dbuser_password" {
  type        = string
  description = "MongoDB Atlas Database User Password"
  default = "patricksecure123"
}
variable "database_name" {
  type        = string
  description = "The database in the cluster to limit the database user to, the database does not have to exist yet"
  default = "patrickdb"
}
variable "provider_region_name" {
  type        = string
  description = "Provider region for shared clusters AP_SOUTHEAST_1 or 3 for M0"
  default = "AP_SOUTHEAST_1"
}