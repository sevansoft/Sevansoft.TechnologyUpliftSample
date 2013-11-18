@echo off
cls

echo.
echo Executing this script from the wrong location could cause damage to source
echo.
echo Are you sure you want to continue?
echo.
echo you can press 'CTRL-C' now to quit or any other key to continue.
echo.

pause
echo.
echo Building....

"%BUILD_TOOLS%\nant\nant" -buildfile:Sevansoft.TechnologyUpliftSample.build.xml -D:CCNetLabel=0.0.0.0 -D:CCNetSource="None" -D:verbose=true -D:debug=false FinaliseBuild > Sevansoft.TechnologyUpliftSample.build.log
start notepad Sevansoft.TechnologyUpliftSample.build.log