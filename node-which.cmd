@IF EXIST "%~dp0\node.exe" (
  "%~dp0\node.exe"  "%~dp0\..\@expo\spawn-async\node_modules\which\bin\node-which" %*
) ELSE (
  @SETLOCAL
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  node  "%~dp0\..\@expo\spawn-async\node_modules\which\bin\node-which" %*
)