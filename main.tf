data "oci_jms_announcements" "jms_announcements_lookup" {
  for_each = var.jms_announcements_lookup

  summary_contains = each.value.summary_contains
  time_end         = each.value.time_end
  time_start       = each.value.time_start

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

