section .text
global _start
s:
    db 'Arch is the best!',0ah 
l equ $-s 
_start:
  mov rax,1
  mov rdi,1
  mov rsi,s 
  mov rdx,l
  syscall
  mov rax,60
  xor rdi,rdi
  syscall
