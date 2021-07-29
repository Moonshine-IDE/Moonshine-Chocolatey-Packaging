$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocaction = Join-Path $toolsDir 'Moonshine-3.1.1.exe'
$packageName = 'Moonshine-IDE'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  file         	= $fileLocaction
  softwareName  = 'Moonshine'

  # MSI
  silentArgs    = "/S" #NSIS
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
