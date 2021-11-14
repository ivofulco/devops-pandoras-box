variable "project_names" {
  description = "The name of the azure devops project"
  type        = string
}

variable "project_descriptions" {
  description = "The description of the azure devops project"
  type        = string
}

variable "project_visibilitys" {
  description = "The visibility of the azure devops project"
  type        = string
  validation {
    condition     = var.project_visibilitys == "public" || var.project_visibilitys == "private"
    error_message = "Specifies the visibility of the Project. Valid values: private or public. Defaults to private."
  }
  default = "private"
}

variable "project_version_controls" {
  description = "The version control of the azure devops project"
  type        = string
  validation {
    condition     = var.project_version_controls == "Git" || var.project_version_controls == "Tfvc"
    error_message = "Specifies the version control system. Valid values: Git or Tfvc. Defaults to Git."
  }
  default = "Git" 
}

variable "project_work_item_templates" {
  description = "The work item template of the azure devops project"
  type        = string
  validation {
    condition     = var.project_work_item_templates == "Agile" || var.project_work_item_templates == "Basic" || var.project_work_item_templates == "CMMI" || var.project_work_item_templates == "Scrum"
    error_message = "Specifies the work item template. Valid values: Agile, Basic, CMMI or Scrum. Defaults to Agile."
  }
  default = "Agile"  
}

