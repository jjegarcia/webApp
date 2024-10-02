@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  WebApp startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
@rem This is normally unused
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and WEB_APP_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo. 1>&2
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH. 1>&2
echo. 1>&2
echo Please set the JAVA_HOME variable in your environment to match the 1>&2
echo location of your Java installation. 1>&2

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo. 1>&2
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME% 1>&2
echo. 1>&2
echo Please set the JAVA_HOME variable in your environment to match the 1>&2
echo location of your Java installation. 1>&2

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\WebApp.jar;%APP_HOME%\lib\http4k-client-apache-async-5.30.0.0.jar;%APP_HOME%\lib\http4k-client-okhttp-5.30.0.0.jar;%APP_HOME%\lib\http4k-client-websocket-5.30.0.0.jar;%APP_HOME%\lib\http4k-security-oauth-5.30.0.0.jar;%APP_HOME%\lib\http4k-webhook-5.30.0.0.jar;%APP_HOME%\lib\http4k-connect-storage-http-5.24.1.0.jar;%APP_HOME%\lib\http4k-format-jackson-yaml-5.30.0.0.jar;%APP_HOME%\lib\http4k-format-jackson-5.30.0.0.jar;%APP_HOME%\lib\http4k-connect-storage-core-5.24.1.0.jar;%APP_HOME%\lib\http4k-format-moshi-5.30.0.0.jar;%APP_HOME%\lib\http4k-contract-5.30.0.0.jar;%APP_HOME%\lib\http4k-contract-jsonschema-5.30.0.0.jar;%APP_HOME%\lib\http4k-format-core-5.30.0.0.jar;%APP_HOME%\lib\http4k-template-jte-5.30.0.0.jar;%APP_HOME%\lib\http4k-template-core-5.30.0.0.jar;%APP_HOME%\lib\http4k-realtime-core-5.30.0.0.jar;%APP_HOME%\lib\http4k-security-core-5.30.0.0.jar;%APP_HOME%\lib\http4k-core-5.30.0.0.jar;%APP_HOME%\lib\result4k-2.20.0.0.jar;%APP_HOME%\lib\values4k-2.20.0.0.jar;%APP_HOME%\lib\okhttp-4.12.0.jar;%APP_HOME%\lib\moshi-kotlin-1.15.1.jar;%APP_HOME%\lib\moshi-1.15.1.jar;%APP_HOME%\lib\kotlin-stdlib-jdk8-1.8.21.jar;%APP_HOME%\lib\jte-kotlin-3.1.12.jar;%APP_HOME%\lib\kotlin-compiler-embeddable-1.9.10.jar;%APP_HOME%\lib\kotlin-stdlib-jdk7-1.8.21.jar;%APP_HOME%\lib\okio-jvm-3.7.0.jar;%APP_HOME%\lib\jackson-dataformat-yaml-2.17.2.jar;%APP_HOME%\lib\jackson-databind-2.17.2.jar;%APP_HOME%\lib\jackson-annotations-2.17.2.jar;%APP_HOME%\lib\jackson-core-2.17.2.jar;%APP_HOME%\lib\jackson-module-kotlin-2.17.2.jar;%APP_HOME%\lib\kotlin-reflect-1.8.21.jar;%APP_HOME%\lib\kotlin-stdlib-2.0.20.jar;%APP_HOME%\lib\annotations-13.0.jar;%APP_HOME%\lib\httpclient5-5.3.1.jar;%APP_HOME%\lib\Java-WebSocket-1.5.6.jar;%APP_HOME%\lib\jte-3.1.12.jar;%APP_HOME%\lib\swagger-ui-5.17.14.jar;%APP_HOME%\lib\httpcore5-h2-5.2.4.jar;%APP_HOME%\lib\httpcore5-5.2.4.jar;%APP_HOME%\lib\slf4j-api-2.0.6.jar;%APP_HOME%\lib\snakeyaml-2.2.jar;%APP_HOME%\lib\jte-extension-api-3.1.12.jar;%APP_HOME%\lib\jte-runtime-3.1.12.jar;%APP_HOME%\lib\kotlin-script-runtime-2.0.20.jar;%APP_HOME%\lib\kotlin-daemon-embeddable-1.9.10.jar;%APP_HOME%\lib\trove4j-1.0.20200330.jar


@rem Execute WebApp
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %WEB_APP_OPTS%  -classpath "%CLASSPATH%" com.example.WebAppKt %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable WEB_APP_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%WEB_APP_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
