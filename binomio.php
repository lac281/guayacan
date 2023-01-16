<?php


$binomio = pow(2,4);
echo $binomio."<br/>";

// Triangulo de pascal

for($i=1;$i<$binomio;$i++){
    for($j=0; $j<$i; $j++){
        if($i==1){
            $num[$j]=1;
            echo $num[$j]."<br/>";
        }
        else if($j==0){
            $num[$j]=1;
            echo $num[$j]." | ";
        }
        else if($j==($i-1)){
            $num[$j]=1;
            echo $num[$j]." <br/> ";
        }else{
            $num[$j]=$tp[$j]+$tp[$j-1];
            echo $num[$j]." | ";
        }
    }
    $tp = $num;
}




?>