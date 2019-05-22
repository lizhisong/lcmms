@echo off
java -Xmx512M -cp "%~dp0\src\main\java;%~dp0\target\training\WEB-INF\classes;%~dp0\..\thorn5-client\src\main\java;%~dp0\..\thorn5-client\target\classes;%~dp0\..\thorn5-rmc\src\main\java;%~dp0\..\thorn5-rmc\target\classes;%~dp0\..\thorn5-rule\src\main\java;%~dp0\..\thorn5-rule\target\classes;%MAVEN_REPO%\gwt\jars\gwt-user-2.1.1.jar;%MAVEN_REPO%\gwt\jars\gwt-dev-2.1.1.jar;%MAVEN_REPO%\gwt\jars\gwt-voices-2.0.0.jar;%MAVEN_REPO%/gwt/jars/gwt-crypto-1.0.3.jar;%MAVEN_REPO%\gxt\jars\gwtext-2.0.5.jar" com.google.gwt.dev.GWTCompiler -out "%~dp0\www" %* com.vtradex.training.TRAINING
if ERRORLEVEL 1 goto error
if ERRORLEVEL 0 goto exit
:error
pause
:exit
