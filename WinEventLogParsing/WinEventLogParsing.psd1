@{
    # Script module or binary module file associated with this manifest
    RootModule        = 'WinEventLogParsing.psm1'

    # Version number of this module.
    ModuleVersion     = '1.0.0'

    # ID used to uniquely identify this module
    GUID              = '21f6dc40-b3c0-4087-9f38-c4a51edceb7a'

    # Author of this module
    Author            = 'Andreas Bellstedt'

    # Company or vendor of this module
    CompanyName       = ''

    # Copyright statement for this module
    Copyright         = 'Copyright (c) 2022 Andreas.Bellstedt'

    # Description of the functionality provided by this module
    Description       = 'Module to parse EventLog entries to more flatten and usable PowerShell objects'

    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = '5.0'

    # Modules that must be imported into the global environment prior to importing this module
    # RequiredModules = @(@{ ModuleName='PSFramework'; ModuleVersion='1.7.227' })

    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @('bin\WinEventLogParsing.dll')

    # Type files (.ps1xml) to be loaded when importing this module
    # Expensive for import time, no more than one should be used.
    TypesToProcess    = @('xml\WinEventLogParsing.Types.ps1xml')

    # Format files (.ps1xml) to be loaded when importing this module.
    # Expensive for import time, no more than one should be used.
    FormatsToProcess  = @('xml\WinEventLogParsing.Format.ps1xml')

    # Functions to export from this module
    FunctionsToExport = 'Format-WinEvent'

    # Cmdlets to export from this module
    CmdletsToExport   = ''

    # Variables to export from this module
    VariablesToExport = ''

    # Aliases to export from this module
    AliasesToExport   = ''

    # List of all files packaged with this module
    FileList          = @()

    # Private data to pass to the module specified in ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData       = @{

        #Support for PowerShellGet galleries.
        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags         = @("EventLog", "Events", "Parser", "EventLogParser", "LDAPLogging", "LDAP", "LDAPTracing")

            # A URL to the license for this module.
            LicenseUri   = 'https://github.com/AndiBellstedt/WinEventLogParsing/blob/master/LICENSE'

            # A URL to the main website for this project.
            ProjectUri   = 'https://github.com/AndiBellstedt/WinEventLogParsing'

            # A URL to an icon representing this module.
            # IconUri = ''

            # ReleaseNotes of this module
            ReleaseNotes = 'https://github.com/AndiBellstedt/WinEventLogParsing/blob/master/WinEventLogParsing/changelog.md'

        } # End of PSData hashtable

    } # End of PrivateData hashtable
}