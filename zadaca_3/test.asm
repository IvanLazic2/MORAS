// start = 100
@100
    D = A
    @start
        M = D

// R0 = 7
@7
    D = A
@R0
    M = D

// arr = [64, 34, 25, 12, 22, 11, 1]
@64
    D = A
    @100
        M = D
@34
    D = A
    @101
        M = D
@25
    D = A
    @102
        M = D
@12
    D = A
    @103
        M = D

@22
    D = A
    @104
        M = D

@11
    D = A
    @105
        M = D

@1
    D = A
    @106
        M = D

// n = R0
@R0
    D=M
    @n  
        M=D

// i = n - 1
@n
    D = M
    @i
        M = D - 1

$WHILE(i)
    // j = n - i
    @n
        D = M
        @i
            D = D - M
            @j
                M = D

    $WHILE(j)
        // curr = j, prev = j - 1
        @start
            D = M
            @j
                D = D + M
                @curr
                    M = D
                @prev
                    M = D - 1

        // if arr[j - 1] > arr[j]
        @prev
            A = M
            D = M
            @curr
                A = M
                D = D - M
                @SWAP
                    D ; JGT

        (CONTINUE)

        @j
            M = M - 1

    $END

    @i
        M = M - 1

$END

(END)
@END
0 ; JMP

(SWAP)
    @prev
        A = M
        D = M
        @temp
            M = D
        
    @curr
        A = M
        D = M
        @prev
            A = M
            M = D

    @temp
        D = M
        @curr
            A = M
            M = D

    @CONTINUE
        0 ; JMP
