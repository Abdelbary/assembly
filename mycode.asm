
name "I/O Strign program"  

; add your code here
.model small
  db 30,?, 30 dup(' ')
name db $,<' '> 


.data
    input_msg db 0ah,0dh,"your sring is:$"
    msg db 60 dup(?)  ;60 place empty array
    outt db 0ah,0dh,"your string is:$"     
.code   
    call main
    main proc
        mov ax,@data
        mov ds,ax
        
        lea dx,outt
        mov ah,09H
        int 21H
        
        mov si,offset msg 
    input: 
        ;take input from user
        mov ah,1H
        int 21H  
        
        ;check for enter char and disply input msg if ture
        cmp al,13
        je display 
        
        ;move input char to memory
        mov [si],al
        inc si
        jmp input
    
    display:   
        ;display interactive string
        lea dx,outt
        mov ah,09H
        int 21H                    
        ;put end char at the end of input string and load address to DI register
        mov [si],'$'
        mov di,offset msg 
        
        ;print new line and set cruser at the start of the line
        mov dl,13
        mov ah,2
        int 21H  
        
        mov dl,10
        mov ah,2
        int 21h
        
        
    again: 
        cmp [di],'$' ;check for end of string
        je  last
        cmp [di],32 ;check for space
        je  next                             
        
        ;print current char to the prompt
        mov dl,[di]
        mov ah,2h
        int 21H
        
        inc di ;inc to next char in string
        jmp again
    
    next: 
        mov dl,13
        mov ah,2h
        int 21H
        mov dl,10
        mov ah,2h
        int 21H
        inc di
        jmp again
            
    last:
        mov ah,4ch
        int 21h
        
        
        
        
        
        
end
ret