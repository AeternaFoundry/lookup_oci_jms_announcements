variable "jms_announcements_lookup" {
  description = <<EOT
Map of jms_announcements_lookup, attributes below
Optional:
    - summary_contains
    - time_end
    - time_start
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    summary_contains = optional(string)
    time_end         = optional(string)
    time_start       = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

