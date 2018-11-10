## Linux_NMAP_Parser.sh
  This reads an Nmap grepable output file and displays the results based on IP address, port number, or service. The tool is most helpful when you’ve got several machines

### Command Options

```-i <IP ADDRESS>``` This allows you to show all info associated with an IP Address

```-p <PORT #>``` This allows you to view all info associated with a specific port

```-s <SERVICE NAME>``` This allows you to view all info associated with a specific service

### Command Syntax

```Linux_NMAP_Parser.sh -f report.txt [-i|-p|-s] <USER INPUT>```

### Command Example
```sudo nmap -sS -sU <IP ADDRESS> -oG <OUTPUT FILENAME>```

This allows you to run a scan against all TCP and UDP ports

```grep -v ^# scan.txt > report.txt```

This allows you to remove all the leading '#' from the output and save the edited data to a new file

```Linux_NMAP_Parser.sh -f report.txt > ParsedOutput.txt```

This parses the results and outputs them to a file
 
### Sample Output
```
 Host (Resolved name)
  Port    Status|<Filtered/Open>   Service    Version
 Host (Resolved name)
  Port    Status|<Filtered/Open>   Service    Version
```


