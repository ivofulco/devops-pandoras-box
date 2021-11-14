resource "azuredevops_project" "project" {
  name       = var.project_names
  description        = var.project_descriptions
  visibility         = var.project_visibilitys
  #version_control    = var.version_control
  work_item_template = var.project_work_item_templates

  version_control = "${var.project_version_controls == "" ? "Git" : "Tfvc"}"

  #features = {
  #  "boards"       = "${var.project_metadata_list.features.boards == "disabled" ? "disabled" : "enabled"}"
  #  "repositories" = "${var.project_metadata_list.features.repositories == "disabled" ? "disabled" : "enabled"}"
  #  "testplans"    = "${var.project_metadata_list.features.testplans == "disabled" ? "disabled" : "enabled"}"
  #  "testplans"    = "${var.project_metadata_list.features.testplans == "disabled" ? "disabled" : "enabled"}"
  #  "artifacts"    = "${var.project_metadata_list.features.artifacts == "disabled" ? "disabled" : "enabled"}"
  #}
}


