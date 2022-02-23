TITLE Add and Subtract, Version 2         (AddSub2.asm)

; This program adds and subtracts 32-bit integers
; and stores the sum in a variable.
.386
.model flat, stdcall
.stack 4096
    ExitProcess PROTO, dwExitCode:DWORD
INCLUDE Irvine32.inc

.data
FIBNum    DWORD 30 DUP(?)
.code
main PROC
mov    FIBNum,1
mov    FIBNum+8,1
mov    esi,OFFSET FIBNum
mov    ecx,28
add    esi,16
mov    eax,[esi-16]
call Writeint
call Crlf
mov    eax,[esi-8]
call Writeint
call Crlf
L1:
mov    eax,[esi-16]
add    eax,[esi-8]
mov    [esi],eax
add    esi,8
call Writeint
call Crlf
loop L1
	exit
main ENDP
END main