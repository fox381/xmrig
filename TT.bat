rem setlocal
echo hello from TT.bat
Sfadfasf
IF ERRORLEVEL 1 goto error_compile
goto :end


:error_compile
@echo.
@echo ERROR: There was an error compiling a solution
@goto end_error

:end_error
rem ENDLOCAL
EXIT /B 1

:end
rem ENDLOCAL