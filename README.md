[dnscat2](https://github.com/iagox86/dnscat2) is a DNS covert channel tool by [@iagox86 (Ron Bowes)](https://blog.skullsecurity.org/) which is used to transfer data over DNS requests.

This is a work in progress powershell version of dnscat2.  Support for the command protocol will be added soon.

To use this script, you'll need the ruby [dnscat2 server](https://github.com/iagox86/dnscat2).

###dnscat2.ps1
    -Domain <domain>          The domain of the dnscat2 server
    -DNSServer <host>         The DNS Server [default: Windows default]
    -DNSPort -p <port>        The DNS port [default: 53]
    -Exec -e <process>        Execute the given process
    -Help                     Display this help message



Frank:
Slight addon; use GeneratePayload.ps1 to create a PowerShell command which will drop the shell.
I've used code from PowerSploit for the encoded-command.
This could also be used with: dns_txt_query_exec.rb from Metasploit.
- [+] Step 1: Generate dnscat2 Powershell payload (GeneratePayload.ps1)
- [+] Step 2: Generate a windows/exec payload. Use the previous payload as its command.
- [+] Step 3: Serve this payload as described by corelanc0d3r in dns_txt_query_exec.rb
- [+] Step 4: Generate dns_txt_query_exec.rb and deliver it to the target.
- [+] Step 5: Have dnscat2 running to accept the shell.  

The above is still a bit to complex for a point and click attack. This could be streamlined a lot better.
