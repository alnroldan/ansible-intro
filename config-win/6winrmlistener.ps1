$c = New-SelfSignedCertificate -DnsName "10.0.0.5" -CertStoreLocation cert:\LocalMachine\My
winrm create winrm/config/Listener?Address=*+Transport=HTTPS "@{Hostname=`"10.0.0.5`";CertificateThumbprint=`"$($c.ThumbPrint)`"}"

winrm enumerate winrm/config/Listener