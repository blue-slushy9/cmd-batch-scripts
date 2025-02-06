:: This is a cmd/batch script I used to iterate over a directory with 
:: installers and run them

:: The below function runs the installers all at once, without waiting for each to finish

:: %%i is the for-loop variable, in this case the .exe or .msi file
FOR %%i (*.exe OR *.msi) DO (
  :: %%i calls the for-loop variable, i.e. runs the installer
  %%i
)

:: The below function will do the same as the above function, except it will wait for each
:: installer to finish before moving onto the next one

:: %%i is the for-loop variable, in this case the .exe or .msi file
FOR %%i (*.exe OR *.msi) DO (
  :: start /wait ensures the installer finishes before moving onto the next
  :: iteration of the for-loop
  start /wait %%i
)