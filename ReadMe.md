## How to create Moonshine-IDE package?

1. Clone the repository
2. Copy Moonshine installer to `tools/` folder
3. Change the file location inside `tools/chocolateyinstall.ps1`
4. Change the version inside `moonshine-ide.nuspec`
5. Run `choco pack`

## How to upload package to Chocolatey Community Repository

Run:
```
choco apikey --key {API_KEY} --source https://push.chocolatey.org/
choco push moonshine-ide.x.y.z.nupkg --source https://push.chocolatey.org/
```