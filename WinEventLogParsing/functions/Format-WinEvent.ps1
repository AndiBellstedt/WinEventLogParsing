function Format-WinEvent {
    [CmdletBinding()]
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