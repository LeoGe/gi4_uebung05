SECTION .data
	a DD 20000000
	b DD 38540
	result_high DD 0
	result_low DD 0
	message DB "result : %llu", 10, 0 
	
SECTION	.text
	global main
	extern printf

main:
	push edx ;save edx to stack
	mov eax, [a]
	imul dword [b]; multiply a (in eax) and b, low result in eax
	mov [result_low], eax
	jo save_high; if overflow jump to save_high
	
end:	
	pop edx; restore edx from stack
	push dword [result_high]
	push dword [result_low]
	push message
	call printf
	add esp, 12

	mov eax, 1
	mov ebx, 0
	int 0x80

save_high:
	mov [result_high], edx; save high result in ebx
	jmp end
