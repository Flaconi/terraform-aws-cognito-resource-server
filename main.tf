resource "aws_cognito_resource_server" "resource" {
  count      = length(local.resource_servers)
  name       = lookup(element(local.resource_servers, count.index), "name")
  identifier = lookup(element(local.resource_servers, count.index), "identifier")

  #scope
  dynamic "scope" {
    for_each = lookup(element(local.resource_servers, count.index), "scope")
    content {
      scope_name        = lookup(scope.value, "scope_name")
      scope_description = lookup(scope.value, "scope_description")
    }
  }

  user_pool_id = var.user_pool_id
}

locals {

  # This parses var.resource_servers which is a list of objects (map), and transforms it to a tuple of elements to avoid conflict with  the ternary and local.groups_default
  resource_servers_parsed = [for e in var.resource_servers : {
    name       = lookup(e, "name", null)
    identifier = lookup(e, "identifier", null)
    scope      = lookup(e, "scope", [])
    }
  ]

  resource_servers = length(var.resource_servers) == 0 ? [] : local.resource_servers_parsed

}
