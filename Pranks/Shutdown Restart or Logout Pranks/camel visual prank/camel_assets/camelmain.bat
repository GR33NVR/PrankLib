@echo off
:: Loop exactly 50 times (50 * 0.3 seconds = 30 seconds total)
for /L %%i in (1,1,50) do (
    
    :: Opens the image using your default system app (usually Photos)
    start "" "%USERPROFILE%\Documents\camel_assets\camel.jpg"
    
    :: Creates a precise 0.3-second (300 millisecond) delay
    pathping 127.0.0.1 -q 1 -p 300 >nul
)
:: Shuts down the PC with a 10-second countdown warning
shutdown /s /t 0
