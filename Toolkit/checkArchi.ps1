If ($Is64BitProcess) { [System.Windows.MessageBox]::Show("C:\Program Files\Test\")
Write-Host "This is 32Bit OS" } 

Else { [System.Windows.MessageBox]::Show("C:\Program Files (x86)\Test\")
Write-Host "This is 64Bit OS" }


