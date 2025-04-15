terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.6.0"
    }
  }
}

provider "github" {
    token = "git hub token"
}

resource "github_repository" "example" {
    name = "terraform-tf"
    description = "my tf code"
    visibility = "public"
}