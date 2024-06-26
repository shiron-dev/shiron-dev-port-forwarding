# Docker SoftEther VPN Client

## How to use

### Setup vpn config

Execute the following commands in the container

```
./vpncmd

Select 1, 2 or 3: 2

Hostname of IP Address of Destination: localhost
```

```
VPN Client> NicCreate VPNNIC
```

```
VPN Client> AccountCreate { CONNECTION NAME }

AccountCreate command - Create New VPN Connection Setting
Destination VPN Server Host Name and Port Number: {VPN HOST}:{ VPN PORT }

Destination Virtual Hub Name: { VPN HUB }

Connecting User Name: { VPN USER NAME }

Used Virtual Network Adapter Name: VPNNIC
```

```
VPN Client> AccountPasswordSet

Name of VPN Connection Setting: { CONNECTION NAME }

Password: ****
Confirm input: ****

Specify standard or radius: standard
```

```
VPN Client> AccountStartUpSet { CONNECTION NAME }
```

and restart container
