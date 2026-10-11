output "tables_id" {
  description = "Map of id values across all tables, keyed the same as var.tables except keys with no id are omitted"
  value       = { for k, v in databricks_table.tables : k => v.id if v.id != null && length(v.id) > 0 }
}
output "tables_catalog_name" {
  description = "Map of catalog_name values across all tables, keyed the same as var.tables except keys with no catalog_name are omitted"
  value       = { for k, v in databricks_table.tables : k => v.catalog_name if v.catalog_name != null && length(v.catalog_name) > 0 }
}
output "tables_column" {
  description = "Map of column values across all tables, keyed the same as var.tables except keys with no column are omitted"
  value       = { for k, v in databricks_table.tables : k => v.column if v.column != null && length(v.column) > 0 }
}
output "tables_comment" {
  description = "Map of comment values across all tables, keyed the same as var.tables except keys with no comment are omitted"
  value       = { for k, v in databricks_table.tables : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "tables_data_source_format" {
  description = "Map of data_source_format values across all tables, keyed the same as var.tables except keys with no data_source_format are omitted"
  value       = { for k, v in databricks_table.tables : k => v.data_source_format if v.data_source_format != null && length(v.data_source_format) > 0 }
}
output "tables_name" {
  description = "Map of name values across all tables, keyed the same as var.tables except keys with no name are omitted"
  value       = { for k, v in databricks_table.tables : k => v.name if v.name != null && length(v.name) > 0 }
}
output "tables_owner" {
  description = "Map of owner values across all tables, keyed the same as var.tables except keys with no owner are omitted"
  value       = { for k, v in databricks_table.tables : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "tables_properties" {
  description = "Map of properties values across all tables, keyed the same as var.tables except keys with no properties are omitted"
  value       = { for k, v in databricks_table.tables : k => v.properties if v.properties != null && length(v.properties) > 0 }
}
output "tables_provider_config" {
  description = "Map of provider_config values across all tables, keyed the same as var.tables except keys with no provider_config are omitted"
  value       = { for k, v in databricks_table.tables : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "tables_schema_name" {
  description = "Map of schema_name values across all tables, keyed the same as var.tables except keys with no schema_name are omitted"
  value       = { for k, v in databricks_table.tables : k => v.schema_name if v.schema_name != null && length(v.schema_name) > 0 }
}
output "tables_storage_credential_name" {
  description = "Map of storage_credential_name values across all tables, keyed the same as var.tables except keys with no storage_credential_name are omitted"
  value       = { for k, v in databricks_table.tables : k => v.storage_credential_name if v.storage_credential_name != null && length(v.storage_credential_name) > 0 }
}
output "tables_storage_location" {
  description = "Map of storage_location values across all tables, keyed the same as var.tables except keys with no storage_location are omitted"
  value       = { for k, v in databricks_table.tables : k => v.storage_location if v.storage_location != null && length(v.storage_location) > 0 }
}
output "tables_table_type" {
  description = "Map of table_type values across all tables, keyed the same as var.tables except keys with no table_type are omitted"
  value       = { for k, v in databricks_table.tables : k => v.table_type if v.table_type != null && length(v.table_type) > 0 }
}
output "tables_view_definition" {
  description = "Map of view_definition values across all tables, keyed the same as var.tables except keys with no view_definition are omitted"
  value       = { for k, v in databricks_table.tables : k => v.view_definition if v.view_definition != null && length(v.view_definition) > 0 }
}

