@echo off
@pushd %USERPROFILE%
@SET VSPATH="C:\Program Files (x86)\Microsoft Visual Studio\2017\Community"
@call %VSPATH%\VC\Auxiliary\Build\vcvars64.bat

@SET TOOLS=C:\tools

rem %comspec% /k ""%userprofile%\init.bat" && "c:\mingw\set_distro_paths.bat" && "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat"" amd64
PATH=%PATH%;%USERPROFILE%\tools\utils
PATH=%PATH%;C:\Program Files (x86)\Microsoft SDKs\F#\4.0\Framework\v4.0

@set PATH=%PATH%;C:\tools\utils
rem @doskey idle=start /B python.exe %PYTHON3_HOME%\Lib\idlelib\idle.pyw $*
@SET PATH=%PATH%;c:\mingw\bin;C:\MinGW\git\usr\bin;C:\MinGW\git\mingw64\bin
@SET EMACS_HOME=C:\tools\emacs
@SET PATH=%PATH%;%EMACS_HOME%\bin
@doskey xemacs=%EMACS_HOME%\bin\runemacs.exe $*

rem BOOST for MSVC
@SET BOOST_HOME=C:\tools\boost_1_62_0
@SET BOOST_LIB64=%BOOST_HOME%\lib64-msvc-14.0
@SET PATH=%PATH%;%BOOST_LIB64%

@doskey npp="c:\Program Files\Notepad++\Notepad++.exe" $*
@popd
@echo INIT done

@SET CYGPROFILE=C:\cygwin64\home\savic
@SET WORK=%USERPROFILE%\work

@doskey gvim=c:\tools\vim\gvim $*
@doskey svn=\cygwin64\bin\svn.exe $*
