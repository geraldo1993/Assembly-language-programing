.model tiny ; com program , Code Data & Stack in one 64K Segment
.code ; code segment
org 100h ; code starts at offset 100h




main proc near

mov ah,09h ; function to display a string
mov dx,offset message ; offset of Message string terminating with $
int 21h ; dos interrupt

mov ah,4ch ; function to terminate
mov al,00 
int 21h ; Dos Interrupt

endp 
message db "Hello World $" ; Message to be displayed terminating with a $

end main