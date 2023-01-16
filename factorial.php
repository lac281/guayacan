<?php

$numero = 5;
$resp = factorial($numero);
echo "El Factorial del numero: ". $numero." es : ".$resp;

function factorial($num){
    $fact = 1;
    $cont = 1;
    while($cont <= $num){
        $fact = $fact * $cont;
        $cont ++;
    }
    return $fact;
}

?>