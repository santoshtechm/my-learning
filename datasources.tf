# Get list of availability domain
data "oci_identity_availability_domains" "ADs" {
  compartment_id = var.compartment_ocid
}

# Get the list of supported images
data "oci_core_images" "compute_images" {
  compartment_id           = var.compartment_ocid
  operating_system         = var.image_operating_system
  operating_system_version = var.image_operating_system_version
  shape                    = var.instance_shape
  sort_by                  = "TIMECREATED"
  sort_order               = "DESC"
  filter {
    name   = "display_name"
    values = ["^([a-zA-z]+)-([a-zA-z]+)-([\\.0-9]+)-([\\.0-9-]+)$"]
    regex  = true
  }
}
 
data "template_file" "user_data" {
   template = file("web_script.sh")
}
