# TailVault

TailVault is a secure and lightweight container designed for Unraid 7 and above, enabling friends to share a dedicated backup location over Tailscale. TailVault provides an SFTP destination, allowing a friend to back up their data directly to your server both securely and privately.

## Features
- **Friend-Specific Backup Access**  
  TailVault restricts access so your friend can only back up to the designated directory on your server. They cannot access any other part of your system.

- **Tailscale Integration**  
  Backups are conducted over Tailscale, so Tailscale must be installed in this container using Unraid’s built-in Tailscale Docker integration. This ensures end-to-end encryption and secure networking without the need for additional VPNs or firewall changes.

## Use Cases
1. **Backups Using Backup Software**  
   Configure backup software (e.g., Duplicati) on your friend’s server to send backups over Tailscale to TailVault. These backups are encrypted before being sent, ensuring complete privacy.

2. **Rsync Jobs**  
   Use TailVault as a destination for rsync jobs or other backup tools from another Unraid server or device in the same Tailnet.

## How to Configure the Template
1. **Enable Tailscale**  
   Enable Tailscale in the container and connect it to your Tailnet.  
   In the Tailscale admin console, share the container with your friend to whom you want to allow to back up to your server.

2. **Set TailVault Backups Directory**  
   Configure this to the location where your friend will store their backups. This directory should be empty and not contain any existing data.

3. **Set User Credentials**  
   - **`SFTP_USER`**: Choose a username to share with your friend.  
   - **`SFTP_PASS`**: Set a password to share with your friend.

## Notes
If using backup software on the sending server (e.g., Duplicati), it is recommended to set the networking type of the sending container to `host`. This helps ensure a direct connection over Tailscale and reduces the likelihood of relying on a relay (DERP) server. TailVault itself can remain in bridge mode.
