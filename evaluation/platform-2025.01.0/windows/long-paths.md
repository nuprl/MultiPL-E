# Background

In order to allow long paths in Windows, two conditions must be met

- this must be enabled in the registry
- the manifest of the executables must state that they do support this

See

https://learn.microsoft.com/en-us/windows/win32/fileio/maximum-file-path-limitation?tabs=registry#enable-long-paths-in-windows-10-version-1607-and-later

# Default Manifest

This default manifest enables long paths on Windows for everything compiled / linked after it has been installed (assuming the registry seeting is set, see eblow)

The manifest is inspired by

https://discuss.ocaml.org/t/ocaml-on-windows-the-long-paths-issue/13283
and
https://github.com/ManasJayanth/windows-default-manifest/

This file is not taken from there, though, it is a merge of the (FSFAP license) file in

https://cygwin.com/packages/summary/windows-default-manifest-src.html

```
LANGUAGE 0, 0

/* CREATEPROCESS_MANIFEST_RESOURCE_ID RT_MANIFEST MOVEABLE PURE DISCARDABLE */
1 24 MOVEABLE PURE DISCARDABLE
BEGIN
  "<?xml version=""1.0"" encoding=""UTF-8"" standalone=""yes""?>\n"
  "<assembly xmlns=""urn:schemas-microsoft-com:asm.v1"" manifestVersion=""1.0"">\n"
  "  <trustInfo xmlns=""urn:schemas-microsoft-com:asm.v3"">\n"
  "    <security>\n"
  "      <requestedPrivileges>\n"
  "        <requestedExecutionLevel level=""asInvoker""/>\n"
  "      </requestedPrivileges>\n"
  "    </security>\n"
  "  </trustInfo>\n"
  "  <compatibility xmlns=""urn:schemas-microsoft-com:compatibility.v1"">\n"
  "    <application>\n"
  "      <!--The ID below indicates application support for Windows Vista -->\n"
  "      <supportedOS Id=""{e2011457-1546-43c5-a5fe-008deee3d3f0}""/>\n"
  "      <!--The ID below indicates application support for Windows 7 -->\n"
  "      <supportedOS Id=""{35138b9a-5d96-4fbd-8e2d-a2440225f93a}""/>\n"
  "      <!--The ID below indicates application support for Windows 8 -->\n"
  "      <supportedOS Id=""{4a2f28e3-53b9-4441-ba9c-d69d4a4a6e38}""/>\n"
  "      <!--The ID below indicates application support for Windows 8.1 -->\n"
  "      <supportedOS Id=""{1f676c76-80e1-4239-95bb-83d0f6d0da78}""/> \n"
  "      <!--The ID below indicates application support for Windows 10 -->\n"
  "      <supportedOS Id=""{8e0f7a12-bfb3-4fe8-b9a5-48fd50a15a9a}""/> \n"
  "    </application>\n"
  "  </compatibility>\n"
  "</assembly>\n"
END
```

and the example here:

https://learn.microsoft.com/en-us/windows/win32/sbscs/application-manifests#longpathaware

## Build default manifest
```
x86_64-w64-mingw32-windres -F pe-x86-64 windows/default-manifest.rc -o windows/default-manifest.o
cp windows/default-manifest.o /usr/x86_64-w64-mingw32/sys-root/mingw/lib/default-manifest.o
```

# Regsity setting

See https://learn.microsoft.com/en-us/windows/win32/fileio/maximum-file-path-limitation?tabs=registry#enable-long-paths-in-windows-10-version-1607-and-later

```
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem]
"LongPathsEnabled"=dword:00000001
```

To install this file run on the cygwin prompt:

```
cygstart --action=runas REG IMPORT long-path.reg
```
**THIS DOES NOT WORK!**

or alternatively

```
cygstart --action=runas REG ADD 'HKLM\SYSTEM\CurrentControlSet\Control\FileSystem' /v LongPathsEnabled /t REG_DWORD /d 1 /f
```

Löschen des Schlüssels

```
cygstart --action=runas REG DELETE 'HKLM\SYSTEM\CurrentControlSet\Control\FileSystem' /v LongPathsEnabled
```

To query on the cygwin prompt run:

```
REG QUERY 'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem' /v LongPathsEnabled

FEHLER: Der angegebene Registrierungsschlüssel bzw. Wert wurde nicht gefunden.

HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem
    LongPathsEnabled    REG_DWORD    0x1
```
