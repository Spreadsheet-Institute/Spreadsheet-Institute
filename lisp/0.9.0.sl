DEFINE(OTHERWISE,TRUE)

DEFINE(YES,TRUE)

DEFINE(CAPITALIZE,LAMBDA(text,CONCAT(UPPER(FIRSTLETTER(text)),RIGHT(text, DECREMENT(LEN(text))))))

DEFINE(COINTOSS,LAMBDA(PICK("Heads","Tails")))

DEFINE(DECREMENT,LAMBDA(x,SUM(x,-1)))

DEFINE(DEFAULT,LAMBDA(optional_argument,fallback_value,IF(PROVIDED(optional_argument),optional_argument,fallback_value)))

DEFINE(FLIPCOIN,LAMBDA([times],LET(counter,DEFAULT(times, 1),IF(LTE(counter, 1),COINTOSS(),VSTACK(COINTOSS(),FLIPCOIN(DECREMENT(counter)))))))

DEFINE(LTE,LAMBDA(x,y,IF(x<=y,TRUE,FALSE)))

DEFINE(MAGIC8BALL,LAMBDA([yes_or_no_question],IF(PROVIDED(yes_or_no_question),PICK("It is certain","Reply hazy, try again","It is decidedly so","Without a doubt","Don't count on it","Yes, definitely","Ask again later","You may rely on it","My reply is no","As I see it, yes","Better not tell you now","Most likely","My sources say no","Outlook good","Cannot predict now","Yes","Outlook not so good","Signs point to yes","Concentrate and ask again","Very doubtful"),"Ask, and you will be answered")))

DEFINE(ROCKPAPERSCISSORS,LAMBDA(throw,LET(human,CAPITALIZE(LOWER(throw)),robot,PICK("Rock","Paper","Scissors"),IFS(CASE(human,robot),FORMAT("It's a tie! {1} vs. {1}",human),CASE(human,"Paper",robot,"Rock"),"You win! Paper covers Rock.",CASE(human,"Paper",robot,"Scissors"),"You lose! Scissors cuts Paper.",CASE(human,"Rock",robot,"Scissors"),"You win! Rock crushes Scissors.",CASE(human,"Rock",robot,"Paper"),"You lose! Paper covers Rock.",CASE(human,"Scissors",robot,"Paper"),"You win! Scissors cuts Paper.",CASE(human,"Scissors",robot,"Rock"),"You lose! Rock crushes Scissors.",OTHERWISE,"Invalid throw. Please choose Rock, Paper, or Scissors."))))

DEFINE(PICK,LAMBDA(_1, [_2], [_3], [_4], [_5],[_6], [_7], [_8], [_9], [_10],[_11], [_12], [_13], [_14], [_15],[_16], [_17], [_18], [_19], [_20],[_21], [_22], [_23], [_24], [_25],LET(count,SUM(IS(_1), IS(_2), IS(_3), IS(_4), IS(_5),IS(_6), IS(_7), IS(_8), IS(_9), IS(_10),IS(_11), IS(_12), IS(_13), IS(_14), IS(_15),IS(_16), IS(_17), IS(_18), IS(_19), IS(_20),IS(_21), IS(_22), IS(_23), IS(_24), IS(_25)),CHOOSE(RANDBETWEEN(1, count), _1, _2, _3, _4, _5, _6, _7, _8, _9, _10,_11, _12, _13, _14, _15,_16, _17, _18, _19, _20,_21, _22, _23, _24, _25))))

DEFINE(PROVIDED,LAMBDA([argument],NOT(ISOMITTED(argument))))

DEFINE(IS,LAMBDA(argument,IF(ISOMITTED(argument), 0, 1)))