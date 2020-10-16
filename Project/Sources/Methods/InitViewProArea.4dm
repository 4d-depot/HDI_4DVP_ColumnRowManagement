//%attributes = {}
C_LONGINT:C283($row;$col)
C_COLLECTION:C1488($values)
C_OBJECT:C1216($style)

  // init all the cells of View Pro with a random value
$values:=New collection:C1472
For ($row;1;50)
	$values.push(New collection:C1472)
	VP SET CELL STYLE (VP Cell ("ViewProArea";0;$row);New object:C1471("font";String:C10(55-$row)+"pt arial"))
	For ($col;1;50)
		$values[$row-1].push($row*$col)
	End for 
End for 

  // Write all values in the document
VP SET VALUES (VP Cell ("ViewProArea";0;0);$values)

$style:=New object:C1471
  // allow multiline text
$style.wordWrap:=True:C214
$style.font:="12pt arial"
VP SET DEFAULT STYLE ("ViewProArea";$style)

EnableObjects_Tab2 (True:C214)
