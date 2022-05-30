Windows EventLog Parsing
=======================

WinEventLogParsing is a module for parsing EventLog records, queried by 'Get-WinEvent' to more detailed and flatten powersell objects.

# Purpose

Welcome to the PowerShell Windows EventLog Parsing module. A module designed to flatten EventLog-objects queried by 'Get-WinEvent'

All functions/cmdlets are built with
- PowerShell regular verbs
- Pipeline availabilities if usefull


# Installation
In order to get started with the module, simply run this in an elevated console:
```powershell
Install-Module WinEventLogParsing
```
This will install the module on your system, ready for use


# Example
The functions will also work on a remote system:
```powershell
    Get-WinEvent -FilterHashtable @{"LogName" = "Directory Service"; "ID" = "1644"} | Format-WinEvent
```


# Changelog

Changes will be tracked in the [changelog.md](changelog.md)
