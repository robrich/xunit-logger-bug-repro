#!/bin/sh

dotnet restore
dotnet build -c Release

dotnet test -c Release --no-build --filter "Type!=Integration" --logger:"junit;LogFilePath=../test-results/unit-result.xml"
