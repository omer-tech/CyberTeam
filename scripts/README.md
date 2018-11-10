# Team Scripts:

## Linux_NMAP_Parser.sh : 
  This reads an Nmap grepable output file and displays the results based on IP address, port number, or service. The tool is most helpful when you’ve got several machines

### Options

```i```
```p```
```s```

### Command Example
```sudo nmap -sS -sU <IP ADDRESS> -oG <OUTPUT FILENAME>```
This allows you to run a scan against all TCP and UDP ports

```grep -v ^# scan.txt > report.txt```
This allows you to remove all the leading '#' from the output and save the edited data to a new file

```Linux_NMAP_Parser.sh -f report.txt > ParsedOutput.txt```
This parses the results and outputs them to a file
 
### OUTPUT SAMPLE:
```
 Host (Resolved name)
  Port    Status|<Filtered/Open>   Service    Version
 Host (Resolved name)
  Port    Status|<Filtered/Open>   Service    Version
```


## Windows Scripts
