function Format-WinEvent {
    <#
    .SYNOPSIS
        Parse EventLog records into more readable object

    .DESCRIPTION
        Parse the advanced properties of EventLog records into more readable object.
        Function add properties on the EventLog record to flatten the object for convinient output.

    .PARAMETER EventLogRecord
        The EventLog record to be parsed

    .EXAMPLE
        PS C:\> Get-WinEvent -FilterHashtable @{"LogName" = "Directory Service"; "ID" = "1644"} | Format-WinEvent

        Format all records with ID 1644 from Eventlog "Directory Service" to a more readable object.
    #>
    [CmdletBinding(ConfirmImpact="Low", SupportsShouldProcess=$false)]
    param(
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [System.Diagnostics.Eventing.Reader.EventLogRecord[]]
        $EventLogRecord
    )

    begin {
    }

    process {
        foreach ($record in $EventLogRecord) {
            $null = $record.psobject.TypeNames.Insert(0, "System.Diagnostics.Eventing.Reader.EventLogRecord.$($record.ProviderName).ID$($record.Id)")

            $record
        }
    }

    end {
    }
}