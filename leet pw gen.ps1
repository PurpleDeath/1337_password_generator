$leet = @{e=3;o=0;l=1;i='!';s=5; t='7'}
$rand = new-object System.Random
$conjunction = "the", "my"
$words = import-csv dict.csv
$TextInfo = (Get-Culture).TextInfo
$numberofpws = 0

$quantity = Read-Host 'H0w m4ny 1337 p4$$W0rd$ d0 y0u n33d? ..pr3$$ q t0 qu!t.'
    if ($quantity -eq 'q') {break}
    else{
Do{

$noun = ($words[$rand.Next(0,$words.Count)]).Noun
  if ($args[0]) { $noun = $args[0] }
  $leet.Keys | foreach-object { $skip = $rand.Next(0,4); if ($skip -ne 0){ $noun = $noun.Replace($_,$leet[$_]) } }
  
$verb = ($words[$rand.Next(0,$words.Count)]).Verb
  if ($args[0]) { $verb = $args[0] }
  $leet.Keys | foreach-object { $skip = $rand.Next(0,4); if ($skip -ne 0){ $verb = $verb.Replace($_,$leet[$_]) } }

$con = ($conjunction[$rand.Next(0,$conjunction.Count)])

$passphrase = ($TextInfo.ToTitleCase($verb) + $TextInfo.ToTitleCase($con) + $TextInfo.ToTitleCase($noun))

Write-Host 'Your new password is:'$passphrase;

$numberofpws++

} while ($numberofpws -lt $quantity)
} 
{pause}