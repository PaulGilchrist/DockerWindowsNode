# Docker ReadMe
## Docker Setup on Windows 10
1.	Setup Docker following [Microsoft’s documentation](https://msdn.microsoft.com/en-us/virtualization/windowscontainers/quick_start/quick_start_windows_10)
2.	Add registry setting using PowerShell if testing on Windows 10  
    Set-ItemProperty -Path 'HKLM:SOFTWARE\Microsoft\Windows NT\CurrentVersion\Virtualization\Containers' -Name VSmbDisableOplocks -Type DWord -Value 1 -Force
## Create a NodeJS container running within Microsoft Nano server
3. Run dockerBuild.cmd to create new docker image from nanoserver adding in node js
    * Assumes NodeJS has been installed on local computer.  If not, download and install it from [nodejs.org](https://nodejs.org/en/download/)
4. Optionally push this container to http://hub.docker.com using the following commands
    docker login
    docker push paulgilchrist/node-nano

If it is ever required to remove all stopped containers, it can be done with the following command:  
    FOR /f "tokens=*" %i IN ('docker ps -a -q') DO docker rm %i


