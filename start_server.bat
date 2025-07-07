@echo off
COLOR 0E
TITLE Server Interface v1.0
echo 		Created by Khushpreet Singh
echo.
echo  ================================================================
COLOR 0B
echo   Initializing Server Interface...
COLOR 0E
echo  ================================================================
echo.
timeout /t 1 /nobreak > nul

COLOR 0B
echo  [INFO] Authenticating user...
timeout /t 1 /nobreak > nul
COLOR 0A
echo  [SUCCESS] User authenticated.
echo.

COLOR 0B
echo  [INFO] Loading network protocols...
timeout /t 1 /nobreak > nul
COLOR 0A
echo  [SUCCESS] Protocols loaded.
echo.

COLOR 0B
echo  [INFO] Fetching local network configuration...
echo.
ipconfig
echo.
COLOR 0A
echo  [SUCCESS] Network configuration displayed.
echo.

COLOR 0E
echo  ================================================================
COLOR 0B
echo   Starting Server
COLOR 0E
echo  ================================================================
echo.
COLOR 0F
echo  Please enter the server port number (range: 49152 - 65535):
set /p SERVER_PORT=
echo.
timeout /t 2 /nobreak > nul

COLOR 0B
echo  [INFO] Server starting on port %SERVER_PORT%...
COLOR 0F
python -m http.server %SERVER_PORT% --bind 0.0.0.0
