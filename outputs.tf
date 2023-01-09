output "ip" {
    value = "google_compute_instance.name_vm_instance.network_interface.0.network_ip"
} 