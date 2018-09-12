global long_mode_start

; extern kmain	;defined in c file

section .text
bits 64
long_mode_start:
	; load 0 into data segment registers
	mov ax, 0
	mov ss, ax
	mov ds, ax
	mov es, ax
	mov fs, ax
	mov gs, ax

	; print `OKAY` to screen
	mov rax, 0x2f592f412f4b2f4f
	mov qword [0xb8000], rax
	hlt

	; ; start kernel c code
	; ; cli
	; call kmain
	; hlt