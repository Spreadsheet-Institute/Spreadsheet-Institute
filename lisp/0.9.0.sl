DEFINE(OTHERWISE,TRUE)

DEFINE(NO,FALSE)

DEFINE(YES,TRUE)

DEFINE(CAPITALIZE,LAMBDA(text,CONCAT(UPPER(FIRSTLETTER(text)),RIGHT(text, DECREMENT(LEN(text))))))

DEFINE(CAR,LAMBDA(range,INDEX(range,1,1)))

DEFINE(CASE,LAMBDA(_1a, _1b, [_2a], [_2b], [_3a], [_3b], [_4a], [_4b], [_5a], [_5b],[_6a], [_6b], [_7a], [_7b], [_8a], [_8b], [_9a], [_9b], [_10a], [_10b],LET(case1,EQUAL(_1a, _1b),case2,IFOMITTED(_2a, TRUE, EQUAL(_2a, _2b)),case3,IFOMITTED(_3a, TRUE, EQUAL(_3a, _3b)),case4,IFOMITTED(_4a, TRUE, EQUAL(_4a, _4b)),case5,IFOMITTED(_5a, TRUE, EQUAL(_5a, _5b)),case6,IFOMITTED(_6a, TRUE, EQUAL(_6a, _6b)),case7,IFOMITTED(_7a, TRUE, EQUAL(_7a, _7b)),case8,IFOMITTED(_8a, TRUE, EQUAL(_8a, _8b)),case9,IFOMITTED(_9a, TRUE, EQUAL(_9a, _9b)),case10,IFOMITTED(_10a, TRUE, EQUAL(_10a, _10b)),AND(case1,case2,case3,case4,case5,case6,case7,case8,case9,case10))))

DEFINE(CELLNAME,LAMBDA([reference],[absolute],LET(address,IFOMITTED(reference,CELL("address"),CELL("address",reference)),display_absolute,DEFAULT(absolute,NO),IF(display_absolute,address,SUBSTITUTE(address,"$","")))))

DEFINE(CDR,LAMBDA(range,IF(GREATERTHAN(COLUMNS(range),ROWS(range)),MAKEARRAY(1,DECREMENT(COLUMNS(range)),LAMBDA(_row,col,INDEX(range,1,INCREMENT(col)))),MAKEARRAY(DECREMENT(ROWS(range)),1,LAMBDA(row,_col,INDEX(range,INCREMENT(row),1))))))

DEFINE(COINTOSS,LAMBDA(PICK("Heads","Tails")))

DEFINE(CONS,LAMBDA(value,range,IF(GREATERTHAN(COLUMNS(range),ROWS(range)),HSTACK(value,range),VSTACK(value,range))))

DEFINE(CONTAINS,LAMBDA(haystack,needle,IF(AND(EQUAL(COUNTA(haystack),1),EQUAL(COUNTA(needle),1)),ISNUMBER(SEARCH(needle,haystack)),OR(EXACT(needle,haystack)))))

DEFINE(DECREMENT,LAMBDA(x,[times],SUM(x,PRODUCT(-1,DEFAULT(times,1)))))

DEFINE(DEFAULT,LAMBDA(optional_argument,fallback_value,IF(PROVIDED(optional_argument),optional_argument,fallback_value)))

DEFINE(EQUAL,LAMBDA(a,b,a=b))

DEFINE(FILENAME,LAMBDA([reference],CELL("filename",DEFAULT(reference,INDIRECT(CONCAT("A1"))))))

DEFINE(FIRST,LAMBDA(range,CAR(range)))

DEFINE(FIRSTLETTER,LAMBDA(text,LEFT(text,1)))

DEFINE(FIRSTWORD,LAMBDA(text,LEFT(TRIM(text),DECREMENT(FIND(" ",TRIM(text))))))

DEFINE(FLIPCOIN,LAMBDA([times],LET(counter,DEFAULT(times, 1),IF(LTE(counter, 1),COINTOSS(),VSTACK(COINTOSS(),FLIPCOIN(DECREMENT(counter)))))))

DEFINE(FOREACH,LAMBDA(range,function_to_apply,MAP(range,function_to_apply)))

DEFINE(FORMAT,LAMBDA(template_text,first_value,[second_value],[third_value],[fourth_value],[fifth_value],LET(_after1,SUBSTITUTE(template_text,"{1}", first_value),_after2,IF(PROVIDED(second_value),SUBSTITUTE(_after1,"{2}", second_value),_after1),_after3,IF(PROVIDED(third_value),SUBSTITUTE(_after2,"{3}", third_value),_after2),_after4,IF(PROVIDED(fourth_value),SUBSTITUTE(_after3,"{4}", fourth_value),_after3),IF(PROVIDED(fifth_value),SUBSTITUTE(_after4,"{5}", fifth_value),_after4))))

DEFINE(GREATERTHAN,LAMBDA(x,y,IF(x > y,TRUE,FALSE)))

DEFINE(GTE,LAMBDA(x,y,IF(x >= y,TRUE,FALSE)))

DEFINE(HLIST,LAMBDA([_1], [_2], [_3], [_4], [_5],[_6], [_7], [_8], [_9], [_10],[_11], [_12], [_13], [_14], [_15],[_16], [_17], [_18], [_19], [_20],[_21], [_22], [_23], [_24], [_25],LET(column_count,SUM(IS(_1), IS(_2), IS(_3), IS(_4), IS(_5),IS(_6), IS(_7), IS(_8), IS(_9), IS(_10),IS(_11), IS(_12), IS(_13), IS(_14), IS(_15),IS(_16), IS(_17), IS(_18), IS(_19), IS(_20),IS(_21), IS(_22), IS(_23), IS(_24), IS(_25)),IF(EQUAL(column_count,0),"()",MAKEARRAY(1,column_count,LAMBDA(_row,col,CHOOSE(col,_1, _2, _3, _4, _5,_6, _7, _8, _9, _10,_11, _12, _13, _14, _15,_16, _17, _18, _19, _20,_21, _22, _23, _24, _25)))))))

DEFINE(IFOMITTED,LAMBDA(optional_argument,value_if_omitted,value_if_provided,IF(ISOMITTED(optional_argument),value_if_omitted,value_if_provided)))

DEFINE(INCREMENT,LAMBDA(x,[times],SUM(x,PRODUCT(1,DEFAULT(times,1)))))

DEFINE(ISHORIZONTAL,LAMBDA(range,IF(GREATERTHAN(COLUMNS(range),ROWS(range)),TRUE,FALSE)))

DEFINE(ISVERTICAL,LAMBDA(range,IF(GREATERTHAN(ROWS(range),COLUMNS(range)),TRUE,FALSE)))

DEFINE(LAST,LAMBDA(range,IF(GREATERTHAN(COLUMNS(range),ROWS(range)),INDEX(range,1,COUNTA(range)),INDEX(range,COUNTA(range),1))))

DEFINE(LENGTH,LAMBDA(input,IF(EQUAL(COUNTA(input),1),IF(EQUAL(input,"()"),0,LEN(input)),COUNTA(input))))

DEFINE(LESSTHAN,LAMBDA(x,y,IF(x < y,TRUE,FALSE)))

DEFINE(LTE,LAMBDA(x,y,IF(x<=y,TRUE,FALSE)))

DEFINE(MAGIC8BALL,LAMBDA([yes_or_no_question],IF(PROVIDED(yes_or_no_question),PICK("It is certain","Reply hazy, try again","It is decidedly so","Without a doubt","Don't count on it","Yes, definitely","Ask again later","You may rely on it","My reply is no","As I see it, yes","Better not tell you now","Most likely","My sources say no","Outlook good","Cannot predict now","Yes","Outlook not so good","Signs point to yes","Concentrate and ask again","Very doubtful"),"Ask, and you will be answered")))

DEFINE(RATIO,LAMBDA(numerator,denominator,numerator / denominator))

DEFINE(REST,LAMBDA(range,CDR(range)))

DEFINE(REVERSE,LAMBDA(range,IF(GREATERTHAN(COLUMNS(range),ROWS(range)),MAKEARRAY(1,COLUMNS(range),LAMBDA(_row,col,INDEX(range,1,DECREMENT(LENGTH(range),DECREMENT(col))))),MAKEARRAY(ROWS(range),1,LAMBDA(row,_col,INDEX(range,DECREMENT(LENGTH(range),DECREMENT(row)),1))))))

DEFINE(ROCKPAPERSCISSORS,LAMBDA(throw,LET(human,CAPITALIZE(LOWER(DEFAULT(throw,""))),robot,PICK("Rock","Paper","Scissors"),IFS(CASE(human,robot),FORMAT("It's a tie! {1} vs. {1}",human),CASE(human,"Paper",robot,"Rock"),"You win! Paper covers Rock.",CASE(human,"Paper",robot,"Scissors"),"You lose! Scissors cuts Paper.",CASE(human,"Rock",robot,"Scissors"),"You win! Rock crushes Scissors.",CASE(human,"Rock",robot,"Paper"),"You lose! Paper covers Rock.",CASE(human,"Scissors",robot,"Paper"),"You win! Scissors cuts Paper.",CASE(human,"Scissors",robot,"Rock"),"You lose! Rock crushes Scissors.",OTHERWISE,"Invalid throw. Please choose Rock, Paper, or Scissors."))))

DEFINE(PICK,LAMBDA(_1, [_2], [_3], [_4], [_5],[_6], [_7], [_8], [_9], [_10],[_11], [_12], [_13], [_14], [_15],[_16], [_17], [_18], [_19], [_20],[_21], [_22], [_23], [_24], [_25],LET(count,SUM(IS(_1), IS(_2), IS(_3), IS(_4), IS(_5),IS(_6), IS(_7), IS(_8), IS(_9), IS(_10),IS(_11), IS(_12), IS(_13), IS(_14), IS(_15),IS(_16), IS(_17), IS(_18), IS(_19), IS(_20),IS(_21), IS(_22), IS(_23), IS(_24), IS(_25)),CHOOSE(RANDBETWEEN(1, count), _1, _2, _3, _4, _5, _6, _7, _8, _9, _10,_11, _12, _13, _14, _15,_16, _17, _18, _19, _20,_21, _22, _23, _24, _25))))

DEFINE(PROVIDED,LAMBDA([argument],NOT(ISOMITTED(argument))))

DEFINE(IS,LAMBDA(argument,IF(ISOMITTED(argument), 0, 1)))

DEFINE(SHEETNAME,LAMBDA([reference],LET(filename,FILENAME(reference),bracket_position,FIND("]",filename),RIGHT(filename,DECREMENT(LEN(filename),bracket_position)))))

DEFINE(SQUAREROOT,LAMBDA(x,POWER(x,0.5)))

DEFINE(VLIST,LAMBDA([_1], [_2], [_3], [_4], [_5],[_6], [_7], [_8], [_9], [_10],[_11], [_12], [_13], [_14], [_15],[_16], [_17], [_18], [_19], [_20],[_21], [_22], [_23], [_24], [_25],LET(row_count,SUM(IS(_1), IS(_2), IS(_3), IS(_4), IS(_5),IS(_6), IS(_7), IS(_8), IS(_9), IS(_10),IS(_11), IS(_12), IS(_13), IS(_14), IS(_15),IS(_16), IS(_17), IS(_18), IS(_19), IS(_20),IS(_21), IS(_22), IS(_23), IS(_24), IS(_25)),IF(EQUAL(row_count,0),"()",MAKEARRAY(row_count,1,LAMBDA(row,_col,CHOOSE(row,_1, _2, _3, _4, _5,_6, _7, _8, _9, _10,_11, _12, _13, _14, _15,_16, _17, _18, _19, _20,_21, _22, _23, _24, _25)))))))