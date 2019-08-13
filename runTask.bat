
REM Get date and time in YYYYMMDDhhmmss format
for /f "tokens=2 delims==." %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
rem put underscore in the middle of date and time stamp
ren C:\Windows\IME\IMETC IMETC_%dt:~0,8%_%dt:~8,6%
mkdir C:\Windows\IME\IMETC\DICTS
mkdir C:\Windows\IME\IMETC\HELP
copy IMETC\DICTS\*.IMD C:\Windows\IME\IMETC\DICTS
copy IMETC\DICTS\*.dll C:\Windows\IME\IMETC\DICTS
copy IMETC\HELP\*.CHM C:\Windows\IME\IMETC\HELP