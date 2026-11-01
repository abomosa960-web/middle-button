#Requires AutoHotkey v2.0
#SingleInstance Force

iniFile := A_ScriptDir "\mouse.ini"
action := IniRead(iniFile, "Settings", "Action", "{Backspace}")

MyGui := Gui("+AlwaysOnTop", "زر الماوس الأوسط")
MyGui.SetFont("s12")
MyGui.Add("Text",, "اختار الأكشن للزر الأوسط:")
rbBack  := MyGui.Add("Radio", "Checked", "Backspace")
rbEnter := MyGui.Add("Radio", , "Enter")
if (action = "{Enter}")
    rbEnter.Value := 1
MyGui.Add("Button", "Default w120", "حفظ").OnEvent("Click", SaveChoice)
MyGui.OnEvent("Close", (*) => MyGui.Hide())

; الواجهة بتظهر بس لو الملف اتفتح بالدبل كليك، مش لما يشتغل مع الويندوز
if !(A_Args.Length && A_Args[1] = "silent")
    MyGui.Show()

SaveChoice(*) {
    global action, iniFile, rbEnter, MyGui
    action := rbEnter.Value ? "{Enter}" : "{Backspace}"
    IniWrite(action, iniFile, "Settings", "Action")
    MyGui.Hide()
}

MButton:: Send(action)
