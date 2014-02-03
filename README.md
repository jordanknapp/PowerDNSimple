PowerDNSimple
=============

PowerShell module for working with DNSimple API.

Usage
======

#####Set Domain API Token
$DNSimpleToken = "DNSimple API token goes here"

#####Set Email address
$DNSimpleEmailAddress = "DNSimple email address goes here"

#####View the functions in this module
gcm -Module PowerDNSimple

#####List DNSimple domains
Get-DSDomain -emailAddress $DNSimpleEmailAddress -domainApiToken $DNSimpleToken

#####List DNSimple domain records
Get-DSDomainRecord -domain domain.com -emailAddress $DNSimpleEmailAddress -domainApiToken $DNSimpleToken

#####Create a new A record for domain
New-DSDomainRecord -name "test" -recordType "A" -content "127.0.0.1" -domain domain.com -emailAddress $DNSimpleEmailAddress -domainApiToken $DNSimpleToken

#####Update domain record (recordID is ID of domain record)
Set-DSDomainRecord -name test -content "127.0.0.1" -ttl 300 -domain domain.com -recordID 111111 -emailAddress $DNSimpleEmailAddress -domainApiToken $DNSimpleToken

#####Delete domain record (recordID is ID of domain record)
Remove-SMPLDomainRecord -domain domain.com -recordID 111111 -emailAddress $DNSimpleEmailAddress -domainApiToken $DNSimpleToken

#####Using the DNSimple Sandbox
Want to test your scripts? Set up an account at https://sandbox.dnsimple.com. Using your sandbox API token and email address add the -SandBox switch to any of the above functions. 

Get-DSDomain -emailAddress $DNSimpleEmailAddress -domainApiToken $DNSimpleToken -SandBox
