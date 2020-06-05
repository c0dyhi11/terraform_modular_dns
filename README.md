# Modular Terraform Plan for DNS
The goal here is to create a plan that could be useful for a lot of folks to use with the bare metal cloud Packet. The issue is that a lot of automation needs valid DNS. Packet doesn't have a DNS service to accommodate this. So we're stuck having to use third party DNS providers such as AWS, CloudFlare, NS1, DNS Simple, etc... What I'd like to do is create a single module for "DNS" and allow the user to provide the credentials for only one of these services and choose to enable that service only. And all of the other modules will be ***skipped*** or ***disabled***. I was hopeful that the new terraform 0.13beta would let me do this by allowing me to do module counts. But I get tripped up on the provider at that point. 

My variables file looks like this:
```terraform
packet_auth_token="7321d8f5-43f7-4e8a-8cbc-37c9610f851d"  
packet_project_id="9b2b88c7-bdb8-4118-88a5-3936b367ae10"  
dns_provider_cloudflare=true  
cloudflare_email="foo@bar.com"  
cloudflare_api_key="5ec9ab37-2d2c-475b-956b-4e6a25c7d181"  
cloudflare_zone_id="9f12dfce-6d7d-4e73-a35c-22401fde759e"
```
