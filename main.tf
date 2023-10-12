terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.39.0" 
    }
  }
}

provider "github" {
  token = "token personal"
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
