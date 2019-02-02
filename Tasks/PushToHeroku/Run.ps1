[CmdletBinding(DefaultParameterSetName = 'None')]
param(
  [String][Parameter(Mandatory = $true)]
  $ApiKey,
  [String][Parameter(Mandatory = $true)]
  $AppName,
  [String][Parameter(Mandatory = $true)]
  $PushRoot
)

# Globals
$RequestedFor = if ($Env:RELEASE_REQUESTEDFOR -eq $null ) { "vsts" } else { $Env:RELEASE_REQUESTEDFOR }

# Functions
Function Eval-Command($Command)
{
  return Invoke-Expression "& $Command 2>''"
}

Write-Host "Pushing to $AppName"
  Eval-Command -Command "sh run.sh $ApiKey $AppName $PushRoot `"$RequestedFor`""

Write-Host "DONE"