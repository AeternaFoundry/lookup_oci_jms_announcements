output "jms_announcements_lookup_id" {
  description = "Map of id values across all jms_announcements_lookup, keyed the same as var.jms_announcements_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_jms_announcements.jms_announcements_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "jms_announcements_lookup_announcement_collection" {
  description = "Map of announcement_collection values across all jms_announcements_lookup, keyed the same as var.jms_announcements_lookup except keys with no announcement_collection are omitted"
  value       = { for k, v in data.oci_jms_announcements.jms_announcements_lookup : k => v.announcement_collection if v.announcement_collection != null && length(v.announcement_collection) > 0 }
}
output "jms_announcements_lookup_filter" {
  description = "Map of filter values across all jms_announcements_lookup, keyed the same as var.jms_announcements_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_jms_announcements.jms_announcements_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "jms_announcements_lookup_summary_contains" {
  description = "Map of summary_contains values across all jms_announcements_lookup, keyed the same as var.jms_announcements_lookup except keys with no summary_contains are omitted"
  value       = { for k, v in data.oci_jms_announcements.jms_announcements_lookup : k => v.summary_contains if v.summary_contains != null && length(v.summary_contains) > 0 }
}
output "jms_announcements_lookup_time_end" {
  description = "Map of time_end values across all jms_announcements_lookup, keyed the same as var.jms_announcements_lookup except keys with no time_end are omitted"
  value       = { for k, v in data.oci_jms_announcements.jms_announcements_lookup : k => v.time_end if v.time_end != null && length(v.time_end) > 0 }
}
output "jms_announcements_lookup_time_start" {
  description = "Map of time_start values across all jms_announcements_lookup, keyed the same as var.jms_announcements_lookup except keys with no time_start are omitted"
  value       = { for k, v in data.oci_jms_announcements.jms_announcements_lookup : k => v.time_start if v.time_start != null && length(v.time_start) > 0 }
}

