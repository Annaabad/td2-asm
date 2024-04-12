section .data
    num1 dq 10  ; Primer número
    num2 dq 20  ; Segundo número
    max  dq 0   ; Aquí almacenaremos el número más grande

section .text
    global _start
    _start:

    ; Cargar num1 en rax
    ; Comparar num1 con num2
    ; Si num1 >= num2, saltar a la etiqueta num1_is_max
    ; TODO: COMPLETAR

    MOV RAX, [num1]
    CMP RAX, [num2]
    JGE num1_is_max

    MOV RAX, [num2]
    MOV[max], RAX
    JMP end
    ; Si llegamos aquí, es porque num1 < num2
    ; TODO: COMPLETAR

num1_is_max:
    MOV RAX, [num1]
    MOV[max], RAX
    JMP end

end:
    ; Configurar el valor de salida del programa
    mov edi, dword [max]

    ; Termina el programa
    mov eax, 60
    syscall
