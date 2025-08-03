output "cluster_id" {
  description = "Cluster ID"
  value       = aws_ecs_cluster.main.id
}

output "cluster_name" {
  description = "Cluster Name"
  value       = aws_ecs_cluster.main.name
}
