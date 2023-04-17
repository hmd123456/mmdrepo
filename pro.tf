terraform {
  cloud {
    organization = "mmd-dev"

    workspaces {
      name = "mmddevws"
    }
  }
}