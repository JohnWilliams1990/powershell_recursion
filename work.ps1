
# foreach ($i in get-process) {
#   Write-Host $i
# }
# Get-Process | sort name 


function puts ($a){write-host $a}

# function Printit ($a){
#   foreach ($i in 0..$a.length){
#     puts $a[$i]
#   }
# }

function Printit ($a){  
  if ($b -eq $a.length){ return }
  elseif ($b -eq $null) {
    puts $a[0]
  }
  else {
    puts $a[$b]
  }
  $b = $b + 1 
  printit ($a)
}


function count($a){
  if ($b -eq $a -or $a -eq 0){return $a}
  if ($b -eq $null) {
  $b = 1
  }
  $b = $b +1
  puts $b
  count($a)
}

# factorial function
function factorial($number){
  if (1 -eq $number){return 1}
  if ($b -eq $null) {
    $b = $number 
    
   $b = $b * $(factorial($($number - 1 )))
   # puts $b
   return $b
  }
  else {
  # puts $b ;
   return $number * $(factorial($number-1))}
}


function max () {
  foreach( $i in 1..200) {
    $x = factorial($i)
    if ($x -eq [double]::PositiveInfinity){
      puts "Infinity reached at $i! = $X"
      puts "$($i-1)! = " 
      $(factorial($i -1))
      break
    }
  }
}
max
 # max
 # printit "asdasdasdasd"
 # count 10000000