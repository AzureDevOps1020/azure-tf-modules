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
31. azurerm_lb_backend_address_pool
32. azurerm_lb_nat_pool
33. azurerm_redis_cache
34. azurerm_redis_firewall_rule
35. azurerm_postgresql_server
36. azurerm_postgresql_database
37. azurerm_postgresql_firewall_rule
38. azurerm_mariadb_server
39. azurerm_mariadb_database
40. azurerm_mariadb_firewall_rule
41. azurerm_mysql_server
42. azurerm_mysql_database
43. azurerm_mysql_firewall_rule
44. azurerm_sql_server
45. azurerm_sql_database
46. azurerm_sql_firewall_rule
47. azurerm_cosmosdb_account
48. azurerm_cosmosdb_sql_database
49. azurerm_cosmosdb_sql_container
50. azurerm_kubernetes_cluster
51. azurerm_container_registry
52. azurerm_container_group
53. azurerm_container_instance
54. azurerm_eventhub_namespace
55. azurerm_eventhub
56. azurerm_eventhub_consumer_group
57. azurerm_eventhub_authorization_rule
58. azurerm_monitor_metric_alert
59. azurerm_monitor_log_profile
60. azurerm_monitor_action_group
61. azurerm_monitor_diagnostic_setting
62. azurerm_api_management
63. azurerm_api_management_api
64. azurerm_api_management_api_operation
65. azurerm_function_app
66. azurerm_app_service
67. azurerm_app_service_plan
68. azurerm_logic_app_workflow
69. azurerm_logic_app_trigger_http_request
70. azurerm_logic_app_action_http
71. azurerm_application_insights
72. azurerm_application_insights_web_test
73. azurerm_log_analytics_workspace
74. azurerm_automation_account
75. azurerm_automation_runbook
76. azurerm_automation_schedule
77. azurerm_eventgrid_topic
78. azurerm_eventgrid_event_subscription
79. azurerm_iothub
80. azurerm_iothub_consumer_group
81. azurerm_iothub_dps
82. azurerm_servicebus_namespace
83. azurerm_servicebus_queue
84. azurerm_servicebus_topic
85. azurerm_servicebus_subscription
86. azurerm_firewall
87. azurerm_firewall_policy
88. azurerm_firewall_rule_collection_group
89. azurerm_firewall_application_rule_collection
90. azurerm_firewall_network_rule_collection
91. azurerm_firewall_nat_rule_collection
92. azurerm_sentinel_alert_rule
93. azurerm_data_factory
94. azurerm_data_factory_pipeline
95. azurerm_data_factory_dataset
96. azurerm_synapse_workspace
97. azurerm_synapse_sql_pool
98. azurerm_spring_cloud_service
99. azurerm_spring_cloud_app
100. azurerm_bastion_host
101. azurerm_application_security_group
102. azurerm_managed_application
103. azurerm_shared_image_gallery
104. azurerm_shared_image
105. azurerm_shared_image_version
106. azurerm_availability_zone
107. azurerm_express_route_circuit
108. azurerm_express_route_gateway
109. azurerm_express_route_circuit_authorization
110. azurerm_express_route_connection
111. azurerm_nat_gateway
112. azurerm_application_insights_component
113. azurerm_automation_variable_bool
114. azurerm_automation_variable_datetime
115. azurerm_automation_variable_int
116. azurerm_automation_variable_string
117. azurerm_automation_module
118. azurerm_batch_account
119. azurerm_batch_pool
120. azurerm_batch_certificate
121. azurerm_batch_application
122. azurerm_batch_job
123. azurerm_batch_job_schedule
124. azurerm_batch_compute_node
125. azurerm_cdn_endpoint
126. azurerm_cdn_profile
127. azurerm_cognitive_account
128. azurerm_disk_encryption_set
129. azurerm_dedicated_host_group
130. azurerm_dedicated_host
131. azurerm_eventhub_namespace_authorization_rule
132. azurerm_eventhub_namespace_disaster_recovery_config
133. azurerm_function_app_slot
134. azurerm_hdinsight_cluster
135. azurerm_hdinsight_hadoop_cluster
136. azurerm_hdinsight_hbase_cluster
137. azurerm_hdinsight_kafka_cluster
138. azurerm_hdinsight_storm_cluster
139. azurerm_hdinsight_interactive_query_cluster
140. azurerm_hpc_cache
141. azurerm_hpc_cache_nfs_target
142. azurerm_image_version
143. azurerm_integration_service_environment
144. azurerm_integration_account
145. azurerm_iothub_route
146. azurerm_iothub_shared_access_policy
147. azurerm_iothub_dps_certificate
148. azurerm_iothub_dps_shared_access_policy
149. azurerm_kubernetes_cluster_node_pool
150. azurerm_lb_nat_rule
151. azurerm_lb_probe
152. azurerm_log_analytics_solution
153. azurerm_log_analytics_workspace_data_source_windows_event
154. azurerm_log_analytics_workspace_data_source_windows_performance_counter
155. azurerm_log_analytics_workspace_data_source_linux_performance_counter
156. azurerm_log_analytics_workspace_data_source_syslog
157. azurerm_log_analytics_workspace_data_source_custom_log
158. azurerm_management_group
159. azurerm_mssql_database
160. azurerm_mssql_virtual_machine
161. azurerm_mssql_elasticpool
162. azurerm_mssql_firewall_rule
163. azurerm_mssql_server
164. azurerm_nat_gateway_public_ip_association
165. azurerm_nat_gateway_public_ip_prefix_association
166. azurerm_network_watcher
167. azurerm_network_watcher_flow_log
168. azurerm_proximity_placement_group
169. azurerm_private_dns_zone
170. azurerm_private_dns_a_record
171. azurerm_private_dns_aaaa_record
172. azurerm_private_dns_cname_record
173. azurerm_private_dns_ptr_record
174. azurerm_private_dns_srv_record
175. azurerm_private_dns_txt_record
176. azurerm_private_endpoint
177. azurerm_private_link_service
178. azurerm_recovery_services_vault
179. azurerm_recovery_services_protected_vm
180. azurerm_relay_namespace
181. azurerm_relay_hybrid_connection
182. azurerm_route
183. azurerm_route_table
184. azurerm_signalr_service
185. azurerm_snapshot_sas_url
186. azurerm_spring_cloud_cert
187. azurerm_sql_virtual_network_rule
188. azurerm_stream_analytics_function_javascript_udf
189. azurerm_stream_analytics_job
190. azurerm_stream_analytics_output_blob
191. azurerm_stream_analytics_output_eventhub
192. azurerm_stream_analytics_output_mssql
193. azurerm_stream_analytics_output_servicebus_queue
194. azurerm_stream_analytics_output_servicebus_topic
195. azurerm_stream_analytics_reference_input_blob
196. azurerm_stream_analytics_stream_input_blob
197. azurerm_stream_analytics_stream_input_eventhub
198. azurerm_stream_analytics_stream_input_iothub
199. azurerm_synapse_sql_database_vulnerability_assessment_rule_baseline
200. azurerm_synapse_sql_database_extended_auditing_policy
201. azurerm_synapse_workspace_firewall_rule
202. azurerm_synapse_integration_runtime_azure
203. azurerm_synapse_integration_runtime_self_hosted
204. azurerm_synapse_private_link_hub
205. azurerm_template_deployment
206. azurerm_management_lock
207. azurerm_marketplace_agreement
208. azurerm_media_services_account
209. azurerm_media_asset
210. azurerm_media_streaming_locator
211. azurerm_media_streaming_policy
212. azurerm_media_streaming_endpoint
213. azurerm_media_transform
214. azurerm_media_live_event
215. azurerm_media_live_output
216. azurerm_media_job
217. azurerm_managed_identity
218. azurerm_managed_identity_user_assigned_identity
219. azurerm_monitor_activity_log_alert
220. azurerm_monitor_autoscale_setting
221. azurerm_monitor_scheduled_query_rules_alert
222. azurerm_monitor_action_rule_action_group
223. azurerm_monitor_action_rule_suppression
224. azurerm_network_packet_capture
225. azurerm_network_connection_monitor
226. azurerm_application_gateway_waf_policy
227. azurerm_service_fabric_cluster
228. azurerm_service_fabric_managed_cluster
229. azurerm_service_fabric_managed_node_type
230. azurerm_signalr_service_custom_certificate
231. azurerm_search_service
232. azurerm_search_shared_private_link_service
233. azurerm_spring_cloud_active_deployment
234. azurerm_spring_cloud_custom_domain
235. azurerm_spring_cloud_ip_filter_rule
236. azurerm_storage_share
237. azurerm_storage_share_directory
238. azurerm_storage_sync
239. azurerm_storage_sync_group
240. azurerm_storage_sync_cloud_endpoint
241. azurerm_storage_sync_server_endpoint
242. azurerm_storage_account_customer_managed_key
243. azurerm_storage_management_policy
244. azurerm_storage_account_network_rules
245. azurerm_synapse_private_link
246. azurerm_traffic_manager_profile
247. azurerm_traffic_manager_endpoint
248. azurerm_virtual_hub
249. azurerm_virtual_hub_connection
250. azurerm_virtual_hub_route_table
251. azurerm_virtual_hub_security_partner_provider
252. azurerm_virtual_wan
253. azurerm_vpn_gateway
254. azurerm_vpn_connection
255. azurerm_vpn_site
256. azurerm_billing_budget_subscription
257. azurerm_billing_budget_resource_group
258. azurerm_machine_learning_workspace
259. azurerm_machine_learning_compute
260. azurerm_machine_learning_inference_cluster
261. azurerm_machine_learning_synapse_integration
262. azurerm_nat_rule
263. azurerm_policy_assignment
264. azurerm_policy_definition
265. azurerm_policy_set_definition
266. azurerm_role_assignment
267. azurerm_role_definition
268. azurerm_subscription
269. azurerm_subscription_policy_assignment
270. azurerm_data_protection_backup_instance
271. azurerm_data_protection_backup_policy
272. azurerm_data_protection_vault
273. azurerm_database_migration_service
274. azurerm_database_migration_project
275. azurerm_database_migration_task
276. azurerm_digital_twins_instance
277. azurerm_digital_twins_endpoint_eventhub
278. azurerm_digital_twins_endpoint_servicebus
279. azurerm_digital_twins_endpoint_eventgrid
280. azurerm_frontdoor
281. azurerm_frontdoor_custom_https_configuration
282. azurerm_frontdoor_firewall_policy
283. azurerm_lb_rule
284. azurerm_managed_disk_encryption_set
285. azurerm_media_service_account
286. azurerm_maintenance_assignment_dedicated_host
287. azurerm_maintenance_configuration
288. azurerm_monitor_metric_alert
289. azurerm_monitor_private_link_scope
290. azurerm_monitor_scheduled_query_rules_alert
291. azurerm_automation_variable
292. azurerm_container_group_diagnostics
293. azurerm_container_registry_scope_map
294. azurerm_container_registry_token
295. azurerm_container_registry_webhook
296. azurerm_cosmosdb_sql_stored_procedure
297. azurerm_cosmosdb_sql_trigger
298. azurerm_cosmosdb_sql_user_defined_function
299. azurerm_cognitive_services_account
300. azurerm_sentinel_alert_rule_scheduled