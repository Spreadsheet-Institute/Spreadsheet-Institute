# Spreadsheet.Institute/

*"Today's spreadsheet is tomorrow's abacus."*

<img src="./static/si-logo.jpeg" width="100" height="100" alt="Spreadsheet.Institute/ logo">

Spreadsheet.[Institute](https://spreadsheet.institute)/ embodies a collaborative effort to seek, test, and break the boundaries of what can be accomplished by present & future spreadsheet technologies. Whether optimizing for performance, readability, extensibility, or mere aesthetics: our aim is to turn every user into a poweruser.

## Spreadsheet Lisp

*"Single-function formulas."*

<img src="./static/sl-logo.jpeg" width="100" height="100" alt="Spreadsheet Lisp logo">

With the introduction of **LET()** and **LAMBDA()**, modern spreadsheets can bootstrap a pure subset of the [LISP programming paradigm](https://en.wikipedia.org/wiki/Lisp_(programming_language)) directly in the Formula Bar. These "composite" functions simplify spreadsheets by shortening formulas down to a single function.

Try it: [SpreadsheetLisp.xlsx](https://spreadsheet.institute/lisp/SpreadsheetLisp.xlsx)

Or [install it yourself](https://spreadsheet.institute/lisp/install)

([list of Spreadsheet Lisp functions](https://spreadsheet.institute/lisp/index.html#installation-link))

[0.9.0.lisp](./lisp/0.9.0.lisp) source file

> [!IMPORTANT]
> Spreadsheet Lisp (SL) version 0.9.0 is a beta release and is under active development. Functions will be updated frequently until a stable 1.0.0 release is finalized. Please report any unusual or unexpected behaviors to dev@spreadsheet.institute. Thank you!

---

```
Before:
=INDEX(A1:A100, 1, 1)

After:
=FIRST(A1:A100)
```

---

```
Before:
=IF(COLUMNS(A1:A100)>ROWS(A1:A100),INDEX(A1:A100,1,COUNTA(A1:A100)),INDEX(A1:A100,COUNTA(A1:A100),1))

After:
=LAST(A1:A100)
```

---

```
Before:
=LEFT(TRIM(A1), FIND(" ", TRIM(A1)) - 1)

After:
=FIRSTWORD(A1)
```

---

```
Before:
=MAKEARRAY(5, 1, LAMBDA(row, _col, CHOOSE(row, 1, 2, 3, 4, 5)))

After:
=VLIST(1, 2, 3, 4, 5)
```

---

```
Before:
=IF(AND(ISTEXT(A1), ISTEXT(B:B)), ISNUMBER(SEARCH(A1, B:B)), OR(EXACT(A1, B:B)))

After:
=CONTAINS(B:B, A1)
```

---

```
Before:
=MID("(123) 456 - 7890", SEARCH("(", "(123) 456 - 7890") + 1, SEARCH(")", "(123) 456 - 7890") - 1)

After:
=TEXTBETWEEN("(123) 456 - 7890", "(", ")")
```

---

```
Before:
=RIGHT(CELL("filename",INDIRECT(CONCAT("A1"))),LEN(CELL("filename",INDIRECT(CONCAT("A1"))))-FIND("]",CELL("filename",INDIRECT(CONCAT("A1")))))

After:
=SHEETNAME()
```

---

```
Before:
=CHOOSECOLS(FILTER(A1:Z100, {E1:E100 > 100000} * {G1:G100 = "Active"}), 1, 2, 7)

After:
=SELECTFROM("ID, Name, Department", A1:Z100, "Salary > 100000, Status = Active")
```

---

```
Before:
=CHOOSE(RANDBETWEEN(1, 2), "Heads", "Tails")

After:
=COINTOSS()
```

---

... and so on.

In short: "named formulas".

> [!NOTE]
> Spreadsheet.[Institute](https://spreadsheet.institute/)/ currently offers [free](https://www.investopedia.com/terms/f/free-lunch.asp), NDA-optional formula audits, in which we optimize your team's least/favorite spreadsheets, making them quicker and easier to update while we forage for new functions to include within Spreadsheet Lisp ([SL](https://spreadsheet.institute/lisp/)). Contact: hq@spreadsheet.institute