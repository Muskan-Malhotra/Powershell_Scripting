#Get-WmiObject win64_product -ComputerName HP | where{$_.Name -like "Microsoft Office"} | select Name,Version

reg query "HKEY_CLASSES_ROOT\PowerPoint.Application\CurVer"



