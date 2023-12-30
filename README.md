xUnit Test Logger Bug Repro
===========================

This example repo reproduces the bug noted in https://github.com/spekt/xunit.testlogger/issues/51: it'll either write the coverage report or the test report but not both.


Usage
-----

You can run this on any OS.  I've proved the failure both with `ubuntu-latest` Azure DevOps runner and on Windows 11 suggesting the bug is not OS dependent.

Run the scripts in PowerShell, Command Prompt, or Bash.

1. ✔️ `run-unit-no-coverage.sh.ps1`: Ask for unit test results but not coverage results. Note the file created in test-results folder.

2. ❌ `run-coverage-no-unit.sh.ps1`: Ask for both unit and coverage results. Note the coverage files created in test-results folder but no unit test results.

3. ✔️ `run-other.sh.ps1`: Run using the jUnit runner. Note that both coverage and unit test result files are created in the test-results folder.

4. `clean.sh` and `clean.ps1`: Clean out bin, obj, and test-results folders.  Handy tool to run between tests.


Ideas I haven't explored
------------------------

Does it still fail to write the test results file if:

- if I don't reference JunitXml.TestLogger?

- if I upgrade to .NET 8?

- if I don't pass in the test filter?

- if I don't pass in custom directories?

- if I collect coverage in different report format(s)?

- if the test-results directory already exists before tests are run?


License
-------

MIT
