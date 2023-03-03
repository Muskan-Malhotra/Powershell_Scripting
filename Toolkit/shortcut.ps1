#we will be using windows script host(older technology)
#win script host is instantiated first.

$WinObj = New-Object -ComObject WScript.Shell

#using createshortcut method and assigning it to a variable
#this is location where the shortcut needs to be created
#this dont create shortcut rather just instantiates the create shortcut object.
$ShortCut = $WinObj.CreateShortcut("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Test\Internet Explorer Test.lnk")

#Path to file shortcut will open
#location of the file which we want our shortcut to open

$ShortCut.TargetPath = "C:\\Program Files (x86)\Internet Explorer\iexplore.exe"


#start in????**********************
#adding icon for the shortcut
$ShortCut.IconLocation = "C:\Users\HP\OneDrive\Desktop\star.ico"

$ShortCut.Save()