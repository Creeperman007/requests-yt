; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Request System"
#define MyAppVersion "1.3"
#define MyAppPublisher "Creeperman007"
#define MyAppExeName "request-yt.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{CBBF76CA-2BFE-459F-B2BB-036490950898}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName=C:\request-yt
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=C:\Users\Uziv2\Documents\GitHub\request-yt\LICENSE.txt
OutputDir=C:\Users\Uziv2\Documents\GitHub\request-yt
OutputBaseFilename=RequestYT-Setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\Uziv2\Documents\GitHub\request-yt\desktop\bin\Release\request-yt.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Uziv2\Documents\GitHub\request-yt-updater\app-updater.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Uziv2\Documents\GitHub\request-yt\desktop\bin\Release\x64\SQLite.Interop.dll"; DestDir: "{app}\x64\"; Flags: ignoreversion
Source: "C:\Users\Uziv2\Documents\GitHub\request-yt\desktop\bin\Release\x86\SQLite.Interop.dll"; DestDir: "{app}\x86\"; Flags: ignoreversion
Source: "C:\Users\Uziv2\Documents\GitHub\request-yt\desktop\bin\Release\EntityFramework.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Uziv2\Documents\GitHub\request-yt\desktop\bin\Release\EntityFramework.SqlServer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Uziv2\Documents\GitHub\request-yt\desktop\bin\Release\Google.Protobuf.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Uziv2\Documents\GitHub\request-yt\desktop\bin\Release\MySql.Data.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Uziv2\Documents\GitHub\request-yt\desktop\bin\Release\Newtonsoft.Json.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Uziv2\Documents\GitHub\request-yt\desktop\bin\Release\System.Data.SQLite.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Uziv2\Documents\GitHub\request-yt\desktop\bin\Release\System.Data.SQLite.EF6.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Uziv2\Documents\GitHub\request-yt\desktop\bin\Release\System.Data.SQLite.Linq.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Uziv2\Documents\GitHub\request-yt\desktop\bin\Release\System.Runtime.InteropServices.RuntimeInformation.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

