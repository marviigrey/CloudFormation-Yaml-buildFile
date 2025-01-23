provider "github" {
    token = "<personal-access-token>"
}

resource "github_repository" "terraform-infra-repo" {
    name = "terraform-infra"
    description = "infrastructure repository managed by terraform"
    visibility = "public"
    has_issues = true
    has_wiki = true

}

output "repository_clone_url_ssh" {
  value       = github_repository.terraform-infra-repo.ssh_clone_url
}
