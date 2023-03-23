@Echo off
setlocal enabledelayedexpansion

SET VERSION=%1

if not defined VERSION goto :version_error

title Push to GIT the merge
echo Push to GIT the merge
git push

title Commit and push the new version
echo Commit and push the new version
git commit -a -m "mmo_%1"
git push

title Push the branch and tag
echo Push the version tag, this triggers CI/CD
git tag mmo_%1
git push origin tags/mmo_%1

rem bash discordHook.sh %1

goto :end

:version_error
echo ERROR: No version parameter specified. Example: makeRelease.cmd 0.1.2.3
goto :end

:end

endlocal

echo.
