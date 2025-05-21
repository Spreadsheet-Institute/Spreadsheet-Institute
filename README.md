# Spreadsheet Institute

*"Today's spreadsheet is tomorrow's abacus."*

Spreadsheet Institute represents a guided, holistic effort to seek, test, and break the boundaries of what can be accomplished by present & future spreadsheet technologies. Whether optimizing for performance, readability, extensibility, or aesthetics, our aim is to restore the spreadsheet experience from one of pain to pleasure, from tedious to tantalizing, and from the repetitive to the revolutionary.

## Spreadsheet Lisp

With the introduction of LET() and LAMBDA(), modern spreadsheets can now host a useful subset of the storied Lisp functional programming paradigm. By identifying, naming, and reusing custom functions, overall formula complexity is reduced to its minimum to allow for even more powerful formulas to be written with fewer characters than the unoptimized originals:

---

```
=LEFT(A1, FIND(" ", A1) - 1)
```

becomes

```
=FIRSTWORD(A1)
```

---

```
=IF(AND(ISTEXT(A1), ISTEXT(B1)), ISNUMBER(SEARCH(A1, B1)), OR(EXACT(A1, B1)))
```

becomes:

```
=CONTAINS(B1, A1)
```

---

```
=IF(IFERROR(FIND("!", RIGHT(CELL("filename", INDIRECT(CONCAT("A1"))), LEN(CELL("filename", INDIRECT(CONCAT("A1")))) - FIND("]", CELL("filename", INDIRECT(CONCAT("A1")))))), 0)>0, LEFT(RIGHT(CELL("filename", INDIRECT(CONCAT("A1"))), LEN(CELL("filename", INDIRECT(CONCAT("A1")))) - FIND("]", CELL("filename", INDIRECT(CONCAT("A1"))))), IFERROR(FIND("!", RIGHT(CELL("filename", INDIRECT(CONCAT("A1"))), LEN(CELL("filename", INDIRECT(CONCAT("A1")))) - FIND("]", CELL("filename", INDIRECT(CONCAT("A1"))))))), RIGHT(CELL("filename", INDIRECT(CONCAT("A1"))), LEN(CELL("filename", INDIRECT(CONCAT("A1")))) - FIND("]", CELL("filename", INDIRECT(CONCAT("A1")))))))
```

becomes:

```
=SHEETNAME()
```

---

...et cetera, et cetera, ad absurdum.

In short: the greater your formulas' complexity, the greater will be the benefits gained by leveraging custom functions.

> [!NOTE]
> Spreadsheet Institute offers free formula audits, both to prove our efficiency claim and to mine for new, helpful functions for Spreadsheet Lisp. Contact: dev@spreadsheet.institute