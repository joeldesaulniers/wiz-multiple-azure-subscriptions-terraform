module "wiz_azure_standard_connector" {
  source = "https://wizio-public.s3.amazonaws.com/deployment-v3/azure/terraform/2050/wiz-azure-standard-connector-terraform-module.zip"

  azure_management_group_id           = ""
  azure_subscription_id               = "xxxxxxxx-yyyy-xxxx-yyyy-xxxxxxxxxxxx"

  wiz_app_id                          = "xxxxxxxx-yyyy-xxxx-yyyy-xxxxxxxxxxxx"
  azure_environment                   = "public"

  enable_data_scanning                = true
  enable_serverless_scanning          = true
  enable_openai_scanning              = false
  enable_entra_id_scanning            = true
}

module "wiz_azure_standard_connector2" {
  source = "https://wizio-public.s3.amazonaws.com/deployment-v3/azure/terraform/2050/wiz-azure-standard-connector-terraform-module.zip"

  azure_management_group_id           = ""
  azure_subscription_id               = "xxxxxxxx-yyyy-xxxx-yyyy-xxxxxxxxxxxx"

  wiz_app_id                          = "xxxxxxxx-yyyy-xxxx-yyyy-xxxxxxxxxxxx"
  azure_environment                   = "public"

  enable_data_scanning                = true
  enable_serverless_scanning          = true
  enable_openai_scanning              = false
  enable_entra_id_scanning            = false
  use_existing_service_principal      = true
  wiz_custom_role_name                = "WizCustomRole-sub2"
  wiz_serverless_scanning_role_name   = "WizServerlessScanningRole-sub2"
  wiz_data_scanning_role_name         = "WizDataScanningRole-sub2"
}

output "wiz_module_outputs" {
  value = module.wiz_azure_standard_connector
}

output "wiz_module_outputs2" {
  value = module.wiz_azure_standard_connector2
}

