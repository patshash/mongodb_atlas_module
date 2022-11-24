output "user1" {
  value = mongodbatlas_database_user.user.username
}

output "connection_strings" {
  value = mongodbatlas_cluster.cluster.connection_strings[0].standard_srv
}

output "project_name" {
  value = mongodbatlas_project.project.name
}