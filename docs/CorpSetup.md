# Pitfalls during WSL setup in corp. env.

- Get apt-get to work (DNS issues):

  ```bash
  echo "[network]" | sudo tee /etc/wsl.conf
  echo "generateResolvConf = false" | sudo tee -a /etc/wsl.conf
  sudo rm -Rf /etc/resolv.conf
  echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf 
  sudo chattr +i /etc/resolv.conf
  ```

- Get curl to work (SSL issues)

  - #getting curl to work

    ```powershell
    #find root cert 
    (Get-ChildItem Cert:\ -Recurse).where{$_.subject -like '*CN=PayPal*Root CA*'}
    #replace name accordingly below
    
    $InsertLineBreaks=1
    $cert = get-item Cert:\CurrentUser\Root\03966347C730B0D72C9BC5167BDC59980C53344A
    $oPem=new-object System.Text.StringBuilder
    $oPem.AppendLine("-----BEGIN CERTIFICATE-----")
    $oPem.AppendLine([System.Convert]::ToBase64String($cert.RawData,$InsertLineBreaks))
    $oPem.AppendLine("-----END CERTIFICATE-----")
    $oPem.ToString() | out-file .\PPRootCert.crt
    ((Get-Content .\PPRootCert.crt) -join "`n") + "`n" | Set-Content -NoNewline .\PPRootCert.crt
    ```

  - ```bash
    sudo apt-get install ca-certificates
    sudo cp PPCert.crt /usr/local/share/ca-certificates
    sudo apt-get install ca-certificates
    sudo update-ca-certificates
    ```

    

