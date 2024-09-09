resource "azurerm_eventgrid_event_subscription" "example" {
  name                = "example-event-subscription"
  eventgrid_topic_id  = azurerm_eventgrid_topic.example.id
  webhook_endpoint {
    url = "https://example.com/eventgrid"
  }
}
