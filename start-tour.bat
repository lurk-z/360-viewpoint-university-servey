@echo off
REM ============================================================
REM  360 Viewpoint University Survey - local launcher
REM  Starts a small web server and opens the tour in your browser.
REM  (A server is needed so the 360 panoramas load in every browser.)
REM ============================================================
cd /d "%~dp0"
set PORT=8360

where python >nul 2>nul
if %errorlevel%==0 (
  echo Starting tour at http://localhost:%PORT%  ...
  start "" "http://localhost:%PORT%/index.html"
  python -m http.server %PORT%
  goto :eof
)

where py >nul 2>nul
if %errorlevel%==0 (
  echo Starting tour at http://localhost:%PORT%  ...
  start "" "http://localhost:%PORT%/index.html"
  py -m http.server %PORT%
  goto :eof
)

where npx >nul 2>nul
if %errorlevel%==0 (
  echo Starting tour at http://localhost:%PORT%  ...
  start "" "http://localhost:%PORT%/index.html"
  npx --yes http-server -p %PORT% -o index.html
  goto :eof
)

echo.
echo  Could not find Python or Node.js.
echo  Please install one of them, or open index.html through any local web server.
pause
