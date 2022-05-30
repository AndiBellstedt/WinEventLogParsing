Function ConvertFrom-ClientField {
    param(
        [Parameter(Mandatory=$true)]
        [string]
        $Data,

        [Parameter(ParameterSetName="Client", Mandatory=$true)]
        [switch]$Client,

        [Parameter(ParameterSetName="Port", Mandatory=$true)]
        [switch]$Port
    )

    begin {}

    process {
        foreach ($item in $Data) {
            switch($item) {
                # IPv6
                { $_ -match '(?<Client>\[[A-Fa-f0-9:%]{1,}\])\:(?<Port>([0-9]+))' } {
                    $matches.($PSCmdlet.ParameterSetName)
                }

                # IPv4
                { $_ -match '((?<Client>(\d{1,3}\.){3}\d{1,3})\:(?<Port>[0-9]+))|(?<Client>(\d{1,3}\.){3}\d{1,3})' } {
                    $matches.($PSCmdlet.ParameterSetName)
                }

                # Name
                { $_ -match '(?<Client>([G-Z])\w+)' } {
                    $matches.($PSCmdlet.ParameterSetName)
                }

                # unable to parse information
                default { '' }
            }
        }
    }
}