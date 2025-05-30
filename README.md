# Spreadsheet.Institute/

*"Today's spreadsheet is tomorrow's abacus."*

<img src="./static/logo.jpeg" width="100" height="100" alt="Spreadsheet.Institute/ logo">

Spreadsheet.Institute/ embodies a collaborative effort to seek, test, and break the boundaries of what can be accomplished by present & future spreadsheet technologies. Whether optimizing for performance, readability, extensibility, or mere aesthetics, our aim is to turn every user into a poweruser.

## Spreadsheet Lisp

Try it: [SpreadsheetLisp.xlsx](https://spreadsheet.institute/lisp/SpreadsheetLisp.xlsx)

Or: [Install it yourself](https://spreadsheet.institute/lisp/install)

With the introduction of *LET()* and *LAMBDA()*, modern spreadsheets can run a subset of the Lisp programming language directly in the Name Manager. These "composite" functions simplify spreadsheets by shortening formulas down to a single function:

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
=IF(AND(ISTEXT(A1), ISTEXT(B1)), ISNUMBER(SEARCH(A1, B1)), OR(EXACT(A1, B1)))

After:
=CONTAINS(B1, A1)
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
=CHOOSE(RANDBETWEEN(1, 2),("Heads","Tails"))

After:
=COINTOSS()
```

---

... and so on.

In short: "naming formulas".

> [!NOTE]
> Spreadsheet.[Institute](https://spreadsheet.institute/)/ currently offers [free](https://www.investopedia.com/terms/f/free-lunch.asp), NDA-optional formula audits, in which we optimize your team's least/favorite spreadsheets, making them quicker and easier to update while we forage for new functions to include within Spreadsheet Lisp ([SL](https://spreadsheet.institute/lisp/)). Contact: hq@spreadsheet.institute