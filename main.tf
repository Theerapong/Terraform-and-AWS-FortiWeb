terraform {
  required_providers {
    fortios = {
      source = "fortinetdev/fortios"
      version = "1.10.4"
    }
  }
}

# Configure the FortiOS Provider for FortiGate
provider "fortios" {
  hostname     = "35.155.168.72:8443"
  token        = "uEUaSok2DTzOgUWyKV7yZOqrK4dcv1ICuXLOg8gPFDD4J+TcnJyj+AbKWKmAObay"
  insecure     = "true"
}

resource "fortios_fmg_system_dns" "test1" {
  primary   = "208.91.112.52"
  secondary = "208.91.112.54"
}