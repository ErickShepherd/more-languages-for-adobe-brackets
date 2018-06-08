<#

Accessed by:    Erick Edward Shepherd
Accessed on:    2018-06-06
Language:       PowerShell
Source entity:  CodeMirror
Source site:    codemirror.net/mode/powershell/index.html

Purpose:        Example to test plugin success in syntax highlighting.

License:        MIT License

                Copyright (C) 2017 by Marijn Haverbeke <marijnh@gmail.com> 
                and others.

                Permission is hereby granted, free of charge, to any person 
                obtaining a copy of this software and associated documentation 
                files (the "Software"), to deal in the Software without 
                restriction, including without limitation the rights to use, 
                copy, modify, merge, publish, distribute, sublicense, and/or 
                sell copies of the Software, and to permit persons to whom the 
                Software is furnished to do so, subject to the following 
                conditions:

                The above copyright notice and this permission notice shall be 
                included in all copies or substantial portions of the Software.

                THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
                EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES 
                OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND 
                NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT 
                HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
                WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
                FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR 
                OTHER DEALINGS IN THE SOFTWARE.

#>

# Number Literals
0 12345
12kb 12mb 12gB 12Tb 12PB 12L 12D 12lkb 12dtb
1.234 1.234e56 1. 1.e2 .2 .2e34
1.2MB 1.kb .1dTb 1.e1gb
0x1 0xabcdef 0x3tb 0xelmb

# String Literals
'Literal escaping'''
'Literal $variable'
"Escaping 1`""
"Escaping 2"""
"Escaped `$variable"
"Text, $variable and more text"
"Text, ${variable with spaces} and more text."
"Text, $($expression + 3) and more text."
"Text, $("interpolation $("inception")") and more text."

@"
Multiline
string
"@
# --
@"
Multiline
string with quotes "'
"@
# --
@'
Multiline literal
string with quotes "'
'@

# Array and Hash literals
@( 'a','b','c' )
@{ 'key': 'value' }

# Variables
$Variable = 5
$global:variable = 5
${Variable with spaces} = 5

# Operators
= += -= *= /= %=
++ -- .. -f * / % + -
-not ! -bnot
-split -isplit -csplit
-join
-is -isnot -as
-eq -ieq -ceq -ne -ine -cne
-gt -igt -cgt -ge -ige -cge
-lt -ilt -clt -le -ile -cle
-like -ilike -clike -notlike -inotlike -cnotlike
-match -imatch -cmatch -notmatch -inotmatch -cnotmatch
-contains -icontains -ccontains -notcontains -inotcontains -cnotcontains
-replace -ireplace -creplace
-band	-bor -bxor
-and -or -xor

# Punctuation
() [] {} , : ` = ; .

# Keywords
elseif begin function for foreach return else trap while do data dynamicparam
until end break if throw param continue finally in switch exit filter from try
process catch

# Built-in variables
$$ $? $^ $_
$args $ConfirmPreference $ConsoleFileName $DebugPreference $Error
$ErrorActionPreference $ErrorView $ExecutionContext $false $FormatEnumerationLimit
$HOME $Host $input $MaximumAliasCount $MaximumDriveCount $MaximumErrorCount
$MaximumFunctionCount $MaximumHistoryCount $MaximumVariableCount $MyInvocation
$NestedPromptLevel $null $OutputEncoding $PID $PROFILE $ProgressPreference
$PSBoundParameters $PSCommandPath $PSCulture $PSDefaultParameterValues
$PSEmailServer $PSHOME $PSScriptRoot $PSSessionApplicationName
$PSSessionConfigurationName $PSSessionOption $PSUICulture $PSVersionTable $PWD
$ShellId $StackTrace $true $VerbosePreference $WarningPreference $WhatIfPreference
$true $false $null

# Built-in functions
A:
Add-Computer Add-Content Add-History Add-Member Add-PSSnapin Add-Type
B:
C:
Checkpoint-Computer Clear-Content Clear-EventLog Clear-History Clear-Host Clear-Item
Clear-ItemProperty Clear-Variable Compare-Object Complete-Transaction Connect-PSSession
ConvertFrom-Csv ConvertFrom-Json ConvertFrom-SecureString ConvertFrom-StringData
Convert-Path ConvertTo-Csv ConvertTo-Html ConvertTo-Json ConvertTo-SecureString
ConvertTo-Xml Copy-Item Copy-ItemProperty
D:
Debug-Process Disable-ComputerRestore Disable-PSBreakpoint Disable-PSRemoting
Disable-PSSessionConfiguration Disconnect-PSSession
E:
Enable-ComputerRestore Enable-PSBreakpoint Enable-PSRemoting Enable-PSSessionConfiguration
Enter-PSSession Exit-PSSession Export-Alias Export-Clixml Export-Console Export-Counter
Export-Csv Export-FormatData Export-ModuleMember Export-PSSession
F:
ForEach-Object Format-Custom Format-List Format-Table Format-Wide
G:
Get-Acl Get-Alias Get-AuthenticodeSignature Get-ChildItem Get-Command Get-ComputerRestorePoint
Get-Content Get-ControlPanelItem Get-Counter Get-Credential Get-Culture Get-Date
Get-Event Get-EventLog Get-EventSubscriber Get-ExecutionPolicy Get-FormatData Get-Help
Get-History Get-Host Get-HotFix Get-Item Get-ItemProperty Get-Job Get-Location Get-Member
Get-Module Get-PfxCertificate Get-Process Get-PSBreakpoint Get-PSCallStack Get-PSDrive
Get-PSProvider Get-PSSession Get-PSSessionConfiguration Get-PSSnapin Get-Random Get-Service
Get-TraceSource Get-Transaction Get-TypeData Get-UICulture  Get-Unique Get-Variable Get-Verb
Get-WinEvent Get-WmiObject Group-Object
H:
help
I:
Import-Alias Import-Clixml Import-Counter Import-Csv Import-LocalizedData Import-Module
Import-PSSession ImportSystemModules Invoke-Command Invoke-Expression Invoke-History
Invoke-Item Invoke-RestMethod Invoke-WebRequest Invoke-WmiMethod
J:
Join-Path
K:
L:
Limit-EventLog
M:
Measure-Command Measure-Object mkdir more Move-Item Move-ItemProperty
N:
New-Alias New-Event New-EventLog New-Item New-ItemProperty New-Module New-ModuleManifest
New-Object New-PSDrive New-PSSession New-PSSessionConfigurationFile New-PSSessionOption
New-PSTransportOption New-Service New-TimeSpan New-Variable New-WebServiceProxy
New-WinEvent
O:
oss Out-Default Out-File Out-GridView Out-Host Out-Null Out-Printer Out-String
P:
Pause Pop-Location prompt Push-Location
Q:
R:
Read-Host Receive-Job Receive-PSSession Register-EngineEvent Register-ObjectEvent
Register-PSSessionConfiguration Register-WmiEvent Remove-Computer Remove-Event
Remove-EventLog Remove-Item Remove-ItemProperty Remove-Job Remove-Module
Remove-PSBreakpoint Remove-PSDrive Remove-PSSession Remove-PSSnapin Remove-TypeData
Remove-Variable Remove-WmiObject Rename-Computer Rename-Item Rename-ItemProperty
Reset-ComputerMachinePassword Resolve-Path Restart-Computer Restart-Service
Restore-Computer Resume-Job Resume-Service
S:
Save-Help Select-Object Select-String Select-Xml Send-MailMessage Set-Acl Set-Alias
Set-AuthenticodeSignature Set-Content Set-Date Set-ExecutionPolicy Set-Item
Set-ItemProperty Set-Location Set-PSBreakpoint Set-PSDebug
Set-PSSessionConfiguration Set-Service Set-StrictMode Set-TraceSource Set-Variable
Set-WmiInstance Show-Command Show-ControlPanelItem Show-EventLog Sort-Object
Split-Path Start-Job Start-Process Start-Service Start-Sleep Start-Transaction
Start-Transcript Stop-Computer Stop-Job Stop-Process Stop-Service Stop-Transcript
Suspend-Job Suspend-Service
T:
TabExpansion2 Tee-Object Test-ComputerSecureChannel Test-Connection
Test-ModuleManifest Test-Path Test-PSSessionConfigurationFile Trace-Command
U:
Unblock-File Undo-Transaction Unregister-Event Unregister-PSSessionConfiguration
Update-FormatData Update-Help Update-List Update-TypeData Use-Transaction
V:
W:
Wait-Event Wait-Job Wait-Process Where-Object Write-Debug Write-Error Write-EventLog
Write-Host Write-Output Write-Progress Write-Verbose Write-Warning
X:
Y:
Z: