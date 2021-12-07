@i
    M = 0

@block_addr
    M = 0

@SCREEN
    D = A
    @address
        M = D
    @block_addr
        M = D


(LOOP)
    @KBD
        D = M
        @KEYPRESSED_ZERO
            D ; JEQ
        @KEYPRESSED_ONE
            D ; JNE
           
    @keyPressed
        D = M
        @KEYPRESSLOOP
            D - 1 ; JEQ

    @DRAW
        0 ; JMP


    @LOOP
    0 ; JMP
(END_LOOP)


(KEYPRESSED_ZERO)
    @keyPressed
        M = 0
    @LOOP
        0 ; JMP
(KEYPRESSED_ONE)
    @keyPressed
        M = 1
    @DRAW
        0 ; JMP


(DRAW)
    @48
        D = A
        @KBD
            D = M - D
            @ERASE
            D ; JEQ


    // LIMIT
    @24064
        D = A
        @address
            D = D - M
            @KEYPRESSLOOP
            D ; JLE

    // ONE
    @49
        D = A
        @KBD
            D = M - D
            @ONE
                D ; JEQ

    // TWO
    @50
        D = A
        @KBD
            D = M - D
            @TWO
                D ; JEQ

    // THREE
    @51
        D = A
        @KBD
            D = M - D
            @THREE
                D ; JEQ

    // FOUR
    @52
        D = A
        @KBD
            D = M - D
            @FOUR
                D ; JEQ

    // FIVE
    @53
        D = A
        @KBD
            D = M - D
            @FIVE
                D ; JEQ
        
    @LOOP
        0 ; JMP


(ERASE)
// if @address == @SCREEN
@SCREEN
    D = A
    @address
        D = M - D
        @KEYPRESSLOOP
        D ; JEQ

// j = 16
@16
    D = A   
    @j
        M = D

@address
    M = M - 1

@i
    M = M - 1
    D = M
    @RESET_REV
        D ; JLT

(ERASE_LOOP)
    @address
        A = M
        M = 0
    
    // address += 32
    @32
        D = A
        @address
            M = M + D

    // j--
    @j
        M = M - 1
        D = M
        @DONE_DRAWING
            D ; JLE

    @ERASE_LOOP
        0 ; JMP



// ONE
(ONE)
    @0
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @0
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @384
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @384
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @384
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @384
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @384
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @384
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @384
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @384
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @384
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @384
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @384
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @384
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @0
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @0
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D

    @block_addr
        D = M
        @address
            M = D

    @DONE_DRAWING
        0 ; JMP

// TWO
(TWO)
    @0
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @0
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @16380
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @16380
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12288
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12288
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12288
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @16380
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @16380
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @16380
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @16380
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @0
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @0
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D

    @block_addr
        D = M
        @address
            M = D

    @DONE_DRAWING
        0 ; JMP

//THREE
(THREE)
    @0
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @0
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @16380
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @16380
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12288
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12288
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12288
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @16380
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @16380
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12288
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12288
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12288
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @16380
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @16380
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @0
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @0
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D

    @block_addr
        D = M
        @address
            M = D

    @DONE_DRAWING
        0 ; JMP
// FOUR
(FOUR)
    @0
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @0
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12300
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12300
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12300
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12300
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12300
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @16380
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @16380
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12288
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12288
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12288
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12288
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12288
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @0
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @0
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D

    @block_addr
        D = M
        @address
            M = D

    @DONE_DRAWING
        0 ; JMP

// FIVE
(FIVE)
    @0
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @0
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @16380
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @16380
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @16380
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @16380
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12288
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12288
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @12288
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @16380
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @16380
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @0
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D
    @0
        D = A
        @address
            A = M
            M = D
    @32
        D = A
        @address
            M = M + D

    @block_addr
        D = M
        @address
            M = D

    @DONE_DRAWING
        0 ; JMP

//
//
//

(RESET_ADDR)
    @2
    D = A
    @block_addr
        M = M - D
        D = M
        @address
            M = D
    @i
        M = M - 1

(DONE_DRAWING)
    @block_addr
        D = M
        @address
            D = M - D
            @RESET_ADDR
                D ; JNE

    @32
        D = A
        @i
            M = M + 1
            D = D - M
            @RESET
                D ; JLE
(CONTINUE)

@address
    M = M + 1
@block_addr
    M = M + 1
@KEYPRESSLOOP
    0 ; JMP




(KEYPRESSLOOP)
    @KBD
        D = M
        @KEYPRESSLOOP
        D ; JNE

    @LOOP
        0 ; JMP




(RESET)
    @i
        M = 0
    @512
        D = A
        @address
            M = M + D
        @block_addr
            M = M + D
    @CONTINUE
    0 ; JMP

(RESET_REV)
    @31
        D = A
        @i
            M = D

    @512
        D = A
        //@i
            //M = D
        @address
            M = M - D
        @block_addr
            M = M - D
    
    @ERASE_LOOP
        0 ; JMP
