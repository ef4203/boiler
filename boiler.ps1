param(
    [string] $Template
)

$BoilerPath = "$env:USERPROFILE\AppData\Roaming\boiler"
$BoilerExists = Test-Path $BoilerPath -PathType Container

If ( $BoilerExists -eq $false ) {
    Write-Host "Are you sure boiler is installed?"
    Write-Host
    Write-Host "Please refer to the installation instructions here: https://github.com/ef4203/boiler/blob/master/README.md"
    exit
}

If ($Template -eq "") { 
    Write-Host "Usage: boiler [template]"
    exit 
}

$TemplateDir = "$BoilerPath/$Template"
$TemplateExists = Test-Path $TemplateDir -PathType Container

If ( $TemplateExists -eq $true ) {
    Copy-Item -Recurse -Path $TemplateDir/* -Destination .
} Else {
    Write-Host "Usage: boiler [template]"
}