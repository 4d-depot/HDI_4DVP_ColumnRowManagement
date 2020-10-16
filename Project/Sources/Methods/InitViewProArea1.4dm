//%attributes = {}
C_LONGINT:C283($row;$col)
C_COLLECTION:C1488($values)

  // init all the cells of View Pro with a random value
$values:=New collection:C1472
For ($row;1;50)
	$values.push(New collection:C1472)
	For ($col;1;50)
		$values[$row-1].push($row*$col)
	End for 
End for 

  // Write all values in the document
VP SET VALUES (VP Cell ("ViewProArea1";0;0);$values)

Form:C1466.columnCount:=VP Get column count ("ViewProArea1")
Form:C1466.rowCount:=VP Get row count ("ViewProArea1")

EnableObjects_Tab3 (True:C214)
