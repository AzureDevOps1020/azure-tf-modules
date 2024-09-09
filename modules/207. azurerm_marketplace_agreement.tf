resource "azurerm_marketplace_agreement" "example" {
  name                = "example-marketplace-agreement"
  publisher_name       = "publisher-name"
  offer_name           = "offer-name"
  plan_name            = "plan-name"
  agreement_id         = "agreement-id"
}
