terraform {
  cloud {
    organization = "mmd-dev"

    workspaces {
      name = "WS01"
    }
  }
}