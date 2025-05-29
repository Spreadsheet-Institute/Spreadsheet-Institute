# Spreadsheet.Institute/

*"Today's spreadsheet is tomorrow's abacus."*

<img src="./static/logo.jpeg" width="100" height="100" alt="Spreadsheet.Institute/ logo">

Spreadsheet.Institute/ embodies a collaborative effort to seek, test, and break the boundaries of what can be accomplished by present & future spreadsheet technologies. Whether optimizing for performance, readability, extensibility, or mere aesthetics, our aim is to restore the spreadsheet experience from one of pain to one of pleasure, from the intellectually-tedious to the intellectually-tantalizing; in short, from a game of memory to a game of creativity.

## Spreadsheet Lisp

Try it: [SpreadsheetLisp.xlsx](https://spreadsheet.institute/lisp/SpreadsheetLisp.xlsx)

With the introduction of LET() and LAMBDA(), modern spreadsheets can now host a pure subset of the Lisp functional programming paradigm. By identifying, naming, and reusing custom functions, overall formula complexity is reduced to its minimum to allow for even more powerful formulas to be written with fewer characters than the unoptimized originals:

---

```
=LEFT(TRIM(A1), FIND(" ", TRIM(A1)) - 1)
```

becomes

```
=FIRSTWORD(A1)
```

---

```
=IF(AND(ISTEXT(A1), ISTEXT(B1)), ISNUMBER(SEARCH(A1, B1)), OR(EXACT(A1, B1)))
```

becomes

```
=CONTAINS(B1, A1)
```

---

```
=RIGHT(CELL("filename",INDIRECT(CONCAT("A1"))),LEN(CELL("filename",INDIRECT(CONCAT("A1"))))-FIND("]",CELL("filename",INDIRECT(CONCAT("A1")))))
```

becomes

```
=SHEETNAME()
```

---

... et cetera, et cetera, ad absurdum.

In short: using *custom functions* to abstract *long formulas* into *short formulas* saves time (developing and maintaining spreadsheets), which saves money. Any fortuitous joys which are derived from the design and implementation of such abstractions cannot here be quantified, objectively, and so are left as a variable benefit for each individual to quantify, subjectively, at their own pace.

> [!NOTE]
> Spreadsheet.[Institute](https://spreadsheet.institute/)/ offers [free](https://www.investopedia.com/terms/f/free-lunch.asp), NDA-covered formula audits, in which we optimize your team's least-favorite spreadsheets as we forage for new functions to include within Spreadsheet Lisp ([SL](https://spreadsheet.institute/lisp/)). Contact: hq@spreadsheet.institute