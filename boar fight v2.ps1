write-Host "
After a long and harrowing journey, You and your party have just entered the dungeon.
"
pause
write-host "
the lighting is dim and you start to hear noises.
"
pause
write-host "
you encounter a wild boar!
"
pause
clear

$boarhealth = 9000
$playerhealth = 12000

do {
write-host "
Player's health is $playerhealth
The Boar's health is $boarhealth
"

$punchdamage = get-random -Minimum 1000 -Maximum 2000
$kickdamage =  get-random -Minimum 500 -Maximum 3000
$spitdamage = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 5000 | get-random
$tackledamage = get-random -Minimum 0 -Maximum 4000
$testfulldamage = 9000

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
write-host "
you tackled it! it did $tackledamage damage!"
write-host "the boar's health is now $boarhealth"
}
pause

#boar attack section
if ($playerhealth -gt 0 -and $boarhealth -gt 0)
{
Write-Host "
The boar attacks you!
"
$boarattack =  Get-Random -Minimum 500 -Maximum 2000
$playerhealth = $playerhealth - $boarattack
write-host "The attack did $boarattack damage!"
write-host "
You are now at $playerhealth health.
"
}
if ($playerhealth -gt 0 -and $boarhealth -gt 0)
{
pause
}
cls
} until ($boarhealth -le 0 -or $playerhealth -le 0)

if ($boarhealth -le 0)
{
Write-host "you've defeated the boar"
}
elseif ($playerhealth -le 0)
{
Write-host "the boar has defeated you"
}
pause