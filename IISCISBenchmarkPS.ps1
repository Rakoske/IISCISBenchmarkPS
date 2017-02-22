﻿#
# IIS 10 CIS Becnchmark
#
# 1 Basic Configurations	10
#	1.1 Ensure web content is on non-system partition (Scored)
#   Audit
Get-Website

#   Remediation

#	1.2 Ensure 'host headers' are on all sites (Scored)
#   Audit
Get-Website
#   Remediation

#	1.3 Ensure 'directory browsing' is set to disabled (Scored)
#	1.4 Ensure 'application pool identity' is configured for all application pools (Scored)
#	1.5 Ensure 'unique application pools' is set for sites (Scored)
#	1.6 Ensure 'application pool identity' is configured for anonymous user identity (Scored)
#	2 Configure Authentication and Authorization
#	2.1 Ensure 'global authorization rule' is set to restrict access (Not Scored)
#	2.2 Ensure access to sensitive site features is restricted to authenticated principals only (Not Scored)
#	2.3 Ensure 'forms authentication' require SSL (Scored)
#	2.4 Ensure 'forms authentication' is set to use cookies (Scored)
#	2.5 Ensure 'cookie protection mode' is configured for forms authentication (Scored)
#	2.6 Ensure transport layer security for 'basic authentication' is configured (Scored)
#	2.7 Ensure 'passwordFormat' is not set to clear (Scored)
#	2.8 Ensure 'credentials' are not stored in configuration files (Scored)
# 3 ASP.NET Configuration Recommendations
#	3.1 Ensure 'deployment method retail' is set (Scored)
#	3.2 Ensure 'debug' is turned off (Scored)
#	3.3 Ensure custom error messages are not off (Scored)
#	3.4 Ensure IIS HTTP detailed errors are hidden from displaying remotely (Scored)
#	3.5 Ensure ASP.NET stack tracing is not enabled (Scored)
#	3.6 Ensure 'httpcookie' mode is configured for session state (Scored)
#	3.7 Ensure 'cookies' are set with HttpOnly attribute (Scored)
#	3.8 Ensure 'MachineKey validation method - .Net 3.5' is configured (Scored)
#	3.9 Ensure 'MachineKey validation method - .Net 4.5' is configured (Scored)
#	3.10 Ensure global .NET trust level is configured (Scored)
#	3.11 Ensure 'encryption providers' are locked down (Scored)
# 4 Request Filtering and Other Restriction Modules
#	4.1 Ensure 'maxAllowedContentLength' is configured (Not Scored)
#	4.2 Ensure 'maxURL request filter' is configured (Scored)
#	4.3 Ensure 'MaxQueryString request filter' is configured (Scored)
#	4.4 Ensure non-ASCII characters in URLs are not allowed (Scored)
#	4.5 Ensure Double-Encoded requests will be rejected (Scored)
#	4.6 Ensure 'HTTP Trace Method' is disabled (Scored)
#	4.7 Ensure Unlisted File Extensions are not allowed (Scored)
#	4.8 Ensure Handler is not granted Write and Script/Execute (Scored)
#	4.9 Ensure 'notListedIsapisAllowed' is set to false (Scored)
#	4.10 Ensure 'notListedCgisAllowed' is set to false (Scored)
#	4.11 Ensure 'Dynamic IP Address Restrictions' is enabled (Not Scored)
# 5 IIS Logging Recommendations
#	5.1 Ensure Default IIS web log location is moved (Scored)
#	5.2 Ensure Advanced IIS logging is enabled (Scored)
#	5.3 Ensure 'ETW Logging' is enabled (Not Scored)
# 6 FTP Requests
#	6.1 Ensure FTP requests are encrypted (Scored)
#	6.2 Ensure FTP Logon attempt restrictions is enabled (Not Scored)
# 7 Transport Encryption
#	7.1 Ensure HSTS Header is set (Not Scored)
#	7.2 Ensure SSLv2 is disabled (Scored)
#	7.3 Ensure SSLv3 is disabled (Scored)
#	7.4 Ensure TLS 1.0 is disabled (Not Scored)
#	7.5 Ensure TLS 1.1 is enabled (Not Scored)
#	7.6 Ensure TLS 1.2 is enabled (Scored)
#	7.7 Ensure NULL Cipher Suites is disabled (Scored)
#	7.8 Ensure DES Cipher Suites is disabled (Scored)
#	7.9 Ensure RC2 Cipher Suites is disabled (Scored)
#	7.10 Ensure RC4 Cipher Suites is disabled (Scored)
#	7.11 Ensure Triple DES Cipher Suite is configured (Not Scored)
#	7.12 Ensure AES 128/128 Cipher Suite is configured (Not Scored)
#	7.13 Ensure AES 256/256 Cipher Suite is enabled (Scored)
#	7.14 Ensure TLS Cipher Suite ordering is configured (Scored)
#   List available cyphers
(get-item HKLM:\SYSTEM\CurrentControlSet\Control\Cryptography\Configuration\Local\SSL\00010002\).getvalue('Functions')
#or
Get-TlsCipherSuite | Format-Table -Property Name

#	Test Data