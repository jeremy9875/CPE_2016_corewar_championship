.name "Keelzu"
.comment "just an advanced living prog"

begin:
    sti r1, %:live, %1
    sti r1, %:continue, %1
    sti r1, %:forks, %1
    fork %:begin
    ld %1, r3
    ld %2, r4
    zjmp %:begin
    
continue:
        live %1                   
        sti  r15,%0,r14                 
        zjmp %-42                    
        live %42                    
        sti  r15,%0,r14                 
        zjmp %-42 
        live %42
        live %0
        sti  r15,%0,r14 
        zjmp %-42                      
        live %42
        sti  r15,%0,r14 
        sti r12, %0, r11
        fork %:continue
        zjmp %-100
        live %42
        sti r13,%0, r12
        zjmp %-42
        live %42
        sti  r15,%0,r14                 
        zjmp %-42 
        live %0
        zjmp %:continue
        sti r14,%0, r13
        zjmp %-42
        sti  r15,%0,r14                 
        zjmp %-42
        zjmp %:live
    
continue2:
    add r1, r2, r3
    add r2, r3, r1
    add r1, r3, r3
    zjmp %:continue
    add r2, r1, r4
    add r3, r2, r4
    add r4, r1, r5
    add r5, r2, r6
    add r1, r2, r3
    zjmp %:live
    add r2, r3, r1
    add r1, r3, r3
    add r2, r1, r4
    zjmp %:continue2
    add r3, r2, r4
    add r4, r1, r5
    add r5, r2, r6
    add r1, r2, r3
    add r2, r3, r1
    zjmp %:live
    add r1, r3, r3
    add r2, r1, r4
    add r3, r2, r4
    add r4, r1, r5
    add r5, r2, r6
    zjmp %:continue2

forks:
    live %42
    fork %:live
    fork %:continue
    zjmp %:live
    fork %:continue
    fork %:forks
    st r2, 400
    live %2
    st r2, 500
    st r2, 400
    live %3
    st r3, 400
    fork %:live
    st r5, 400
    live %5
    fork %:continue2
    st r5, 400
    st r5, 400
    st r6, 400
    st r6, 400
    live %6
    st r6, 400
    st r7, 400
    st r7, 400
    live %7
    st r3, 400
    st r4, 500
    st r4, 500
    live %4
    fork %:continue
    fork %:continue
    fork %:continue2
    st r2, 400
    st r2, 400
    live %1
    st r2, 400
    st r2, 400
    st r2, 400
    st r3, 400
    st r3, 400
    st r4, 500
    st r4, 500
    zjmp %:forks
    zjmp %:forks
    fork %:continue
    fork %:continue2
	
live:
    live %42
    live %15
    live %0
    live %17
    fork %:live
    fork %:begin
    fork %:continue
    zjmp %:live
