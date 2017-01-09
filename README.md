# Docker ReadMe
## Docker Setup on Windows 10 Aniversary Edition PC
1.	Setup Docker following [Microsoft’s documentation](https://msdn.microsoft.com/en-us/virtualization/windowscontainers/quick_start/quick_start_windows_10)
2.	Add registry setting using PowerShell if testing on Windows 10  
    Set-ItemProperty -Path 'HKLM:SOFTWARE\Microsoft\Windows NT\CurrentVersion\Virtualization\Containers' -Name VSmbDisableOplocks -Type DWord -Value 1 -Force
3.	Execute dockerBuild.cmd from an administrative command prompt within the Angular2NodeTemplate folder
4.	Execute dockerRun.cmd making sure to not continue through the pause until you have completed testing
5.	Use the IP address displayed in the command window to test the container hosted application from a browser
       http://<container ip>:3000
6.	Stop the container and remove it from memory by pressing any key to continue in the command window

If it is ever required to remove all stopped containers, it can be done with the following command:  
    FOR /f "tokens=*" %i IN ('docker ps -a -q') DO docker rm %i

## Create a NodeJS container running within Microsoft Nano server
1. Run dockerBuild.cmd to create new docker image from nanoserver adding in node js
    * Assumes NodeJS has been installed on local computer.  If not, download and install it from [nodejs.org](https://nodejs.org/en/download/)

