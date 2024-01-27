#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; While you don't have to declare the toggle, by doing so you know what the initial start value is
toggle  := 0
accent  := "nil"
return

SendKeyRespect(lower, upper)
{
    If GetKeyState("CapsLock", "T") || GetKeyState("Shift", "P")
        send, %upper%
    else
        send, %lower%
}
F6::
    ; see https://www.reddit.com/r/AutoHotkey/comments/4f4j9k/read_this_before_posting/
    toggle  := !toggle
return

F1::
    if (accent != "aigu"){
        accent := "aigu"
    }
    else{
        accent := "nil"
    }
return

F2::
    if (accent != "grave"){
        accent := "grave"
    }
    else{
        accent := "nil"
    }
return

F3::
    if (accent != "circonflex"){
        accent := "circonflex"
    }
    else{
        accent := "nil"
    }
return

F4::
    if (accent != "trema"){
        accent := "trema"
    }
    else{
        accent := "nil"
    }
return

F5::
    if (accent != "cedilla"){
        accent := "cedilla"
    }
    else{
        accent := "nil"
    }
return

$e::
    if (accent = "aigu") {
        SendKeyRespect("é", "É")
    }
    else if (accent = "grave") {
        SendKeyRespect("ê", "Ê")
    }
    else if (accent = "circonflex") {
        SendKeyRespect("ê", "Ê")
    }
    else if (accent = "trema") {
        SendKeyRespect("ë", "Ë")
    }
    else {
        SendKeyRespect("e", "E")
    }
return

$c::
    if (accent = "cedilla") {
        SendKeyRespect("ç", "Ç")
    }
    else {
        SendKeyRespect("c", "C")
    }
return

$a::
    if (accent = "grave") {
        SendKeyRespect("à", "À")
    }
    else if (accent = "circonflex") {
        SendKeyRespect("â", "Â")
    }
    else if (accent = "cedilla") {
        SendKeyRespect("æ", "Æ")
    }
    else {
        SendKeyRespect("a", "A")
    }
return

$i::
    if (accent = "circonflex") {
        SendKeyRespect("î", "Î")
    }
    else if (accent = "trema") {
        SendKeyRespect("ï", "Ï")
    }
    else if (accent = "cedilla") {
        SendKeyRespect("»", "›")
    }
    else {
        SendKeyRespect("i", "I")
    }
return

$o::
    if (accent = "circonflex") {
        SendKeyRespect("ô", "Ô")
    }
    else if (accent = "cedilla") {
        SendKeyRespect("œ", "Œ")
    }
    else {
        SendKeyRespect("o", "O")
    }
return

$u::
    if (accent = "grave") {
        SendKeyRespect("ù", "Ù")
    }
    else if (accent = "circonflex") {
        SendKeyRespect("û", "Û")
    }
    else if (accent = "trema") {
        SendKeyRespect("ü", "Ü")
    }
    else if (accent = "cedilla") {
        SendKeyRespect("«", "‹")
    }
    else {
        SendKeyRespect("u", "U")
    }
return

; Define num keys as modifers for accents 
#If (toggle = 1)
    1 & e::SendKeyRespect("é", "É")

    2 & e::SendKeyRespect("è", "È")
    2 & a::SendKeyRespect("à", "À")
    2 & u::SendKeyRespect("ù", "Ù")

    3 & e::SendKeyRespect("ê", "Ê")
    3 & a::SendKeyRespect("â", "Â")
    3 & i::SendKeyRespect("î", "Î")
    3 & o::SendKeyRespect("ô", "Ô")
    3 & u::SendKeyRespect("û", "Û")

    4 & e::SendKeyRespect("ë", "Ë")
    4 & i::SendKeyRespect("ï", "Ï")
    4 & u::SendKeyRespect("ü", "Ü")

    5 & o::SendKeyRespect("œ", "Œ")
    5 & a::SendKeyRespect("æ", "Æ")
    5 & c::SendKeyRespect("ç", "Ç")
    5 & u::SendKeyRespect("«", "‹")
    5 & i::SendKeyRespect("»", "›")

#If

return
