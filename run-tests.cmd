@echo off

rem If on 64 bit the path is: C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSBuild.exe

echo Cleaning the project

C:\Windows\Microsoft.NET\Framework\v4.0.30319\msbuild.exe .\Calculator.sln /target:Clean /v:n /p:Configuration=Debug  /p:WarningLevel=0

echo Building the project


C:\Windows\Microsoft.NET\Framework\v4.0.30319\msbuild.exe .\Calculator.sln /v:n /p:Configuration=Debug /p:WarningLevel=0

.\Calculator\vendor\NUnit-2.6.2\bin\nunit-console.exe .\Calculator\bin\Debug\Calculator.dll /config=Debug /framework=4.0 /nologo /noshadow /result:.\nunitResults.xml

