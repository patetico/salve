#NoEnv
#SingleInstance, force
#Persistent

IfNotExist, salves
    FileCreateDir, salves
If (not InStr(FileExist("salves"), "D"))
{
    MsgBox, Mano tem que ter uma pasta com nome salves e não tem então flw
    ExitApp
}

FileInstall, salves\salve-01.wav, salves\salve-01.wav
FileInstall, salves\salve-02.wav, salves\salve-02.wav
FileInstall, salves\salve-03.wav, salves\salve-03.wav
FileInstall, salves\salve-04.wav, salves\salve-04.wav
FileInstall, salves\salve-05.wav, salves\salve-05.wav
FileInstall, salves\salve-06.wav, salves\salve-06.wav
FileInstall, salves\salve-07.wav, salves\salve-07.wav
FileInstall, salves\salve-08.wav, salves\salve-08.wav


~^s::
    salves := []
    Loop, salves/*.wav, F
    {
        salves.Push(A_LoopFilePath)
    }
    Random, n, 1, % salves.Length()
    SoundPlay, % "salves/" . salves[n]
Return
