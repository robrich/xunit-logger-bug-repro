# If these error because they don't exist that's ok
$ErrorActionPreference= 'silentlycontinue'

Remove-Item -Recurse -Force SomeService/bin
Remove-Item -Recurse -Force SomeService/obj
Remove-Item -Recurse -Force SomeTestProject/bin
Remove-Item -Recurse -Force SomeTestProject/bin
Remove-Item -Recurse -Force test-results
