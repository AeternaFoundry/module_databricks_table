variable "tables" {
  description = <<EOT
Map of tables, attributes below
Required:
    - catalog_name
    - data_source_format
    - name
    - schema_name
    - table_type
    - column (block):
        - comment (optional)
        - name (required)
        - nullable (optional)
        - partition_index (optional)
        - position (required)
        - type_interval_type (optional)
        - type_json (optional)
        - type_name (required)
        - type_precision (optional)
        - type_scale (optional)
        - type_text (required)
Optional:
    - comment
    - owner
    - properties
    - storage_credential_name
    - storage_location
    - view_definition
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    catalog_name            = string
    data_source_format      = string
    name                    = string
    schema_name             = string
    table_type              = string
    comment                 = optional(string)
    owner                   = optional(string)
    properties              = optional(map(string))
    storage_credential_name = optional(string)
    storage_location        = optional(string)
    view_definition         = optional(string)
    column = list(object({
      comment            = optional(string)
      name               = string
      nullable           = optional(bool)
      partition_index    = optional(number)
      position           = number
      type_interval_type = optional(string)
      type_json          = optional(string)
      type_name          = string
      type_precision     = optional(number)
      type_scale         = optional(number)
      type_text          = string
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.tables : (
        length(v.column) >= 1
      )
    ])
    error_message = "Each column list must contain at least 1 items"
  }
}

