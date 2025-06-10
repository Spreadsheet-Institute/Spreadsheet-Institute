DEFINE(ALL,LAMBDA(truth_values,AND(truth_values)))

DEFINE(ALPHABET,LAMBDA([vertical],LET(alphabet,HSTACK({"A","B","C","D","E","F"},{"G","H","I","J","K","L"},{"M","N","O","P","Q","R"},{"S","T","U","V","W","X","Y","Z"}),IF(DEFAULT(vertical,NO),TRANSPOSE(alphabet),alphabet))))

DEFINE(APPEND,LAMBDA(head,body,IF(GREATERTHAN(COLUMNS(body),ROWS(body)),HSTACK(head,body),VSTACK(head,body))))

DEFINE(APPLY,LAMBDA(function,[argument1],[argument2],[argument3],[argument4],[argument5],[argument6],[argument7],[argument8],[argument9],[argument10],SWITCH(ARITY(argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9,argument10),0,function(),1,function(argument1),2,function(argument1, argument2),3,function(argument1, argument2, argument3),4,function(argument1, argument2, argument3, argument4),5,function(argument1, argument2, argument3, argument4, argument5),6,function(argument1, argument2, argument3, argument4, argument5, argument6),7,function(argument1, argument2, argument3, argument4, argument5, argument6, argument7),8,function(argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8),9,function(argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9),function(argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10))))

DEFINE(ARITY,LAMBDA([_arg1], [_arg2], [_arg3], [_arg4], [_arg5],[_arg6], [_arg7], [_arg8], [_arg9], [_arg10],[_arg11], [_arg12], [_arg13], [_arg14], [_arg15],[_arg16], [_arg17], [_arg18], [_arg19], [_arg20],[_arg21], [_arg22], [_arg23], [_arg24], [_arg25],SUM(IS(_arg1), IS(_arg2), IS(_arg3), IS(_arg4), IS(_arg5),IS(_arg6), IS(_arg7), IS(_arg8), IS(_arg9), IS(_arg10),IS(_arg11), IS(_arg12), IS(_arg13), IS(_arg14), IS(_arg15),IS(_arg16), IS(_arg17), IS(_arg18), IS(_arg19), IS(_arg20),IS(_arg21), IS(_arg22), IS(_arg23), IS(_arg24), IS(_arg25))))

DEFINE(ASSERT,LAMBDA(condition,[message],IF(condition,TRUE,DEFAULT(message,"Assertion failed"))))

DEFINE(CAPITALIZE,LAMBDA(text,CONCAT(UPPER(FIRSTLETTER(text)),RIGHT(text, DECREMENT(LEN(text))))))

DEFINE(CAR,LAMBDA(range,INDEX(range,1,1)))

DEFINE(CASE,LAMBDA(_1a, _1b, [_2a], [_2b], [_3a], [_3b], [_4a], [_4b], [_5a], [_5b],[_6a], [_6b], [_7a], [_7b], [_8a], [_8b], [_9a], [_9b], [_10a], [_10b],LET(case1,EQUAL(_1a, _1b),case2,IFOMITTED(_2a, TRUE, EQUAL(_2a, _2b)),case3,IFOMITTED(_3a, TRUE, EQUAL(_3a, _3b)),case4,IFOMITTED(_4a, TRUE, EQUAL(_4a, _4b)),case5,IFOMITTED(_5a, TRUE, EQUAL(_5a, _5b)),case6,IFOMITTED(_6a, TRUE, EQUAL(_6a, _6b)),case7,IFOMITTED(_7a, TRUE, EQUAL(_7a, _7b)),case8,IFOMITTED(_8a, TRUE, EQUAL(_8a, _8b)),case9,IFOMITTED(_9a, TRUE, EQUAL(_9a, _9b)),case10,IFOMITTED(_10a, TRUE, EQUAL(_10a, _10b)),AND(case1,case2,case3,case4,case5,case6,case7,case8,case9,case10))))

DEFINE(CELLNAME,LAMBDA([reference],[absolute],LET(address,IFOMITTED(reference,CELL("address"),CELL("address",reference)),display_absolute,DEFAULT(absolute,NO),IF(display_absolute,address,SUBSTITUTE(address,"$","")))))

DEFINE(CDR,LAMBDA(range,IF(GREATERTHAN(COLUMNS(range),ROWS(range)),MAKEARRAY(1,DECREMENT(COLUMNS(range)),LAMBDA(_row,col,INDEX(range,1,INCREMENT(col)))),MAKEARRAY(DECREMENT(ROWS(range)),1,LAMBDA(row,_col,INDEX(range,INCREMENT(row),1))))))

DEFINE(COINTOSS,LAMBDA(PICK("Heads","Tails")))

DEFINE(CONS,LAMBDA(value,range,IF(GREATERTHAN(COLUMNS(range),ROWS(range)),HSTACK(value,range),VSTACK(value,range))))

DEFINE(CONTAINS,LAMBDA(haystack,needle,IF(AND(EQUAL(COUNTA(haystack),1),EQUAL(COUNTA(needle),1)),ISNUMBER(SEARCH(needle,haystack)),OR(EXACT(needle,haystack)))))

DEFINE(CURRY,LAMBDA(function,argument1,LAMBDA(argument2,function(argument1,argument2))))

DEFINE(DECREMENT,LAMBDA(x,[times],SUM(x,PRODUCT(-1,DEFAULT(times,1)))))

DEFINE(DEFAULT,LAMBDA(optional_argument,fallback_value,IF(PROVIDED(optional_argument),optional_argument,fallback_value)))

DEFINE(DICEROLL,LAMBDA(PICK(1,2,3,4,5,6)))

DEFINE(DIFFERENCE,LAMBDA(minuend,subtrahend,minuend-subtrahend))

DEFINE(EQUAL,LAMBDA(a,b,a=b))

DEFINE(FILENAME,LAMBDA([reference],CELL("filename",DEFAULT(reference,INDIRECT(CONCAT("A1"))))))

DEFINE(FIRST,LAMBDA(range,CAR(range)))

DEFINE(FIRSTCOLUMN,LAMBDA(range,INDEX(range,0,1)))

DEFINE(FIRSTLETTER,LAMBDA(text,LEFT(text,1)))

DEFINE(FIRSTROW,LAMBDA(range,INDEX(range,1,0)))

DEFINE(FIRSTWORD,LAMBDA(text,LEFT(TRIM(text),DECREMENT(FIND(" ",TRIM(text))))))

DEFINE(FLIPCOIN,LAMBDA([times],LET(counter,DEFAULT(times, 1),IF(LTE(counter, 1),COINTOSS(),VSTACK(COINTOSS(),FLIPCOIN(DECREMENT(counter)))))))

DEFINE(FOREACH,LAMBDA(range,function_to_apply,MAP(range,function_to_apply)))

DEFINE(FORMAT,LAMBDA(template_text,first_value,[second_value],[third_value],[fourth_value],[fifth_value],[sixth_value],[seventh_value],[eigth_value],[ninth_value],[tenth_value],LET(_after1,SUBSTITUTE(template_text,"{1}", first_value),_after2,IF(PROVIDED(second_value),SUBSTITUTE(_after1,"{2}", second_value),_after1),_after3,IF(PROVIDED(third_value),SUBSTITUTE(_after2,"{3}", third_value),_after2),_after4,IF(PROVIDED(fourth_value),SUBSTITUTE(_after3,"{4}", fourth_value),_after3),_after5,IF(PROVIDED(fifth_value),SUBSTITUTE(_after4,"{5}", fifth_value),_after4),_after6,IF(PROVIDED(sixth_value),SUBSTITUTE(_after5,"{6}", sixth_value),_after5),_after7,IF(PROVIDED(seventh_value),SUBSTITUTE(_after6,"{7}", seventh_value),_after6),_after8,IF(PROVIDED(eigth_value),SUBSTITUTE(_after7,"{8}", eigth_value),_after7),_after9,IF(PROVIDED(ninth_value),SUBSTITUTE(_after8,"{9}", ninth_value),_after8),IF(PROVIDED(tenth_value),SUBSTITUTE(_after9,"{10}", tenth_value),_after9))))

DEFINE(FULLDECK,LAMBDA([vertical],LET(full_deck,HSTACK({"AS","KS","QS","JS","XS","9S","8S","7S","6S","5S","4S","3S","2S"},{"AH","KH","QH","JH","XH","9H","8H","7H","6H","5H","4H","3H","2H"},{"AD","KD","QD","JD","XD","9D","8D","7D","6D","5D","4D","3D","2D"},{"AC","KC","QC","JC","XC","9C","8C","7C","6C","5C","4C","3C","2C"}),IF(DEFAULT(vertical,FALSE),TRANSPOSE(full_deck),full_deck))))

DEFINE(GREATERTHAN,LAMBDA(x,y,IF(x > y,TRUE,FALSE)))

DEFINE(GTE,LAMBDA(x,y,IF(x >= y,TRUE,FALSE)))

DEFINE(HLIST,LAMBDA([_1], [_2], [_3], [_4], [_5],[_6], [_7], [_8], [_9], [_10],[_11], [_12], [_13], [_14], [_15],[_16], [_17], [_18], [_19], [_20],[_21], [_22], [_23], [_24], [_25],LET(column_count,SUM(IS(_1), IS(_2), IS(_3), IS(_4), IS(_5),IS(_6), IS(_7), IS(_8), IS(_9), IS(_10),IS(_11), IS(_12), IS(_13), IS(_14), IS(_15),IS(_16), IS(_17), IS(_18), IS(_19), IS(_20),IS(_21), IS(_22), IS(_23), IS(_24), IS(_25)),IF(EQUAL(column_count,0),"()",MAKEARRAY(1,column_count,LAMBDA(_row,col,CHOOSE(col,_1, _2, _3, _4, _5,_6, _7, _8, _9, _10,_11, _12, _13, _14, _15,_16, _17, _18, _19, _20,_21, _22, _23, _24, _25)))))))

DEFINE(ID,LAMBDA(input,input))

DEFINE(IFBLANK,LAMBDA(cell_reference,value_if_blank,[value_if_not_blank],IF(OR(ISBLANK(cell_reference),EQUAL(cell_reference,""),value_if_blank,DEFAULT(value_if_not_blank, cell_reference)))))

DEFINE(IFOMITTED,LAMBDA(optional_argument,value_if_omitted,value_if_provided,IF(ISOMITTED(optional_argument),value_if_omitted,value_if_provided)))

DEFINE(INCREMENT,LAMBDA(x,[times],SUM(x,DEFAULT(times,1))))

DEFINE(INDICES,LAMBDA(subset,superset,LET(horizontal_subset,IF(VERTICAL?(subset),TRANSPOSE(subset),subset),horizontal_superset,IF(VERTICAL?(superset),TRANSPOSE(superset),superset),MAKEARRAY(1,IF(RANGE?(horizontal_subset),LENGTH(horizontal_subset),1),LAMBDA(_row,col,MATCH(INDEX(horizontal_subset,1,col),horizontal_superset,FALSE))))))

DEFINE(IS,LAMBDA(argument,IF(ISOMITTED(argument), 0, 1)))

DEFINE(ISATOM,LAMBDA(input,MEMBER(TYPESTRING(input),VLIST("Number","String","Error"))))

DEFINE(HORIZONTAL?,LAMBDA(range,IF(GREATERTHAN(COLUMNS(range),ROWS(range)),TRUE,FALSE)))

DEFINE(RANGE?,LAMBDA(input,EQUAL(TYPESTRING(input),"Range")))

DEFINE(VERTICAL?,LAMBDA(range,IF(GREATERTHAN(ROWS(range),COLUMNS(range)),TRUE,FALSE)))

DEFINE(LAST,LAMBDA(range,IF(GREATERTHAN(COLUMNS(range),ROWS(range)),INDEX(range,1,COUNTA(range)),INDEX(range,COUNTA(range),1))))

DEFINE(LENGTH,LAMBDA(input,IF(EQUAL(COUNTA(input),1),IF(EQUAL(input,"()"),0,LEN(input)),COUNTA(input))))

DEFINE(LESSTHAN,LAMBDA(x,y,IF(x < y,TRUE,FALSE)))

DEFINE(LTE,LAMBDA(x,y,IF(x<=y,TRUE,FALSE)))

DEFINE(MAGIC8BALL,LAMBDA([yes_or_no_question],IF(PROVIDED(yes_or_no_question),PICK("It is certain","Reply hazy, try again","It is decidedly so","Without a doubt","Don't count on it","Yes, definitely","Ask again later","You may rely on it","My reply is no","As I see it, yes","Better not tell you now","Most likely","My sources say no","Outlook good","Cannot predict now","Yes","Outlook not so good","Signs point to yes","Concentrate and ask again","Very doubtful"),"Ask, and you will be answered")))

DEFINE(MEMBER,LAMBDA(needle,haystack,OR(EXACT(needle, haystack))))

DEFINE(NEGATIVE?,LAMBDA(x,LESSTHAN(x,0)))

DEFINE(NO,FALSE)

DEFINE(ONE?,LAMBDA(x,EQUAL(x,1)))

DEFINE(OTHERWISE,TRUE)

DEFINE(PICK,LAMBDA(_1, [_2], [_3], [_4], [_5],[_6], [_7], [_8], [_9], [_10],[_11], [_12], [_13], [_14], [_15],[_16], [_17], [_18], [_19], [_20],[_21], [_22], [_23], [_24], [_25],LET(count,SUM(IS(_1), IS(_2), IS(_3), IS(_4), IS(_5),IS(_6), IS(_7), IS(_8), IS(_9), IS(_10),IS(_11), IS(_12), IS(_13), IS(_14), IS(_15),IS(_16), IS(_17), IS(_18), IS(_19), IS(_20),IS(_21), IS(_22), IS(_23), IS(_24), IS(_25)),CHOOSE(RANDBETWEEN(1, count), _1, _2, _3, _4, _5, _6, _7, _8, _9, _10,_11, _12, _13, _14, _15,_16, _17, _18, _19, _20,_21, _22, _23, _24, _25))))

DEFINE(POSITIVE?,LAMBDA(x,GREATERTHAN(x,0)))

DEFINE(PROVIDED,LAMBDA([argument],NOT(ISOMITTED(argument))))

DEFINE(QUESTION,LAMBDA(knowledgebase,fragment1,[fragment2],[fragment3],[fragment4],[fragment5],[fragment6],[fragment7],[fragment8],[fragment9],[fragment10],LET(arity,ARITY(fragment1,fragment2,fragment3,fragment4,fragment5,fragment6,fragment7,fragment8,fragment9,fragment10),template,CHOOSE(arity,"('{1}').","('{1}', '{2}').","('{1}', '{2}', '{3}').","('{1}', '{2}', '{3}', '{4}').","('{1}', '{2}', '{3}', '{4}', '{5}').","('{1}', '{2}', '{3}', '{4}', '{5}', '{6}').","('{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}').","('{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}').","('{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}').","('{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}', '{10}')."),subject,fragment2,question_word,LOWER(fragment1),CONTAINS(knowledgebase,FORMAT(template,subject,question_word,fragment3,fragment4,fragment5,fragment6,fragment7,fragment8,fragment9,fragment10)))))

DEFINE(RATIO,LAMBDA(numerator,denominator,numerator / denominator))

DEFINE(REST,LAMBDA(range,CDR(range)))

DEFINE(REVERSE,LAMBDA(range,IF(GREATERTHAN(COLUMNS(range),ROWS(range)),MAKEARRAY(1,COLUMNS(range),LAMBDA(_row,col,INDEX(range,1,DECREMENT(LENGTH(range),DECREMENT(col))))),MAKEARRAY(ROWS(range),1,LAMBDA(row,_col,INDEX(range,DECREMENT(LENGTH(range),DECREMENT(row)),1))))))

DEFINE(ROCKPAPERSCISSORS,LAMBDA(throw,LET(human,CAPITALIZE(LOWER(DEFAULT(throw,""))),robot,PICK("Rock","Paper","Scissors"),CONCAT(FORMAT("You threw {1}. SL threw {2}. ",human,robot),IFS(CASE(human,robot),FORMAT("It's a tie! {1} vs. {1}",human),CASE(human,"Paper",robot,"Rock"),"You win! Paper covers Rock.",CASE(human,"Paper",robot,"Scissors"),"You lose! Scissors cut Paper.",CASE(human,"Rock",robot,"Scissors"),"You win! Rock crushes Scissors.",CASE(human,"Rock",robot,"Paper"),"You lose! Paper covers Rock.",CASE(human,"Scissors",robot,"Paper"),"You win! Scissors cut Paper.",CASE(human,"Scissors",robot,"Rock"),"You lose! Rock crushes Scissors.",OTHERWISE,"Invalid throw. Please choose Rock, Paper, or Scissors.")))))

DEFINE(ROLLDICE,LAMBDA([times],IF(LTE(DEFAULT(times,1),1),DICEROLL(),CONS(DICEROLL(),ROLLDICE(DECREMENT(times))))))

DEFINE(SELECTFROM,LAMBDA(columns,source_range,[row_conditions],LET(column_names,IF(RANGE?(columns),columns,TRIMSPLIT(columns,",")),column_indices,INDICES(column_names,FIRSTROW(source_range)),SELECTCOLUMNS(source_range,column_indices))))

DEFINE(SELECTCOLUMNS,LAMBDA(range,column_indices,IF(ONE?(LENGTH(column_indices)),CHOOSECOLS(range,column_indices),HSTACK(CHOOSECOLS(range,FIRST(column_indices)),SELECTCOLUMNS(range,REST(column_indices))))))

DEFINE(SHEETNAME,LAMBDA([reference],LET(filename,FILENAME(reference),bracket_position,FIND("]",filename),RIGHT(filename,DECREMENT(LEN(filename),bracket_position)))))

DEFINE(SQUAREROOT,LAMBDA(x,POWER(x,0.5)))

DEFINE(STATEMENT,LAMBDA(fragment1,[fragment2],[fragment3],[fragment4],[fragment5],[fragment6],[fragment7],[fragment8],[fragment9],[fragment10],LET(arity,ARITY(fragment1,fragment2,fragment3,fragment4,fragment5,fragment6,fragment7,fragment8,fragment9,fragment10),template,CHOOSE(arity,"('{1}').","('{1}', '{2}').","('{1}', '{2}', '{3}').","('{1}', '{2}', '{3}', '{4}').","('{1}', '{2}', '{3}', '{4}', '{5}').","('{1}', '{2}', '{3}', '{4}', '{5}', '{6}').","('{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}').","('{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}').","('{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}').","('{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}', '{10}')."),FORMAT(template,fragment1,fragment2,fragment3,fragment4,fragment5,fragment6,fragment7,fragment8,fragment9,fragment10))))

DEFINE(TEXTBETWEEN,LAMBDA(source_text,first_boundary,second_boundary,LET(text_after_first_boundary,RIGHT(source_text,DIFFERENCE(LEN(source_text),DECREMENT(SUM(FIND(first_boundary,source_text),LEN(first_boundary))))),LEFT(text_after_first_boundary,DECREMENT(FIND(second_boundary,text_after_first_boundary))))))

DEFINE(TRIMALL,LAMBDA(range,MAKEARRAY(ROWS(range),COLUMNS(range),LAMBDA(row,col,TRIM(INDEX(range,row,col))))))

DEFINE(TRIMSPLIT,LAMBDA(source_text,split_at,[display_vertically],LET(result,TRIMALL(TEXTSPLIT(source_text,split_at)),IF(DEFAULT(display_vertically,FALSE),TRANSPOSE(result),result))))

DEFINE(TYPESTRING,LAMBDA(input,[recursive],SWITCH(TYPE(input),1,"Number",2,"String",4,"Boolean",16,"Error",64,IF(DEFAULT(recursive,FALSE),MAP(input,LAMBDA(each,TYPESTRING(each))),"Range"),128,"Function",OTHERWISE,"Unknown")))

DEFINE(VLIST,LAMBDA([_1], [_2], [_3], [_4], [_5],[_6], [_7], [_8], [_9], [_10],[_11], [_12], [_13], [_14], [_15],[_16], [_17], [_18], [_19], [_20],[_21], [_22], [_23], [_24], [_25],LET(row_count,SUM(IS(_1), IS(_2), IS(_3), IS(_4), IS(_5),IS(_6), IS(_7), IS(_8), IS(_9), IS(_10),IS(_11), IS(_12), IS(_13), IS(_14), IS(_15),IS(_16), IS(_17), IS(_18), IS(_19), IS(_20),IS(_21), IS(_22), IS(_23), IS(_24), IS(_25)),IF(EQUAL(row_count,0),"()",MAKEARRAY(row_count,1,LAMBDA(row,_col,CHOOSE(row,_1, _2, _3, _4, _5,_6, _7, _8, _9, _10,_11, _12, _13, _14, _15,_16, _17, _18, _19, _20,_21, _22, _23, _24, _25)))))))

DEFINE(YES,TRUE)

DEFINE(ZERO?,LAMBDA(x,EQUAL(x,0)))