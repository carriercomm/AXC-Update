# Raid event for #Garudon (109107)
# Angelox


sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Traveler, you must help me. I have been tortured in this city for generations. The mark of Kylong adorns the walls of the theater that houses my remains. These markings are preventing me from passing into the theater and rejoining with my body so that I may pass on in peace. If you can reclaim four samples and return them to me, it may be enough to draw power from. With this power I will pass into the theater and rejoin my body and rest in peace. You do this for me, the torture of eternal capture is more than I can bear.");
 }
}

sub EVENT_ITEM {
 if ($itemcount{65574} == 4){
  quest::spawn2(109107,0,0,-142.884,-120.265,18.226,189.875);
  quest::me("As you place the remains of the dragon on the ground, a cold draft fills the air. Suddenly in a great vortex, the bones begin to rise up and move carried by the wind. They jut through the air and come down inside of the nearby theater. You hear the faint sound of bones clanking together, which is then followed by a massive moan. A sharp bolt of fear trickles up your spine as you feel anticipation fill the air.");
  quest::depop();
 }
}

sub EVENT_SPAWN
{
 quest::delglobal("rage");
 quest::setglobal("rage",2,3,"F");
 $rage=undef;
}

# EOF zone: Veksar NPCs:#Garudon (109107)

