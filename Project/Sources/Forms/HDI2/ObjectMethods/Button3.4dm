
If (Form:C1466.trace)
	TRACE:C157
End if 

VP DELETE ROWS (VP Get selection ("ViewProarea1"))


  // update number rows / columns
Form:C1466.columnCount:=VP Get column count ("ViewProArea1")
Form:C1466.rowCount:=VP Get row count ("ViewProArea1")