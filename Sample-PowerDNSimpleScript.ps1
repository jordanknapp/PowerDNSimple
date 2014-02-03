# Set Domain API Token
$DNSimpleToken = "<DNSimple API token goes here>"

# Set Email Address
$DNSimpleEmailAddress = "<DNSimple email address goes here>"



# View the functions in this module
gcm -Module PowerDNSimple

# List DNSimple domains
Get-DSDomain -emailAddress $DNSimpleEmailAddress -domainApiToken $DNSimpleToken

# List DNSimple domain records
Get-DSDomainRecord -domain domain.com -emailAddress $DNSimpleEmailAddress -domainApiToken $DNSimpleToken

# Create a new A record for domain
New-DSDomainRecord -name "test" -recordType "A" -content "127.0.0.1" -domain domain.com -emailAddress $DNSimpleEmailAddress -domainApiToken $DNSimpleToken

# Update domain record (recordID is ID of domain record)
Set-DSDomainRecord -name test -content "127.0.0.1" -ttl 300 -domain domain.com -recordID 111111 -emailAddress $DNSimpleEmailAddress -domainApiToken $DNSimpleToken

# Delete domain record (recordID is ID of domain record)
Remove-DSDomainRecord -domain domain.com -recordID 111111 -emailAddress $DNSimpleEmailAddress -domainApiToken $DNSimpleToken

# List DNSimple SandBox domains
#Get-DSDomain -emailAddress $DNSimpleEmailAddress -domainApiToken $DNSimpleToken -SandBox