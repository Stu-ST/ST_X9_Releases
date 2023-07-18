:: Begin batch script
@ECHO OFF

:: Heading/Logo
ECHO ============================================================================
ECHO         ____                _    ------     ++++++     ######
ECHO        / ___^|  ___  ___  __^| ^| - @@@ ---- ++++++++++ ##########
ECHO        \___ \ / _ \/ _ \/ _` ^| - @\\ @@ - ++ @@ ++++ ##########
ECHO         ___^) ^|  __/  __/ ^(_^| ^| --- \//@ - ++ @\\ +++ ##########
ECHO        ^|____/ \___^|\___^|\__,_^|   - ^|^| -     + ^|^| +     ######
ECHO         _____                   _             _             
ECHO        ^|_   _^|__ _ __ _ __ ___ ^(_^)_ __   __ _^| ^|_ ___  _ __ 
ECHO          ^| ^|/ _ \ '__^| '_ ` _ \^| ^| '_ \ / _` ^| __/ _ \^| '__^|
ECHO          ^| ^|  __/ ^|  ^| ^| ^| ^| ^| ^| ^| ^| ^| ^| ^(_^| ^| ^|^| ^(_^) ^| ^|   
ECHO          ^|_^|\___^|_^|  ^|_^| ^|_^| ^|_^|_^|_^| ^|_^|\__,_^|\__\___/^|_^|    
ECHO ============================================================================
:: Update version as required
ECHO Version: v1.2.1-Germany
ECHO:

:: Description
ECHO This script updates an ESX.3cs controller with the latest Seed Terminator 
ECHO software. 
ECHO:

ECHO If connecting to ECU via Ethernet for the first time, please configure
ECHO your laptop as follows:
ECHO    1. Go to Settings and click "Network & internet"
ECHO    2. Select "Ethernet"
ECHO    3. Next to "IP assignment", select "Edit"
ECHO    4. Select "Manual" in the drop down tab, and select IPv4 to be "on"
ECHO    5. Under "IP address", type "172.20.230.1"
ECHO    6. Under "Subnet mask", type "255.255.255.0"
ECHO    7. Click "Save"
ECHO:

:: Pause message
ECHO Press any key to proceed . . .
PAUSE >nul
ECHO:

:: Instructions
ECHO Please ensure the following criteria have been met:
ECHO    1. The ECU (ESX.3cs) is powered and switched on
ECHO        a. One light should be continually showing "green"
ECHO    2. The ESX.3cs controller is connected to your device via Ethernet
ECHO:

:: Pause message
ECHO Press any key to proceed with flashing the controller . . .
PAUSE >nul

:: Flashing script
ECHO The SYDEsup application will now run.
ECHO ============================================================================
:: Update the name of the .syde_sup file as required
SYDEsup\SYDEsup.exe -p software\SeedTerminator_v1.2.1-Germany.syde_sup
ECHO ============================================================================

:: Finished message
ECHO The SYDEsup application has finished running. Please press any key to exit
ECHO this program.
PAUSE >nul