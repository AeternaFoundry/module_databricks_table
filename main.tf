resource "databricks_table" "tables" {
  for_each = var.tables

  catalog_name            = each.value.catalog_name
  data_source_format      = each.value.data_source_format
  name                    = each.value.name
  schema_name             = each.value.schema_name
  table_type              = each.value.table_type
  comment                 = each.value.comment
  owner                   = each.value.owner
  properties              = each.value.properties
  storage_credential_name = each.value.storage_credential_name
  storage_location        = each.value.storage_location
  view_definition         = each.value.view_definition

  dynamic "column" {
    for_each = each.value.column
    content {
      comment            = column.value.comment
      name               = column.value.name
      nullable           = column.value.nullable
      partition_index    = column.value.partition_index
      position           = column.value.position
      type_interval_type = column.value.type_interval_type
      type_json          = column.value.type_json
      type_name          = column.value.type_name
      type_precision     = column.value.type_precision
      type_scale         = column.value.type_scale
      type_text          = column.value.type_text
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

