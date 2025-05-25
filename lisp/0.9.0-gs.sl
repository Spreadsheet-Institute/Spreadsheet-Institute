DEFINE(OTHERWISE,TRUE)

DEFINE(COINTOSS,LAMBDA(PICK("Heads","Tails")))

DEFINE(FLIPCOIN,LAMBDA([times],LET(counter,DEFAULT(times, 1),IF(LTE(counter, 1),COINTOSS(),VSTACK(COINTOSS(),FLIPCOIN(DECREMENT(counter)))))))

DEFINE(MAGIC8BALL,LAMBDA([question],IF(PROVIDED(question),PICK("It is certain","Reply hazy, try again","It is decidedly so","Without a doubt","Don't count on it","Yes, definitely","Ask again later","You may rely on it","My reply is no","As I see it, yes","Better not tell you now","Most likely","My sources say no","Outlook good","Cannot predict now","Yes","Outlook not so good","Signs point to yes","Concentrate and ask again","Very doubtful"),"Ask, and you will be answered")))

DEFINE(ROCKPAPERSCISSORS,LAMBDA(throw,LET(human,CAPITALIZE(throw),robot,PICK("Rock","Paper","Scissors"),IFS(CASE(human,robot),FORMAT("It's a tie! {1} vs. {1}",human),CASE(human,"Paper",robot,"Rock"),"You win! Paper covers Rock.",CASE(human,"Paper",robot,"Scissors"),"You lose! Scissors cuts Paper.",CASE(human,"Rock",robot,"Scissors"),"You win! Rock crushes Scissors.",CASE(human,"Rock",robot,"Paper"),"You lose! Paper covers Rock.",CASE(human,"Scissors",robot,"Paper"),"You win! Scissors cuts Paper.",CASE(human,"Scissors",robot,"Rock"),"You lose! Rock crushes Scissors.",OTHERWISE,"Invalid throw. Please choose Rock, Paper, or Scissors."))))
