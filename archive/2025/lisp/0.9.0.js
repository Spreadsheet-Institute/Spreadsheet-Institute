// DEFINE(DECREMENT,LAMBDA(x, SUM(x, -1)))
/**
 * Takes 1 away from the given number.
 * @param {number} x The number to decrement.
 * @return x - 1.
 * @customfunction
*/
function DECREMENT() {
    return x - 1;
}

// DEFINE(COINTOSS,LAMBDA(PICK("Heads","Tails")))
/**
 * Returns, at random, either "Heads" or "Tails".
 * @return "Heads" or "Tails" as text.
 * @customfunction
*/
function COINTOSS() {
    let sides = ["Heads", "Tails"];
    let which = Math.floor(Math.random() * 2);
    return sides[which];
}

// DEFINE(FLIPCOIN,LAMBDA([times],LET(counter,DEFAULT(times, 1),IF(LTE(counter, 1),COINTOSS(),VSTACK(COINTOSS(),FLIPCOIN(DECREMENT(counter)))))))
/**
 * Call COINTOSS as many times as the (optional) number provided.
 * @param {number} times The number of coin tosses.
 * @return A list of coin toss results.
 * @customfunction
*/
function FLIPCOIN(input = 1) {
    if (input <= 1) {
        return COINTOSS();
    } else {
        return VSTACK(
            COINTOSS(),
            FLIPCOIN(DECREMENT(input)));
    }
}

// DEFINE(MAGIC8BALL,LAMBDA([question],IF(PROVIDED(question),PICK("It is certain","Reply hazy, try again","It is decidedly so","Without a doubt","Don't count on it","Yes, definitely","Ask again later","You may rely on it","My reply is no","As I see it, yes","Better not tell you now","Most likely","My sources say no","Outlook good","Cannot predict now","Yes","Outlook not so good","Signs point to yes","Concentrate and ask again","Very doubtful"),"Ask, and you will be answered")))
/**
 * Ask a "Yes or No" question, and it will be answered.
 * @param {text} question The question to be answered.
 * @return The answer to the given question.
 * @customfunction
*/
function MAGIC8BALL(question = "") {
    if (question.trim().length < 1) {
        return "Ask, and you will be answered";
    } else {
        return PICK(
            "It is certain",
            "Reply hazy, try again",
            "It is decidedly so",
            "Without a doubt",
            "Don't count on it",
            "Yes, definitely",
            "Ask again later",
            "You may rely on it",
            "My reply is no",
            "As I see it, yes",
            "Better not tell you now",
            "Most likely",
            "My sources say no",
            "Outlook good",
            "Cannot predict now",
            "Yes",
            "Outlook not so good",
            "Signs point to yes",
            "Concentrate and ask again",
            "Very doubtful");
    }
}

//DEFINE(ROCKPAPERSCISSORS,LAMBDA(choice,LET(human,CAPITALIZE(choice),robot,PICK("Rock","Paper","Scissors"),IFS(CASE(human,robot),FORMAT("It's a tie! {1} vs. {1}",human),CASE(human,"Paper",robot,"Rock"),"You win! Paper covers Rock.",CASE(human,"Paper",robot,"Scissors"),"You lose! Scissors cuts Paper.",CASE(human,"Rock",robot,"Scissors"),"You win! Rock crushes Scissors.",CASE(human,"Rock",robot,"Paper"),"You lose! Paper covers Rock.",CASE(human,"Scissors",robot,"Paper"),"You win! Scissors cuts Paper.",CASE(human,"Scissors",robot,"Rock"),"You lose! Rock crushes Scissors.",OTHERWISE,"Invalid throw. Please choose Rock, Paper, or Scissors."))))
/**
 * Play "Rock, Paper, Scissors".
 * @param {string} throw "Rock", "Paper", or "Scissors".
 * @return The result of the round.
 * @customfunction
*/
function ROCKPAPERSCISSORS(choice = "") {
    let human = CAPITALIZE(choice);
    let robot = PICK(
        "Rock",
        "Paper",
        "Scissors"
    );
    let result = "";
    if (CASE(human, robot)) {
        result = FORMAT("It's a tie! {1} vs. {1}", human);
    } else if (CASE(human,"Paper",robot,"Rock")) {
        result = "You win! Paper covers Rock.";
    } else if (CASE(human,"Paper",robot,"Scissors")) {
        result = "You lose! Scissors cut Paper.";
    } else if (CASE(human,"Rock",robot,"Scissors")) {
        result = "You win! Rock crushes Scissors.";
    } else if (CASE(human,"Rock",robot,"Paper")) {
        result = "You lose! Paper covers Rock.";
    } else if (CASE(human,"Scissors",robot,"Paper")) {
        result = "You win! Scissors cut Paper.";
    } else if (CASE(human,"Scissors",robot,"Rock")) {
        result = "You lose! Rock crushes Scissors.";
    }
    return result;
}

//DEFINE(PICK,LAMBDA(_1, [_2], [_3], [_4], [_5],[_6], [_7], [_8], [_9], [_10],[_11], [_12], [_13], [_14], [_15],[_16], [_17], [_18], [_19], [_20],[_21], [_22], [_23], [_24], [_25],LET(count,SUM(IS(_1), IS(_2), IS(_3), IS(_4), IS(_5),IS(_6), IS(_7), IS(_8), IS(_9), IS(_10),IS(_11), IS(_12), IS(_13), IS(_14), IS(_15),IS(_16), IS(_17), IS(_18), IS(_19), IS(_20),IS(_21), IS(_22), IS(_23), IS(_24), IS(_25)),CHOOSE(RANDBETWEEN(1, count), _1, _2, _3, _4, _5, _6, _7, _8, _9, _10,_11, _12, _13, _14, _15,_16, _17, _18, _19, _20,_21, _22, _23, _24, _25))))
/**
 * Randomly select one of the provided arguments.
 * @param {number} input The number to double.
 * @return The input multiplied by 2.
 * @customfunction
*/
function PICK(...choices) {
  return choices[Math.floor(Math.random() * choices.length)];
}

// DEFINE(IS,LAMBDA(argument,IF(ISOMITTED(argument), 0, 1)))
/**
 * Return either 0, if the given argument is omitted, or 1, if provided.
 * @param {any} argument The argument to check for omission.
 * @return 0 if omitted, 1 if provided.
 * @customfunction
*/
function IS(argument) {
  if (ISOMITTED(argument)) {
    return 0;
  } else {
    return 1;
  }
}