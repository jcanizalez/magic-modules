resource "google_assured_workloads_workload" "primary" {
  display_name = "{{name}}"
  labels = {
    a = "a"
  }
  billing_account = "billingAccounts/{{billing_account}}"
  compliance_regime = "FEDRAMP_MODERATE"
  provisioned_resources_parent = google_folder.folder1.name
  organization = "{{org_id}}"
  location = "us-central1"
}

resource "google_folder" "folder1" {
  display_name = "{{name}}"
  parent       = "organizations/{{org_id}}"
}