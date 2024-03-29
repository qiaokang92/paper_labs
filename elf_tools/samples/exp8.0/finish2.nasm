global _start
section .text
open_printf:
   	push   ebp
   	mov    ebp,esp
   	sub    esp,0x18
   	lea    eax,[ebp-0x8]
   	sub    esp,0xc
   	mov    BYTE[ebp-0x8],0x6f
  	mov    BYTE[ebp-0x7],0x70
  	mov    BYTE[ebp-0x6],0x65
  	mov    BYTE[ebp-0x5],0x6e
  	mov    BYTE[ebp-0x4],0xa
  	mov    BYTE[ebp-0x3],0x0
  	push   eax
  	 call -0x5162c
  	mov    esp,ebp
  	pop    ebp
  	ret    

close_printf:
  	push   ebp
  	mov    ebp,esp
  	sub    esp,0x18
  	lea    eax,[ebp-0x8]
  	sub    esp,0xc
  	mov    BYTE[ebp-0x8],0x63
  	mov    BYTE[ebp-0x7],0x6c
  	mov    BYTE[ebp-0x6],0x6f
  	mov    BYTE[ebp-0x5],0x73
  	mov    BYTE[ebp-0x4],0xa
  	mov    BYTE[ebp-0x3],0x0
  	push   eax
  	 call -0x5165a
  	mov    esp,ebp
  	pop    ebp
  	ret    

__hook_dosFsOpen:
  	push   ebp
  	mov    ebp,esp
  	sub    esp,0x8
  	 call open_printf
  	mov    esp,ebp
  	pop    ebp
  	ret    

__hook_dosFsClose:
  	push   ebp
  	mov    ebp,esp
  	sub    esp,0x8
  	 call close_printf
  	mov    esp,ebp
  	pop    ebp
  	ret    

__hook_dosFsRead:
  	push   ebp
  	mov    ebp,esp
  	sub    esp,0x18
  	lea    eax,[ebp-0x8]
  	sub    esp,0xc
  	mov    BYTE[ebp-0x8],0x72
  	mov    BYTE[ebp-0x7],0x65
  	mov    BYTE[ebp-0x6],0x61
  	mov    BYTE[ebp-0x5],0x64
  	mov    BYTE[ebp-0x4],0xa
  	mov    BYTE[ebp-0x3],0x0
  	push   eax
  	 call -0x516a6
  	mov    esp,ebp
  	pop    ebp
  	ret    

__hook_dosFsWrite:
  	push   ebp
  	mov    ebp,esp
  	sub    esp,0x18
  	lea    eax,[ebp-0x8]
  	sub    esp,0xc
  	mov    BYTE[ebp-0x8],0x77
  	mov    BYTE[ebp-0x7],0x72
  	mov    BYTE[ebp-0x6],0x69
  	mov    BYTE[ebp-0x5],0x74
  	mov    BYTE[ebp-0x4],0xa
  	mov    BYTE[ebp-0x3],0x0
  	push   eax
  	 call -0x516d4
  	mov    esp,ebp
  	pop    ebp
  	ret    


hook_dosFsOpen:
  push ebp
  mov ebp,esp
  sub esp,1ch

  call __hook_dosFsOpen

  push 3739f6h
  ret 

hook_dosFsClose:
  push ebp
  mov ebp,esp
  sub esp,1ch

  call __hook_dosFsClose

  push 373e56h
  ret 

hook_dosFsRead:
  push ebp
  mov ebp,esp
  sub esp,14h

  call __hook_dosFsRead

  push 374b46h
  ret 


hook_dosFsWrite:
  push ebp
  mov ebp,esp
  sub esp,14h

  call __hook_dosFsWrite

  push 374bb6h
  ret 

