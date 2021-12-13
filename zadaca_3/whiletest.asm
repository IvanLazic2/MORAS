@res
    M = 0

@10
    D = A
    @n
        M = D

@10
    D = A
    @m
        M = D

(TEST)

$WHILE(n)
    $WHILE(m)

        @n
            D = M
            @m
            D = D + M
            @res
                M = M + D

        @m
            M = M - 1
    $END

    @n
        M = M - 1

$END

(END)
@END
0 ; JMP
