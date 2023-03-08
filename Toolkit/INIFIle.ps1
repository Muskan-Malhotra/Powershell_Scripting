$GetiniContent = Get-Content "C:\Users\HP\OneDrive\Desktop\VMClient.ini"

($iniContent) | ForEach-Object { $_ -replace "IndigoTcpPort=8100","IndigoTcpPort=8000" } | 
Set-Content  "C:\Users\HP\OneDrive\Desktop\VMClient.ini"



Write-Host $iniContent

#Write-Host $iniContent[3]


if ($iniContent[3].Contains("MUOptIn=0")){
    ($iniContent) | ForEach-Object{$_ -replace "MUOptIn=0","MUOptIn=1"} | 
    Set-Content "C:\Users\HP\OneDrive\Desktop\VMClient.ini"
}

Write-Host $iniContent












#$ContentArr = $iniContent[3] -split " "

#Write-Host $ContentArr

#if ($iniContent.Contains("0")){
  #  $path | ForEach-Object{$_ -replace "MUOptIn=0","MUOptIn=1"} | Set-Content $path
#}



#| ForEach-Object{$_.Replace('8100','8000')} 


#for ( $index = 0; $index -lt $data.count; $index++)
#{
 #   "Item: [{0}]" -f $data[$index]
#}

#Write-Host $ContentArr.GetType()