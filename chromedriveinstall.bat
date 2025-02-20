@echo off
REM -- Create target folder if it doesn't exist --
if not exist "C:\WebDriver\bin" (
    echo Creating folder C:\WebDriver\bin...
    mkdir "C:\WebDriver\bin"
)

REM -- Fetch the latest ChromeDriver version using PowerShell --
for /f "delims=" %%i in ('powershell -Command "(Invoke-WebRequest -Uri 'https://chromedriver.storage.googleapis.com/LATEST_RELEASE').Content.Trim()"') do set CHROME_VERSION=%%i
echo Latest ChromeDriver version: %CHROME_VERSION%

REM -- Set variables for download URL and temporary ZIP location --
set "CHROMEDRIVER_URL=https://chromedriver.storage.googleapis.com/%CHROME_VERSION%/chromedriver_win32.zip"
set "ZIP_FILE=C:\WebDriver\chromedriver.zip"

REM -- Download ChromeDriver if it's not already present --
if not exist "C:\WebDriver\bin\chromedriver.exe" (
    echo Downloading ChromeDriver from %CHROMEDRIVER_URL%...
    powershell -Command "Invoke-WebRequest -Uri '%CHROMEDRIVER_URL%' -OutFile '%ZIP_FILE%'"
    
    echo Extracting ChromeDriver...
    powershell -Command "Expand-Archive -Path '%ZIP_FILE%' -DestinationPath 'C:\WebDriver\bin' -Force"
    
    echo Cleaning up downloaded file...
    del "%ZIP_FILE%"
) else (
    echo ChromeDriver already exists in C:\WebDriver\bin. Skipping download.
)

REM -- Check if C:\WebDriver\bin is in the PATH and add it if not --
echo %PATH% | findstr /I /C:"C:\WebDriver\bin" >nul
if %errorlevel% neq 0 (
    echo Adding C:\WebDriver\bin to PATH...
    setx PATH "%PATH%;C:\WebDriver\bin"
) else (
    echo C:\WebDriver\bin is already in the PATH.
)

echo Done.
pause
