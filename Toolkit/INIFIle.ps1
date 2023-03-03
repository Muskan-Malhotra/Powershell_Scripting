$iniContent = Get-Content -Path "C:\Users\HP\OneDrive\Desktop\VMClient.ini"

(Get-Content "C:\Users\HP\OneDrive\Desktop\VMClient.ini")| ForEach-Object { $_ -replace "IndigoTcpPort=8100","IndigoTcpPort=8000" } | Set-Content  "C:\Users\HP\OneDrive\Desktop\VMClient.ini"



Write-Host $iniContent



#| ForEach-Object{$_.Replace('8100','8000')} 


#for ( $index = 0; $index -lt $data.count; $index++)
#{
 #   "Item: [{0}]" -f $data[$index]
#}

#Write-Host $ContentArr.GetType()