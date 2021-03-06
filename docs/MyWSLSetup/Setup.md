# Setting up WSL 2 with Ubuntu and zsh

1. ````powershell
   dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
   ```
   
2. ```powershell
   dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
   restart
   ```
   
3. Restart

4. ```bash
   wsl --set-default-version 2
   ```
   
5. If error during 4. then download **https://aka.ms/wsl2kernel** and repeat 4.

6. Double-check version with `wsl -l -v`.

7. Download and install Ubuntu package ([here](https://www.microsoft.com/store/apps/9n6svws3rx71))

8. ```bash
   sudo apt install ubuntu-wsl
   # node
   sudo apt-get update
   sudo apt-get upgrade
   
   sudo apt-get install build-essential
   curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash
   nvm install stable
   nvm use stable
   ```

9. zsh setup

   - ```bash
     sudo apt update
     sudo apt install git zsh -y
     sh -c "$(wget --no-check-certificate https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
     ```

   - http://kevinprogramming.com/using-zsh-in-windows-terminal/

10. PowerShell setup

    - ```bash
      # Update the list of packages 
      sudo apt-get update 
      # Install pre-requisite packages. 
      sudo apt-get install -y wget apt-transport-https software-properties-common 
      # Download the Microsoft repository GPG keys 
      wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb 
      # Register the Microsoft repository GPG keys 
      sudo dpkg -i packages-microsoft-prod.deb 
      # Update the list of packages after we added [packages.microsoft.com(http://packages.microsoft.com) 
      sudo apt-get update 
      # Install PowerShell
      sudo apt-get install -y powershell
      # Start PowerShell
      pwsh
      ```

11. Python setup

   - ```bash
     sudo apt update && upgrade
     sudo apt install python3 python3-pip ipython3
     ```

     

