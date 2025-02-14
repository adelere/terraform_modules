data "azurerm_billing_mpa_account_scope" "example" {
  billing_account_name = var.billing_account_name
  customer_name        = var.customer_name
}

resource "azurerm_subscription" "example" {
  subscription_name = var.subscription_name
  billing_scope_id  = data.azurerm_billing_mpa_account_scope.example.id
}