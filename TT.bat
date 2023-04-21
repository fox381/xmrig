
echo hello from 2.bat
SET ERRORLEVEL 0
IF ERRORLEVEL 1 goto error_compile
goto :end


:error_compile
@echo.
@echo ERROR: There was an error compiling a solution
@goto end_error

:end_error
ENDLOCAL
EXIT /B 1

:end
ENDLOCAL