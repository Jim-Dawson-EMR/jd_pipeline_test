write-host "PASSED PARAM: $ENV:caatrecord"
$caat = $env:caatrecord | convertfrom-json
$caat | format-list | out-string | write-host


