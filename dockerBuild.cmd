SET containerFolder=c:\temp\container
::Create a temporary folder and copy in all the files needed for the new container
md %containerFolder%
xcopy "c:\program files\nodejs\*.*" %containerFolder%\nodejs\*.* /s
copy Dockerfile %containerFolder%\
:: Build the new container (ensure Docker is using Windows and not Linux containers before building)
docker build --rm -f "Dockerfile" -t paulgilchrist/node-nano:latest %containerFolder%
:: Cleanup the temporary folder
rd %containerFolder% /S /Q
::docker login
::docker push paulgilchrist/node-nano