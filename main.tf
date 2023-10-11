terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.39.0" # Reemplaza esto con la versión válida del proveedor
    }
  }
}

# Configure the GitHub Provider
# provider "github" {
#   token = "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"
# }
# Recurso para agregar membresía de usuario a un repositorio
provider "github" {
  token = "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"
}

resource "github_repository" "lab-iot" {
  name        = "lab-iot"
  description = "My awesome codebase"
  visibility  = "public"
  auto_init   = true

}

resource "github_branch" "development" {
  repository = github_repository.lab-iot.name
  branch     = "development"
}

resource "github_branch" "hotfix" {
  repository = github_repository.lab-iot.name
  branch     = "hotfix"
}

resource "github_branch" "production" {
  repository = github_repository.lab-iot.name
  branch     = "production"
}
