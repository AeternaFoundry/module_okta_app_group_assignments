resource "okta_app_group_assignments" "app_group_assignments" {
  for_each = var.app_group_assignments

  app_id = each.value.app_id

  dynamic "group" {
    for_each = each.value.group != null ? each.value.group : []
    content {
      id       = group.value.id
      priority = group.value.priority
      profile  = group.value.profile
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

