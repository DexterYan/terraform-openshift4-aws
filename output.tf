data "local_file" "kubeadmin-password" {
  depends_on = [module.installer]
  filename   = "kubeadmin-password"
}

output "infraID" {
  value = module.installer.infraID
}

output "kubeadmin" {
  value = data.local_file.kubeadmin-password.content
}

output "consoleURL" {
  value = "https://console-openshift-console.apps.${var.cluster_name}.${var.base_domain}"
}

output "apiURL" {
  value = "api.${var.cluster_name}.${var.base_domain}:6443"
}

output "master_ip_addresses" {
  value = module.masters.ip_addresses
}

output "ssh_master_cmd" {
  value = "ssh -i ${var.openshift_ssh_key} core@${module.masters.ip_addresses[0]}"
}
