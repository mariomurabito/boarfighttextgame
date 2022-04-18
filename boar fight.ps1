write-Host "
You and your party have just entered the dungeon.
"
pause
write-host "
The lighting is dim and you start to hear noises.
"
pause
write-host "
You encounter a wild boar!
"
pause

$boarhealth = 9000
write-host "
The Boar's health is $boarhealth"

do {

$punchdamage = get-random -Minimum 1000 -Maximum 2000
$kickdamage =  get-random -Minimum 500 -Maximum 3000
$spitdamage = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 5000 | get-random
$tackledamage = get-random -Minimum 0 -Maximum 4000

$attack = Read-host -prompt {
pick one of the following attacks:
Punch - does 1000-2000 damage
Kick - does 500-3000 damage
spit on - does between 1-19 damage, or 5000 damage
tackle - does 0-4000 damage
Attack choice}

if ($attack -eq "punch")
{
$boarhealth = $boarhealth - $punchdamage
write-host "
you punched it! it did $punchdamage damage!"
write-host "the boar's health is now $boarhealth"
}
elseif ($attack -eq "kick")
{
$boarhealth = $boarhealth - $punchdamage
write-host 
"you kicked it! it did $kickdamage damage"
write-host "the boar's health is now $boarhealth"
}
elseif ($attack -eq "spit on")
{
$boarhealth = $boarhealth - $spitdamage
write-host "
you spit on it! it did $spitdamage damage!"
write-host "the boar's health is now $boarhealth"
}
elseif ($attack -eq "tackle")
{
$boarhealth = $boarhealth - $tackledamage
read-host "
you tackled it! it did $tackledamage damage!"
write-host "the boar's health is now $boarhealth"
}
pause
} until ($boarhealth -lt 0)

Write-host "you've defeated the boar"
pause