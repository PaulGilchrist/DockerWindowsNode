SET containerFolder=c:\temp\container
:: Remove the old image if it exists before creating a new image
docker rmi node:latest
::Create a temporary folder and copy in all the files needed for the new container
md %containerFolder%
xcopy "c:\program files\nodejs\*.*" %containerFolder%\nodejs\*.* /s
copy Dockerfile %containerFolder%\
:: Build the new container
docker build -t node:nano %containerFolder%
:: Cleanup the temporary folder
rd %containerFolder% /S /Q
