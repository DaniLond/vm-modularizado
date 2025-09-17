output "vm_name" {
  description = "VM name"
  value       = module.compute.vm_name
}

output "resource_group_name" {
  description = "Resource group name"
  value       = module.rg.name
}

output "public_ip_address" {
  description = "Public IP address of the VM"
  value       = module.network.public_ip_address
}