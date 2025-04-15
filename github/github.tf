terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.6.0"
    }
  }
}

provider "github" {
    token = "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"
}

resource "github_repository" "example" {
    name = "terraform-tf"
    description = "my tf code"
    visibility = "public"
}