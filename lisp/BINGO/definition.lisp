DEFINE(
    BINGO,
    LAMBDA(
        [list_of_options],
        IF(
            PROVIDED?(list_of_options),
            SHUFFLE(list_of_options),
            LET(
                shuffled_bingo_balls,
                    SHUFFLE(
                        SEQUENCE(
                            75,
                            1,
                            1)),
                HSTACK(
                    MAKEARRAY(
                        75,
                        1,
                        LAMBDA(
                            ball_number,
                            _col,
                            IFS(
                                BETWEEN?(ball_number, 1, 15),
                                    "B",
                                BETWEEN?(ball_number, 16, 30),
                                    "I",
                                BETWEEN?(ball_number, 31, 45),
                                    "N",
                                BETWEEN?(ball_number, 46, 60),
                                    "G",
                                OTHERWISE,
                                    "O"))),
                    shuffled_bingo_balls)))))