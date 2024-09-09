# Terraform Azure Modules Basic to Advanced

## Here is a list of Azure resources for which you can create Terraform modules:

001. **azurerm_resource_group**
*Description:* A resource group is a container that holds related Azure resources for an Azure solution. It is a logical grouping for resources in Azure.

002. **azurerm_virtual_network**
*Description:* A virtual network (VNet) is the fundamental building block for your private network in Azure. It allows many types of Azure resources to securely communicate with each other, the internet, and on-premises networks.

003. **azurerm_subnet**
*Description:* A subnet is a range of IP addresses in your virtual network. You can segment your virtual network into subnets for better traffic management and security.

004. **azurerm_network_security_group**
*Description:* Network Security Groups (NSG) contain security rules that allow or deny inbound and outbound network traffic to and from resources in your virtual network.

005. **azurerm_network_security_rule**
*Description:* A security rule within a Network Security Group defines how traffic is allowed or denied for a given NSG. You can create multiple security rules to enforce granular traffic control.

006. **azurerm_public_ip**
*Description:* A public IP address allows Azure resources to communicate with the internet and other Azure resources outside your VNet.

007. **azurerm_virtual_network_peering**
*Description:* Virtual Network Peering connects two Azure virtual networks and allows traffic to flow between them privately.

008. **azurerm_network_interface**
*Description:* A network interface (NIC) is a connection point for a virtual machine (VM) to communicate with a VNet. It contains one or more IP configurations.

009. **azurerm_storage_account**
*Description:* A Storage Account in Azure provides highly available and secure storage for a wide variety of data objects, including blobs, files, queues, and tables.

010. **azurerm_managed_disk**
*Description:* Managed Disks are highly durable, scalable, and secure disks for use with Azure Virtual Machines (VMs). They provide persistent storage for VMs.

011. **azurerm_snapshot**  
*Description:* An Azure Snapshot is a point-in-time backup of a managed disk. You can use snapshots to restore disks, create new VMs, or maintain backups for disaster recovery.

012. **azurerm_backup_protected_vm**  
*Description:* This resource manages a virtual machine that is protected by Azure Backup, offering backup and restore services to maintain data integrity and availability in case of failures.

013. **azurerm_storage_blob**  
*Description:* A Storage Blob is an object storage service that stores unstructured data like text, binary data, images, and videos. It is commonly used for large-scale data storage.

014. **azurerm_storage_container**  
*Description:* Storage Containers organize blobs within a storage account. Containers serve as a logical grouping for blob data, making it easier to manage large datasets.

015. **azurerm_virtual_machine**  
*Description:* Azure Virtual Machines (VMs) provide on-demand computing resources in the cloud. They support a wide range of workloads, including development, testing, applications, and services.

016. **azurerm_virtual_machine_scale_set**  
*Description:* Virtual Machine Scale Sets allow you to deploy and manage a set of identical VMs, providing high availability and autoscaling for large-scale applications.

017. **azurerm_availability_set**  
*Description:* Availability Sets ensure that VMs deployed within them are distributed across multiple physical servers, reducing the risk of outages due to server failures.

018. **azurerm_image**  
*Description:* This resource manages custom VM images that can be used to quickly deploy pre-configured virtual machines in Azure.

019. **azurerm_virtual_machine_extension**  
*Description:* Virtual Machine Extensions are small applications that provide post-deployment configuration and automation tasks, such as installing software or managing configuration.

020. **azurerm_dns_zone**  
*Description:* A DNS Zone represents a portion of the DNS namespace and allows you to manage DNS records for your domain, facilitating resource access through easy-to-remember URLs.

021. **azurerm_dns_a_record**  
*Description:* An A Record maps a domain or subdomain to an IP address, enabling network resources to be accessed using domain names rather than IP addresses.

022. **azurerm_dns_cname_record**  
*Description:* A CNAME Record maps a domain name to another domain name, simplifying the management of multiple DNS names for a single resource.

023. **azurerm_key_vault**  
*Description:* Azure Key Vault helps safeguard cryptographic keys and secrets used by cloud applications and services, providing a secure storage solution for sensitive data.

024. **azurerm_key_vault_access_policy**  
*Description:* This resource defines access policies for Azure Key Vault, determining which users, groups, or applications can access and manage keys, secrets, and certificates.

025. **azurerm_key_vault_key**  
*Description:* Azure Key Vault Keys are used to manage encryption keys for securing data, and they are used in cryptographic operations like key wrapping and decryption.

026. **azurerm_key_vault_secret**  
*Description:* Azure Key Vault Secrets securely store and manage sensitive information such as passwords, connection strings, and API keys.

027. **azurerm_key_vault_certificate**  
*Description:* This resource manages SSL/TLS certificates in Azure Key Vault, allowing easy deployment and renewal of certificates for secure web applications and services.

028. **azurerm_application_gateway**  
*Description:* Azure Application Gateway is a load balancer that manages HTTP(S) traffic, optimizing the delivery of web content and protecting applications through a Web Application Firewall (WAF).

029. **azurerm_lb**  
*Description:* Azure Load Balancer (LB) distributes inbound traffic to multiple servers, providing high availability and scalability for applications and services.

030. **azurerm_lb_rule**  
*Description:* This resource defines how traffic is distributed by an Azure Load Balancer, specifying which ports and IP addresses are used for inbound traffic.

31. **azurerm_lb_backend_address_pool**  
*Description:* The Backend Address Pool defines a pool of backend servers or virtual machines to which Azure Load Balancer routes the incoming traffic, ensuring load distribution among them.

32. **azurerm_lb_probe**  
*Description:* Load Balancer Probes monitor the health of backend instances by sending regular HTTP or TCP requests to determine if the instances are functioning properly.

33. **azurerm_public_ip**  
*Description:* A Public IP address allows resources like virtual machines or load balancers to be accessible from the internet, supporting both static and dynamic IP address configurations.

34. **azurerm_network_interface**  
*Description:* Network Interfaces (NIC) connect virtual machines to a virtual network, providing networking capabilities such as IP addressing and security group association.

35. **azurerm_network_security_group**  
*Description:* A Network Security Group (NSG) contains security rules that allow or deny network traffic to resources connected to Azure virtual networks, offering control over inbound and outbound traffic.

36. **azurerm_network_security_rule**  
*Description:* Network Security Rules define individual inbound and outbound security rules for an NSG, specifying which types of traffic are allowed or denied.

37. **azurerm_route_table**  
*Description:* A Route Table contains rules that determine how network traffic is routed within a virtual network, providing control over routing paths between subnets and external networks.

38. **azurerm_route**  
*Description:* A Route defines a specific route within an Azure Route Table, directing network traffic through particular gateways or network interfaces based on destination IP addresses.

39. **azurerm_nat_gateway**  
*Description:* Azure NAT Gateway simplifies outbound connectivity for virtual networks by providing a fully managed network address translation (NAT) service.

40. **azurerm_virtual_network**  
*Description:* A Virtual Network (VNet) is a logically isolated network in Azure, allowing resources like VMs to communicate securely with each other, the internet, or on-premises networks.

41. **azurerm_subnet**  
*Description:* Subnets divide a virtual network into smaller segments, enabling better organization, security, and management of networked resources within an Azure VNet.

42. **azurerm_virtual_network_peering**  
*Description:* Virtual Network Peering connects two Azure VNets, allowing resources in each network to communicate with each other, either within the same region or across regions.

43. **azurerm_managed_disk**  
*Description:* Managed Disks provide durable and high-performance storage for Azure virtual machines, offering features such as snapshots, encryption, and automatic scaling.

44. **azurerm_snapshot**  
*Description:* Azure Snapshots capture the state of a managed disk at a specific point in time, allowing for quick backup and restore operations or creating new disks from the snapshot.

45. **azurerm_sql_server**  
*Description:* Azure SQL Server hosts one or more Azure SQL Databases, providing management, security, and scaling features for relational database workloads.

46. **azurerm_sql_database**  
*Description:* Azure SQL Database is a fully managed relational database service that supports SQL Server workloads in the cloud, offering features such as automatic patching, scaling, and high availability.

47. **azurerm_sql_firewall_rule**  
*Description:* SQL Firewall Rules control access to an Azure SQL Database or SQL Server by specifying IP ranges that are allowed to connect, providing network security at the database level.

48. **azurerm_postgresql_server**  
*Description:* Azure PostgreSQL Server is a managed database service for PostgreSQL, offering built-in high availability, scaling, automated backups, and security features.

49. **azurerm_postgresql_database**  
*Description:* This resource manages individual PostgreSQL databases hosted on an Azure PostgreSQL Server, supporting PostgreSQL workloads in the cloud.

50. **azurerm_postgresql_firewall_rule**  
*Description:* PostgreSQL Firewall Rules control access to an Azure PostgreSQL Server by defining IP ranges that are allowed to connect, enhancing the security of the database.

51. **azurerm_cosmosdb_account**  
*Description:* Azure Cosmos DB is a globally distributed, multi-model database service that supports document, key-value, graph, and columnar data models with guaranteed low-latency access.

52. **azurerm_cosmosdb_sql_database**  
*Description:* This resource manages an Azure Cosmos DB SQL Database, supporting SQL-based queries over JSON-like document data in a globally distributed environment.

53. **azurerm_kubernetes_cluster**  
*Description:* Azure Kubernetes Service (AKS) is a managed container orchestration service that simplifies the deployment, management, and scaling of containerized applications using Kubernetes.

54. **azurerm_eventhub_namespace**  
*Description:* Event Hub Namespace is a logical container for Event Hubs, which provide scalable event streaming capabilities for applications and services.

55. **azurerm_eventhub**  
*Description:* Azure Event Hubs is a real-time data ingestion service designed for high-throughput data streaming, ideal for handling large-scale data flows such as telemetry and logs.

56. **azurerm_eventhub_consumer_group**  
*Description:* Event Hub Consumer Groups provide a way for multiple applications to independently consume data from the same Event Hub, allowing concurrent processing of event streams.

57. **azurerm_eventhub_authorization_rule**  
*Description:* Event Hub Authorization Rules manage access control for Event Hubs, defining permissions for senders, receivers, and administrators.

58. **azurerm_monitor_diagnostic_setting**  
*Description:* Monitor Diagnostic Settings define where logs and metrics from Azure resources should be sent, enabling integration with monitoring services like Azure Monitor and Log Analytics.

59. **azurerm_monitor_metric_alert**  
*Description:* Metric Alerts monitor the performance of Azure resources based on metrics like CPU usage, and they trigger notifications or actions when specified thresholds are breached.

60. **azurerm_monitor_action_group**  
*Description:* Action Groups define a set of notifications or actions, such as email or SMS alerts, that are triggered when an Azure Monitor alert rule is activated.

61. **azurerm_key_vault**  
*Description:* Azure Key Vault is a cloud service that securely stores and manages sensitive information such as secrets, encryption keys, and certificates used by cloud applications and services.

62. **azurerm_key_vault_secret**  
*Description:* A Key Vault Secret stores sensitive information like passwords, connection strings, or API keys in Azure Key Vault, allowing controlled access to this data by authorized applications.

63. **azurerm_key_vault_key**  
*Description:* Azure Key Vault Keys are cryptographic keys used for encryption, decryption, and key management operations. These keys are stored and managed securely within Azure Key Vault.

64. **azurerm_key_vault_certificate**  
*Description:* Azure Key Vault Certificates store and manage certificates in Azure Key Vault, providing secure access to TLS/SSL certificates used by services like web applications.

65. **azurerm_backup_policy_vm**  
*Description:* A Backup Policy for Virtual Machines defines the schedule and retention rules for backing up Azure VMs, ensuring that regular snapshots and backups are maintained according to compliance requirements.

66. **azurerm_recovery_services_vault**  
*Description:* A Recovery Services Vault is a storage entity in Azure used to store backup data, including VM snapshots and Azure File Share backups, and to manage site recovery operations.

67. **azurerm_recovery_services_protected_vm**  
*Description:* This resource associates an Azure VM with a Recovery Services Vault for backup, ensuring the VM is included in the configured backup policies for data protection and disaster recovery.

68. **azurerm_automation_account**  
*Description:* Azure Automation Account is a container for automation resources such as runbooks, configurations, and assets, enabling the automation of cloud management tasks like patching and backup.

69. **azurerm_automation_runbook**  
*Description:* Automation Runbooks contain PowerShell or Python scripts that automate tasks within Azure, helping to manage resources and processes without manual intervention.

70. **azurerm_automation_schedule**  
*Description:* This resource defines schedules for Azure Automation Runbooks, allowing scripts to run at specific times or intervals, automating routine tasks like system updates or backups.

71. **azurerm_log_analytics_workspace**  
*Description:* Log Analytics Workspace is a central repository for collecting, analyzing, and visualizing logs and metrics from Azure resources and other sources, enabling insights and monitoring capabilities.

72. **azurerm_log_analytics_solution**  
*Description:* Log Analytics Solutions are pre-built collections of queries, dashboards, and alerts that extend the functionality of Log Analytics Workspaces for specific monitoring and management scenarios.

73. **azurerm_storage_account**  
*Description:* Azure Storage Account is a cloud storage service that provides scalable and secure storage options for various data types, including blobs, files, queues, and tables.

74. **azurerm_storage_blob**  
*Description:* Storage Blobs store unstructured data in Azure, such as text or binary data. They are ideal for applications needing high-scale object storage like media files, documents, or backups.

75. **azurerm_storage_container**  
*Description:* A Storage Container is a logical grouping of blobs within a storage account, providing a way to organize and manage blob data in Azure.

76. **azurerm_storage_queue**  
*Description:* Azure Storage Queues provide a messaging system for communicating between applications or services, supporting reliable, asynchronous message delivery for distributed systems.

77. **azurerm_storage_share**  
*Description:* Azure File Share provides fully managed, cloud-based file shares that can be accessed via the SMB protocol, allowing seamless integration with Windows, Linux, and macOS systems.

78. **azurerm_storage_table**  
*Description:* Azure Storage Tables store structured NoSQL data in the cloud, allowing fast access to large amounts of data with key-value pair storage.

79. **azurerm_storage_management_policy**  
*Description:* This resource defines rules for managing and optimizing the lifecycle of data in an Azure Storage Account, automating tasks like transitioning data to cooler storage tiers or deleting old data.

80. **azurerm_cdn_profile**  
*Description:* Azure Content Delivery Network (CDN) Profile manages a collection of CDN endpoints, optimizing the delivery of web content to users by caching content at locations closer to them.

81. **azurerm_cdn_endpoint**  
*Description:* A CDN Endpoint specifies a unique domain and routes for caching and delivering web content, reducing latency by serving content from the closest Azure CDN point of presence.

82. **azurerm_app_service_plan**  
*Description:* An App Service Plan defines the pricing tier, scaling options, and compute resources for hosting web apps, APIs, and mobile apps in Azure App Service.

83. **azurerm_app_service**  
*Description:* Azure App Service is a fully managed platform for building, deploying, and scaling web apps and APIs, providing built-in support for multiple programming languages and frameworks.

84. **azurerm_function_app**  
*Description:* Azure Function Apps host serverless code that runs on-demand, triggered by events like HTTP requests, timers, or messages in a queue, scaling automatically based on workload.

85. **azurerm_logic_app**  
*Description:* Azure Logic Apps enable automation of workflows by connecting various services and applications, allowing integration of systems without writing custom code.

86. **azurerm_signalr_service**  
*Description:* Azure SignalR Service is a fully managed real-time messaging service that enables WebSocket-based communication for real-time applications like chat, gaming, and live dashboards.

87. **azurerm_application_gateway**  
*Description:* Azure Application Gateway is a web traffic load balancer that enables secure routing, load balancing, and SSL termination for applications hosted in Azure.

88. **azurerm_api_management**  
*Description:* Azure API Management is a platform that helps organizations create, manage, and secure APIs, providing features such as API gateways, security policies, and analytics.

89. **azurerm_frontdoor**  
*Description:* Azure Front Door is a scalable and secure entry point for web applications, providing global load balancing, secure traffic routing, and high availability for web services.

90. **azurerm_search_service**  
*Description:* Azure Search Service provides a cloud-based search engine that allows applications to add powerful search capabilities over large datasets, supporting full-text search, filtering, and ranking.

91. **azurerm_cognitive_account**  
*Description:* Azure Cognitive Services accounts provide access to a range of AI and machine learning services, such as vision, speech, language, and decision-making capabilities, through a unified endpoint.

92. **azurerm_cognitive_face_api**  
*Description:* The Face API within Azure Cognitive Services enables face recognition and analysis, including detecting human faces, identifying emotions, and verifying identities.

93. **azurerm_cognitive_text_analytics**  
*Description:* Text Analytics API provides natural language processing capabilities, such as sentiment analysis, key phrase extraction, language detection, and named entity recognition.

94. **azurerm_cognitive_speech**  
*Description:* Speech services within Azure Cognitive Services include speech-to-text, text-to-speech, and speech translation capabilities, enabling voice interactions in applications.

95. **azurerm_cognitive_translation**  
*Description:* The Translation API offers real-time text translation between multiple languages, supporting automatic language detection and integration into applications for global communication.

96. **azurerm_eventhub**  
*Description:* Azure Event Hubs is a fully managed real-time data ingestion service that can handle millions of events per second, enabling the processing and analysis of streaming data.

97. **azurerm_eventhub_namespace**  
*Description:* An Event Hub Namespace is a container for Event Hubs, providing a unique namespace for managing multiple event hubs and routing events to various consumers.

98. **azurerm_eventhub_consumer_group**  
*Description:* A Consumer Group in Azure Event Hubs allows multiple applications or services to read and process events from an Event Hub independently and at their own pace.

99. **azurerm_iot_hub**  
*Description:* Azure IoT Hub is a cloud platform for managing and connecting Internet of Things (IoT) devices, providing bi-directional communication, security, and telemetry data processing.

100. **azurerm_iot_device**  
*Description:* IoT Device resources represent individual devices registered with an IoT Hub, allowing configuration and management of device-specific settings and authentication.

101. **azurerm_iot_device_template**  
*Description:* IoT Device Templates define the model and capabilities of IoT devices, specifying the properties, commands, and telemetry data structures used in IoT solutions.

102. **azurerm_iot_edge_device**  
*Description:* Azure IoT Edge Devices are devices that run Azure IoT Edge runtime, allowing the deployment of cloud workloads and services to the edge for offline or low-latency processing.

103. **azurerm_iot_edge_module**  
*Description:* IoT Edge Modules are containers that run on IoT Edge Devices, providing additional functionality such as data processing, analytics, or connectivity for IoT solutions.

104. **azurerm_servicebus_namespace**  
*Description:* Azure Service Bus Namespace is a container for Service Bus entities, such as queues and topics, providing messaging capabilities for applications and services.

105. **azurerm_servicebus_queue**  
*Description:* A Service Bus Queue enables message-based communication between services, ensuring reliable and asynchronous messaging with features like dead-lettering and message sessions.

106. **azurerm_servicebus_topic**  
*Description:* Service Bus Topics allow publish/subscribe messaging patterns, where messages are sent to a topic and then delivered to one or more subscriptions based on filtering rules.

107. **azurerm_servicebus_subscription**  
*Description:* A Service Bus Subscription is an entity within a topic that receives messages published to the topic, allowing message routing and filtering based on defined criteria.

108. **azurerm_sql_server**  
*Description:* Azure SQL Server is a managed instance of SQL Server in Azure, providing a cloud-based relational database service with high availability, scalability, and security features.

109. **azurerm_sql_database**  
*Description:* Azure SQL Database is a fully managed relational database service that offers high performance, security, and scalability for applications requiring SQL-based data storage.

110. **azurerm_sql_managed_instance**  
*Description:* SQL Managed Instance is a fully managed SQL Server instance in Azure, providing a near 100% compatibility with on-premises SQL Server and additional cloud benefits.

111. **azurerm_sql_firewall_rule**  
*Description:* SQL Firewall Rules define network security settings for Azure SQL Databases or SQL Managed Instances, specifying IP address ranges allowed to access the database.

112. **azurerm_sql_virtual_network_rule**  
*Description:* SQL Virtual Network Rules allow Azure SQL Database or SQL Managed Instances to accept connections from specific virtual networks, enhancing network security.

113. **azurerm_sql_database_firewall_rule**  
*Description:* Database Firewall Rules restrict access to Azure SQL Databases by defining IP address ranges or virtual networks that can connect to the database instance.

114. **azurerm_postgresql_server**  
*Description:* Azure Database for PostgreSQL provides a fully managed PostgreSQL database service with built-in high availability, scaling, and security features.

115. **azurerm_postgresql_database**  
*Description:* PostgreSQL Database in Azure offers managed PostgreSQL databases with capabilities for scaling, backup, and high availability.

116. **azurerm_postgresql_firewall_rule**  
*Description:* PostgreSQL Firewall Rules control access to Azure Database for PostgreSQL by defining allowed IP address ranges or virtual networks.

117. **azurerm_mysql_server**  
*Description:* Azure Database for MySQL provides a managed MySQL database service with features such as automated backups, scaling, and high availability.

118. **azurerm_mysql_database**  
*Description:* MySQL Database in Azure offers managed MySQL databases with automated management features like backup, scaling, and high availability.

119. **azurerm_mysql_firewall_rule**  
*Description:* MySQL Firewall Rules restrict access to Azure Database for MySQL by defining which IP addresses or virtual networks are allowed to connect.

120. **azurerm_cosmosdb_account**  
*Description:* Azure Cosmos DB is a globally distributed, multi-model database service providing low-latency, high-throughput access to data with support for multiple data models and APIs.

121. **azurerm_cosmosdb_sql_container**  
*Description:* Cosmos DB SQL Containers are the equivalent of tables in SQL databases, used to store and query JSON documents within a Cosmos DB SQL API account.

122. **azurerm_cosmosdb_sql_database**  
*Description:* A Cosmos DB SQL Database is a collection of SQL Containers within an Azure Cosmos DB account, used to organize and manage document data.

123. **azurerm_cosmosdb_mongo_collection**  
*Description:* Cosmos DB Mongo Collections are used to store and query BSON documents within a Cosmos DB MongoDB API account, providing MongoDB-compatible data storage.

124. **azurerm_cosmosdb_mongo_database**  
*Description:* A Cosmos DB Mongo Database is a collection of Mongo Collections within an Azure Cosmos DB account, used for organizing and managing MongoDB-compatible data.

125. **azurerm_cosmosdb_cassandra_keyspace**  
*Description:* Cosmos DB Cassandra Keyspaces are used to store and manage data in a Cosmos DB account using the Cassandra API, enabling scalable and distributed NoSQL data storage.

126. **azurerm_cosmosdb_cassandra_table**  
*Description:* Cosmos DB Cassandra Tables store data within a Cassandra Keyspace in Cosmos DB, supporting distributed data storage and querying for Cassandra-compatible workloads.

127. **azurerm_cosmosdb_graph_database**  
*Description:* Cosmos DB Graph Databases use the Gremlin API to store and query graph data, enabling the modeling and analysis of complex relationships between entities.

128. **azurerm_cdn_profile**  
*Description:* Azure CDN Profile manages the settings for one or more CDN endpoints, optimizing the delivery of content by caching it at locations closest to users.

129. **azurerm_cdn_endpoint**  
*Description:* CDN Endpoints specify domains and cache settings for delivering content over Azure CDN, providing reduced latency and improved performance for web applications.

130. **azurerm_frontdoor**  
*Description:* Azure Front Door provides global load balancing and content delivery services, optimizing the performance, availability, and security of applications distributed across regions.

131. **azurerm_frontdoor_firewall_policy**  
*Description:* A Front Door Firewall Policy defines rules and settings for protecting web applications from threats and attacks, using Azure Front Door to enforce security measures at the edge.

132. **azurerm_frontdoor_backend_pool**  
*Description:* Front Door Backend Pools define the backend endpoints for an Azure Front Door service, routing traffic to multiple backend services based on load balancing rules.

133. **azurerm_frontdoor_custom_domain**  
*Description:* Custom Domains for Azure Front Door enable the use of your own domain names for frontend traffic, providing branded and secure access to your applications.

134. **azurerm_frontdoor_health_probe**  
*Description:* Health Probes in Azure Front Door monitor the availability and performance of backend services, ensuring that traffic is routed only to healthy endpoints.

135. **azurerm_frontdoor_routing_rule**  
*Description:* Routing Rules in Azure Front Door determine how requests are routed to backend pools, based on URL paths, domains, and other criteria for efficient traffic management.

136. **azurerm_key_vault**  
*Description:* Azure Key Vault is a cloud service for securely managing keys, secrets, and certificates. It helps safeguard cryptographic keys and secrets used by cloud applications and services.

137. **azurerm_key_vault_secret**  
*Description:* Key Vault Secrets are used to store and manage sensitive information like passwords, connection strings, and other secrets securely in Azure Key Vault.

138. **azurerm_key_vault_key**  
*Description:* Key Vault Keys are cryptographic keys used for encrypting and decrypting data. Azure Key Vault manages these keys securely and provides access control.

139. **azurerm_key_vault_certificate**  
*Description:* Key Vault Certificates manage and store X.509 certificates, including issuing and renewing certificates for secure communications and authentication.

140. **azurerm_resource_group**  
*Description:* Resource Groups are containers for Azure resources, providing a way to manage and organize resources for easier administration, deployment, and access control.

141. **azurerm_policy_definition**  
*Description:* Policy Definitions define rules and conditions for Azure resources to ensure compliance with organizational standards and regulatory requirements.

142. **azurerm_policy_assignment**  
*Description:* Policy Assignments apply policy definitions to Azure resources or resource groups, enforcing compliance and governance policies across your Azure environment.

143. **azurerm_policy_set_definition**  
*Description:* Policy Set Definitions group multiple policy definitions into a single set, allowing you to apply a collection of related policies to resources.

144. **azurerm_policy_set_assignment**  
*Description:* Policy Set Assignments apply a set of policies to Azure resources or resource groups, ensuring compliance with a comprehensive set of rules.

145. **azurerm_management_group**  
*Description:* Management Groups provide a way to manage access, policy, and compliance across multiple Azure subscriptions, allowing for hierarchical organization and governance.

146. **azurerm_subscription**  
*Description:* Subscriptions represent a logical container for Azure resources and services. They enable the management of billing, access control, and resource usage.

147. **azurerm_resource_policy**  
*Description:* Resource Policies define rules and conditions for Azure resources, governing their behavior and compliance with organizational standards.

148. **azurerm_resource_tag**  
*Description:* Resource Tags are metadata applied to Azure resources to categorize and organize them for management, cost tracking, and automation.

149. **azurerm_log_analytics_workspace**  
*Description:* Log Analytics Workspace is a central repository for collecting and analyzing log and performance data from Azure resources, providing insights and diagnostics.

150. **azurerm_monitor_metric_alert**  
*Description:* Metric Alerts in Azure Monitor trigger notifications based on specified metrics thresholds, helping to monitor and respond to performance or availability issues.

151. **azurerm_monitor_activity_log_alert**  
*Description:* Activity Log Alerts monitor and respond to specific events or changes in Azure Activity Logs, enabling proactive management and automation.

152. **azurerm_monitor_autoscale_setting**  
*Description:* Autoscale Settings automatically adjust the number of instances or resources based on defined rules and metrics, ensuring optimal performance and cost efficiency.

153. **azurerm_monitor_diagnostic_setting**  
*Description:* Diagnostic Settings configure the collection and storage of diagnostic data from Azure resources, enabling detailed monitoring and troubleshooting.

154. **azurerm_resource_graph_query**  
*Description:* Resource Graph Queries allow querying across Azure resources to explore and analyze resource configurations, helping in reporting and management.

155. **azurerm_application_insights**  
*Description:* Application Insights is an application performance management service that provides monitoring, diagnostics, and analytics for applications.

156. **azurerm_azure_firewall_policy**  
*Description:* Azure Firewall Policies define and manage rules for Azure Firewall, including network and application rules for protecting your network traffic.

157. **azurerm_azure_firewall**  
*Description:* Azure Firewall is a managed network security service that protects Azure Virtual Network resources by filtering and controlling inbound and outbound traffic.

158. **azurerm_azure_firewall_network_rule_collection**  
*Description:* Network Rule Collections within Azure Firewall define rules for allowing or denying network traffic based on IP addresses, ports, and protocols.

159. **azurerm_azure_firewall_application_rule_collection**  
*Description:* Application Rule Collections define rules for filtering web traffic based on fully qualified domain names (FQDNs) and URL patterns in Azure Firewall.

160. **azurerm_private_endpoint**  
*Description:* Private Endpoints provide secure and private access to Azure services over a private IP address within your virtual network, ensuring traffic stays within the Azure network.

161. **azurerm_private_link_service**  
*Description:* Private Link Services allow Azure resources to connect privately and securely to services hosted in your virtual network, providing access without going through the public internet.

162. **azurerm_private_link_resource**  
*Description:* Private Link Resources are services or resources exposed through Azure Private Link, enabling secure connections from your virtual network.

163. **azurerm_virtual_network_gateway**  
*Description:* Virtual Network Gateways enable secure cross-premises connectivity and VPN access to Azure virtual networks, supporting various VPN and connectivity scenarios.

164. **azurerm_virtual_network_gateway_connection**  
*Description:* Gateway Connections define the settings for connecting a virtual network gateway to another VPN gateway, providing secure site-to-site or point-to-site VPN connections.

165. **azurerm_vpn_gateway**  
*Description:* VPN Gateways enable secure connectivity between Azure Virtual Networks and on-premises networks, supporting various VPN protocols and configurations.

166. **azurerm_vpn_client_configuration**  
*Description:* VPN Client Configurations provide settings and credentials for connecting VPN clients to an Azure VPN Gateway, enabling secure remote access.

167. **azurerm_vpn_client_certificate**  
*Description:* VPN Client Certificates authenticate VPN clients for secure access to Azure Virtual Networks, ensuring only authorized users can connect.

168. **azurerm_vpn_site**  
*Description:* VPN Sites represent on-premises sites connected to Azure through a VPN Gateway, defining site-to-site VPN connections and configurations.

169. **azurerm_route_table**  
*Description:* Route Tables manage routing for network traffic within a virtual network, allowing the configuration of custom routes for traffic flow and network segmentation.

170. **azurerm_route**  
*Description:* Routes define specific paths for network traffic within a virtual network, enabling custom routing rules and path control for efficient traffic management.

171. **azurerm_network_interface**  
*Description:* Network Interfaces are virtual network adapters for Azure virtual machines, enabling connectivity between VMs and other network resources.

172. **azurerm_network_security_group**  
*Description:* Network Security Groups (NSGs) control inbound and outbound traffic to Azure resources based on rules and security policies, ensuring network protection.

173. **azurerm_load_balancer**  
*Description:* Load Balancers distribute network traffic across multiple instances or services to ensure high availability and reliability of applications.

174. **azurerm_application_gateway**  
*Description:* Application Gateway provides application-level load balancing and web application firewall capabilities, optimizing and securing web traffic.

175. **azurerm_public_ip**  
*Description:* Public IP Addresses are used to assign a publicly accessible IP to Azure resources, enabling internet connectivity and external access.

176. **azurerm_dns_zone**  
*Description:* DNS Zones manage domain name records and configurations within Azure DNS, providing DNS resolution and management for domain names.

177. **azurerm_dns_a_record**  
*Description:* A Records map domain names to IPv4 addresses, enabling DNS resolution for specific IP addresses.

178. **azurerm_dns_cname_record**  
*Description:* CNAME Records map domain names to other domain names, providing aliasing and redirection within DNS.

179. **azurerm_dns_mx_record**  
*Description:* MX Records specify mail exchange servers for a domain, directing email traffic to the appropriate mail servers.

180. **azurerm_dns_txt_record**  
*Description:* TXT Records store text information for domain names, used for various purposes such as domain verification and security configurations.

181. **azurerm_dns_srv_record**  
*Description:* SRV Records define the location of services within a domain, specifying the server address and port for specific services.

182. **azurerm_virtual_network**  
*Description:* Virtual Networks provide isolated network environments within Azure, enabling secure communication between Azure resources and on-premises networks.

183. **azurerm_subnet**  
*Description:* Subnets are segments within a virtual network, allowing for the organization and management of network resources and traffic control.

184. **azurerm_network_interface_application_gateway_backend_address_pool**  
*Description:* Backend Address Pools are used to define the set of backend servers or resources for an Application Gateway, routing traffic to the correct endpoints.

185. **azurerm_virtual_network_peering**  
*Description:* Virtual Network Peering enables direct communication between two Azure virtual networks, allowing seamless and private network connectivity.

186. **azurerm_internet_analyzer**  
*Description:* Internet Analyzers provide insights into internet connectivity and performance, helping to monitor and troubleshoot network issues and optimize performance.

187. **azurerm_network_watcher**  
*Description:* Network Watcher provides tools for monitoring and diagnosing network issues, including packet capture, network topology, and flow analysis.

188. **azurerm_network_watcher_flow_log**  
*Description:* Flow Logs capture and store network traffic data for Azure resources, providing insights into traffic patterns and network security.

189. **azurerm_network_watcher_packet_capture**  
*Description:* Packet Capture captures network traffic for analysis and troubleshooting, helping diagnose connectivity and performance issues.

190. **azurerm_network_watcher_topology**  
*Description:* Network Topology visualizes the

 network infrastructure and connectivity between Azure resources, aiding in network design and management.

191. **azurerm_network_watcher_connection_monitor**  
*Description:* Connection Monitor tracks and monitors connectivity between Azure resources and external endpoints, providing insights into network health and performance.

192. **azurerm_network_watcher_network_security_group_flow_log**  
*Description:* Network Security Group (NSG) Flow Logs capture network traffic data for NSGs, providing insights into traffic flow and security rule effectiveness.

193. **azurerm_virtual_network_gateway_connection**  
*Description:* Virtual Network Gateway Connections manage the settings for connecting a virtual network gateway to another VPN gateway, enabling secure site-to-site or point-to-site VPN connections.

194. **azurerm_local_network_gateway**  
*Description:* Local Network Gateways represent on-premises VPN devices or networks in Azure, allowing secure connections between Azure and on-premises networks.

195. **azurerm_application_gateway_waf_policy**  
*Description:* Web Application Firewall (WAF) Policies provide rules for filtering and monitoring web traffic to protect web applications from threats and vulnerabilities.

196. **azurerm_application_gateway_ssl_certificate**  
*Description:* SSL Certificates manage the secure communication between clients and the Application Gateway by encrypting traffic and ensuring data security.

197. **azurerm_application_gateway_http_listener**  
*Description:* HTTP Listeners configure how the Application Gateway listens for incoming web traffic, including protocol and port settings.

198. **azurerm_application_gateway_url_path_map**  
*Description:* URL Path Maps route incoming traffic based on URL paths to different backend pools in the Application Gateway, enabling traffic management and optimization.

199. **azurerm_application_gateway_probe**  
*Description:* Probes monitor the health and availability of backend servers in the Application Gateway, ensuring that traffic is directed only to healthy endpoints.

200. **azurerm_application_gateway_backend_address_pool**  
*Description:* Backend Address Pools define the set of backend servers or resources that receive traffic from the Application Gateway.

201. **azurerm_application_gateway_rewrite_rule_set**  
*Description:* Rewrite Rule Sets define rules for modifying HTTP request and response headers and URLs in the Application Gateway, enabling advanced traffic management.

202. **azurerm_application_gateway_redirect_configuration**  
*Description:* Redirect Configurations specify how the Application Gateway should redirect incoming traffic, including URL and status code settings.

203. **azurerm_application_gateway_url_path_map**  
*Description:* URL Path Maps direct traffic to different backend pools based on URL paths, enabling flexible and efficient traffic routing.

204. **azurerm_application_gateway_listener**  
*Description:* Listeners handle incoming HTTP or HTTPS requests in the Application Gateway, defining the protocols and ports used for communication.

205. **azurerm_application_gateway_connection_draining**  
*Description:* Connection Draining allows the Application Gateway to gracefully handle in-flight requests during backend pool changes or maintenance, ensuring a smooth user experience.

206. **azurerm_application_gateway_private_link_service**  
*Description:* Private Link Services allow secure and private connections to the Application Gateway over a private IP address within your virtual network.

207. **azurerm_application_gateway_custom_error_page**  
*Description:* Custom Error Pages define how errors should be presented to users, allowing customization of error messages and responses.

208. **azurerm_key_vault_access_policy**  
*Description:* Key Vault Access Policies manage permissions for accessing and managing secrets, keys, and certificates in Azure Key Vault.

209. **azurerm_key_vault_managed_hsm**  
*Description:* Managed HSM (Hardware Security Module) provides a fully managed, FIPS 140-2 Level 3 compliant key management service for cryptographic key operations.

210. **azurerm_key_vault_secret_version**  
*Description:* Secret Versions allow for versioning of secrets stored in Azure Key Vault, enabling rollback to previous versions and maintaining history.

211. **azurerm_key_vault_key_version**  
*Description:* Key Versions manage versions of cryptographic keys in Azure Key Vault, providing control over key rotation and usage history.

212. **azurerm_key_vault_certificate_issuer**  
*Description:* Certificate Issuers represent certificate authorities used to issue and manage certificates within Azure Key Vault.

213. **azurerm_log_analytics_solution**  
*Description:* Log Analytics Solutions provide additional monitoring and analytics capabilities by integrating with Log Analytics workspaces, enabling enhanced insights and management.

214. **azurerm_log_analytics_data_export_rule**  
*Description:* Data Export Rules define how data is exported from Log Analytics workspaces to other destinations, such as storage accounts or event hubs.

215. **azurerm_log_analytics_data_source**  
*Description:* Data Sources configure the types of data collected and ingested into Log Analytics workspaces, including metrics, logs, and performance data.

216. **azurerm_application_insights_web_test**  
*Description:* Web Tests monitor the availability and performance of web applications by simulating user interactions and reporting on response times and errors.

217. **azurerm_application_insights_component**  
*Description:* Application Insights Components represent the monitoring and analytics service for applications, providing insights into application performance and usage.

218. **azurerm_application_insights_metric_alert**  
*Description:* Metric Alerts monitor and respond to specific metrics within Application Insights, allowing for automated notifications and actions based on performance thresholds.

219. **azurerm_application_insights_log_alert**  
*Description:* Log Alerts track and respond to specific log events within Application Insights, providing visibility into application behavior and issues.

220. **azurerm_monitor_autoscale_setting**  
*Description:* Autoscale Settings adjust the number of instances or resources based on predefined metrics and rules, ensuring optimal performance and cost efficiency.

221. **azurerm_monitor_action_group**  
*Description:* Action Groups define actions to be taken in response to alerts, including email notifications, SMS messages, and webhook calls.

222. **azurerm_monitor_data_source**  
*Description:* Data Sources configure the types of data collected by Azure Monitor, including performance metrics, logs, and diagnostics data.

223. **azurerm_monitor_scheduled_query_rules_alert**  
*Description:* Scheduled Query Rules Alerts monitor and respond to specific queries against collected data, enabling proactive management based on custom queries.

224. **azurerm_monitor_activity_log_alert**  
*Description:* Activity Log Alerts monitor and respond to specific events or changes in Azure Activity Logs, providing insights into resource activity and changes.

225. **azurerm_monitor_metric_alert**  
*Description:* Metric Alerts track and notify on specific metrics and thresholds, allowing for proactive monitoring and response to performance and availability issues.

226. **azurerm_monitor_diagnostic_setting**  
*Description:* Diagnostic Settings configure the collection and storage of diagnostic data from Azure resources, providing visibility into resource performance and health.

227. **azurerm_monitor_autoscale_setting**  
*Description:* Autoscale Settings define rules for automatically adjusting resource capacity based on metrics and thresholds, optimizing performance and cost.

228. **azurerm_network_watcher**  
*Description:* Network Watcher provides tools for monitoring, diagnosing, and analyzing network issues, including packet capture, network topology, and flow analysis.

229. **azurerm_network_watcher_flow_log**  
*Description:* Flow Logs capture and store network traffic data for Azure resources, allowing for detailed analysis and insights into network traffic patterns.

230. **azurerm_network_watcher_packet_capture**  
*Description:* Packet Capture captures network traffic for analysis and troubleshooting, helping diagnose connectivity and performance issues.

231. **azurerm_network_watcher_topology**  
*Description:* Network Topology visualizes the network infrastructure and connectivity between Azure resources, aiding in network design and management.

232. **azurerm_network_watcher_connection_monitor**  
*Description:* Connection Monitor tracks and monitors connectivity between Azure resources and external endpoints, providing insights into network health and performance.

233. **azurerm_network_watcher_connection_monitor**  
*Description:* Connection Monitor tracks and monitors connectivity between Azure resources and external endpoints, providing insights into network health and performance.

234. **azurerm_network_watcher_security_group_flow_log**  
*Description:* Security Group Flow Logs capture traffic data for Network Security Groups (NSGs), allowing for detailed analysis and understanding of network traffic flow.

235. **azurerm_dns_zone**  
*Description:* DNS Zones manage domain name records and configurations within Azure DNS, providing DNS resolution and management for domain names.

236. **azurerm_dns_a_record**  
*Description:* A Records map domain names to IPv4 addresses, allowing for DNS resolution of specific IP addresses.

237. **azurerm_dns_cname_record**  
*Description:* CNAME Records map domain names to other domain names, providing aliasing and redirection for DNS queries.

238. **azurerm_dns_mx_record**  
*Description:* MX Records specify mail exchange servers for a domain, directing email traffic to the appropriate mail servers.

239. **azurerm_dns_txt_record**  
*Description:* TXT Records store text information for domain names, including domain verification and security configurations.

240. **azurerm_dns_srv_record**  
*Description:* SRV Records define the location of services within a domain, specifying the server address and port for specific services.

241. **azurerm_dedicated_host**  
*Description:* Dedicated Hosts provide physical servers dedicated to your organization, allowing for control over server placement and isolation from other customers.

242. **azurerm_dedicated_host_group**  
*Description:* Dedicated Host Groups organize and manage dedicated hosts, providing control over host placement and resource allocation.

243. **azurerm_dedicated_host_group**  
*Description:* Dedicated Host Groups organize and manage dedicated hosts, providing control over host placement and resource allocation.

244. **azurerm_spring_cloud**  
*Description:* Azure Spring Cloud is a fully managed service for building and running Spring Boot applications, offering scalability and integration with Azure services.

245. **azurerm_spring_cloud_service**  
*Description:* Spring Cloud Services provide management and deployment capabilities for Spring Boot applications,

 including features for scaling and monitoring.

246. **azurerm_spring_cloud_app**  
*Description:* Spring Cloud Apps represent individual applications within Azure Spring Cloud, allowing for management and scaling of Spring Boot applications.

247. **azurerm_spring_cloud_config_server**  
*Description:* Config Servers provide centralized configuration management for Spring Boot applications, enabling consistent configuration across multiple applications.

248. **azurerm_spring_cloud_service_registry**  
*Description:* Service Registries manage the registration and discovery of Spring Boot services, facilitating communication between microservices.

249. **azurerm_spring_cloud_gateway**  
*Description:* Spring Cloud Gateways manage and route traffic between Spring Boot applications, providing load balancing and traffic management features.

250. **azurerm_spring_cloud_cluster**  
*Description:* Spring Cloud Clusters represent groups of Spring Boot applications within Azure Spring Cloud, enabling management and scaling of related applications.

251. **azurerm_spring_cloud_telemetry**  
*Description:* Telemetry provides monitoring and logging capabilities for applications running in Azure Spring Cloud, offering insights into application performance and health.

252. **azurerm_spring_cloud_application**  
*Description:* Spring Cloud Applications represent individual Spring Boot applications deployed to Azure Spring Cloud, including configuration and scaling settings.

253. **azurerm_spring_cloud_service_registry**  
*Description:* Service Registry manages service registration and discovery within Azure Spring Cloud, allowing microservices to find and communicate with each other.

254. **azurerm_dms_project**  
*Description:* Database Migration Service (DMS) Projects help manage database migration tasks, including planning and executing migrations from various database sources to Azure.

255. **azurerm_dms_database**  
*Description:* DMS Databases represent databases within a DMS project, facilitating migration tasks and providing tools for database assessment and migration.

256. **azurerm_dms_task**  
*Description:* DMS Tasks manage the execution of database migration processes, including assessment, migration, and synchronization tasks.

257. **azurerm_dms_database_migration**  
*Description:* Database Migrations handle the migration of data from source databases to target databases in Azure, including schema and data transfer.

258. **azurerm_sql_server_ha_group**  
*Description:* SQL Server High Availability (HA) Groups provide high availability and disaster recovery for SQL Server instances, ensuring continuous data availability.

259. **azurerm_sql_server_ha_group_listener**  
*Description:* HA Group Listeners provide connectivity and failover capabilities for SQL Server HA Groups, managing traffic redirection during failovers.

260. **azurerm_sql_server_firewall_rule**  
*Description:* Firewall Rules manage access control for SQL Server instances, allowing or denying connections based on IP addresses and ranges.

261. **azurerm_sql_server**  
*Description:* SQL Servers provide the management and configuration of SQL Database servers, including security, scaling, and high availability settings.

262. **azurerm_sql_database**  
*Description:* SQL Databases represent individual databases within an Azure SQL Server, offering features like scaling, backups, and performance tuning.

263. **azurerm_sql_managed_instance**  
*Description:* Managed Instances provide a fully managed SQL Server environment with features for high availability, scaling, and security.

264. **azurerm_sql_virtual_network_rule**  
*Description:* Virtual Network Rules configure network access for SQL Databases and Managed Instances, enabling secure connectivity from virtual networks.

265. **azurerm_sql_server_virtual_network_rule**  
*Description:* Virtual Network Rules manage network access to SQL Servers, allowing secure connections from virtual networks and on-premises networks.

266. **azurerm_sql_failover_group**  
*Description:* Failover Groups provide high availability and automatic failover for SQL Databases, ensuring continuous service during maintenance or outages.

267. **azurerm_sql_database_security_alert_policy**  
*Description:* Security Alert Policies configure security alerts for SQL Databases, providing notifications and actions for potential security threats.

268. **azurerm_sql_server_security_alert_policy**  
*Description:* Security Alert Policies manage security alerts for SQL Servers, helping to detect and respond to security threats and vulnerabilities.

269. **azurerm_sql_server_key**  
*Description:* SQL Server Keys manage encryption keys for SQL Server instances, ensuring data security and compliance with encryption requirements.

270. **azurerm_sql_server_azure_ad_admin**  
*Description:* Azure AD Administrators manage access to SQL Servers using Azure Active Directory, providing centralized authentication and authorization.

271. **azurerm_sql_server_advanced_data_security**  
*Description:* Advanced Data Security provides enhanced security features for SQL Servers, including vulnerability assessment and advanced threat protection.

272. **azurerm_sql_server_data_masking_policy**  
*Description:* Data Masking Policies configure dynamic data masking for SQL Server databases, ensuring sensitive data is masked in query results.

273. **azurerm_sql_database_extended_auditing_policy**  
*Description:* Extended Auditing Policies capture and store detailed audit logs for SQL Databases, providing insights into database activity and security.

274. **azurerm_sql_server_database_audit_policy**  
*Description:* Database Audit Policies manage auditing settings for SQL Databases, including the collection and storage of audit logs.

275. **azurerm_sql_server_backup_policy**  
*Description:* Backup Policies configure automated backup schedules and retention for SQL Server databases, ensuring data protection and recovery options.

276. **azurerm_sql_server_migration_assessment**  
*Description:* Migration Assessments evaluate SQL Server instances for compatibility and readiness for migration to Azure SQL Database or Managed Instance.

277. **azurerm_sql_server_migration**  
*Description:* SQL Server Migrations facilitate the migration of SQL Server databases to Azure SQL Database or Managed Instance, including schema and data transfer.

278. **azurerm_sql_server_data_tier**  
*Description:* Data Tiers configure the performance and pricing tiers for SQL Server instances, allowing for cost optimization and performance tuning.

279. **azurerm_sql_server_sql_package**  
*Description:* SQL Packages provide deployment and management of SQL Server database schema and data, including deployment automation and version control.

280. **azurerm_sql_server_database_threat_detection_policy**  
*Description:* Threat Detection Policies configure advanced threat detection for SQL Databases, providing alerts and actions for potential security threats.

281. **azurerm_sql_server_backup**  
*Description:* SQL Server Backups manage backup operations for SQL Server databases, including backup scheduling, retention, and recovery.

282. **azurerm_sql_server_audit**  
*Description:* SQL Server Audits manage audit settings and logs for SQL Server instances, including tracking and reporting on database activity.

283. **azurerm_sql_server_security_policy**  
*Description:* Security Policies configure security settings and controls for SQL Server instances, including access control and encryption settings.

284. **azurerm_sql_server_data_encryption**  
*Description:* Data Encryption manages encryption settings for SQL Server databases, ensuring data protection and compliance with security standards.

285. **azurerm_sql_server_integration**  
*Description:* SQL Server Integration facilitates integration with other Azure services, enabling data movement and transformation between SQL Server and Azure resources.

286. **azurerm_sql_server_database_failover**  
*Description:* Database Failover manages failover operations for SQL Databases, ensuring high availability and business continuity during outages.

287. **azurerm_sql_server_management**  
*Description:* SQL Server Management provides tools and services for managing SQL Server instances, including performance tuning, security, and compliance.

288. **azurerm_sql_server_network_security**  
*Description:* Network Security configures network access and security settings for SQL Server instances, including firewall rules and virtual network access.

289. **azurerm_sql_server_data_export**  
*Description:* Data Export manages the export of SQL Server database data to external storage or other databases, facilitating data migration and analysis.

290. **azurerm_sql_server_azure_ad_authentication**  
*Description:* Azure AD Authentication provides integration with Azure Active Directory for SQL Server authentication, enabling centralized user management and access control.

291. **azurerm_sql_server_audit_log**  
*Description:* Audit Logs capture and store detailed records of SQL Server instance activity, providing insights into database operations and security events.

292. **azurerm_sql_server_advanced_security**  
*Description:* Advanced Security features provide enhanced protection and monitoring for SQL Server instances, including vulnerability assessment and threat detection.

293. **azurerm_sql_server_activity_log**  
*Description:* Activity Logs track and record changes and operations performed on SQL Server instances, providing visibility into database management and administration.

294. **azurerm_sql_server_sql_agent**  
*Description:* SQL Agent manages scheduled tasks and jobs within SQL Server instances, enabling automated database maintenance and operations.

295. **azurerm_sql_server_data_replication**  
*Description:* Data Replication configures and manages data replication between SQL Server databases, ensuring data availability and consistency across locations.

296. **azurerm_sql_server_data_classification**  
*Description:* Data Classification manages the classification and labeling of data within SQL Server databases, helping to enforce data security and compliance policies.

297. **azurerm_sql_server_data_compliance**  
*Description:* Data Compliance ensures that SQL Server instances and databases adhere to regulatory and compliance requirements, including data protection and privacy.

298. **azurerm_sql_server_data_security**  
*Description:* Data Security features provide protection for SQL Server databases, including encryption, access control, and threat detection.

299. **azurerm_sql_server_data_backup**  
*Description:* Data Backup manages backup operations for SQL Server databases, including automated backups, retention policies, and recovery options.

300. **azurerm_sql_server_data_restore**  
*Description:* Data Restore handles the restoration of SQL Server databases from backup, including point-in-time recovery and disaster recovery scenarios.