######################################
## NPC: Te-Anara                    ##
## Zone: Surefall Glade (qrg        ##
##  Druid Guildmaster note turnin   ##
## Revised by caved for AXClassic   ##
## EQWorld Server     15-12-2010    ##
######################################
sub EVENT_SAY {
my $laws = quest::saylink("laws", 1);
my $bear = quest::saylink("bear", 1);
my $wrong = quest::saylink("wrong", 1);
my $special = quest::saylink("special", 1);
 
  if ($text=~/Hail/i){
    $client->Message(14,"Welcome, friend. I hope your stay in Surefall Glade will enlighten your soul. While you are here we ask you to abide by the $laws of the Jaggedpine.");
  }
  elsif ($text=~/laws/i) {
    $client->Message(14,"We ask that you do not start campfires on our land. Do not litter our land with any items. Do not chop down our pines or tread upon any foliage. Please do not take more than a bellyful of fish. Do not harm any other wildlife and stay clear of the great $bear !");
  }
  elsif ($text=~/bear/i) {
    $client->Message(14,"The great bear I speak of is Mammoth. He has lived among us for over a century. Tunare has truly blessed us with his presence. As long as Mammoth lives, so too does Surefall Glade. We are currently worried. Corun has reported that there is something $wrong with Mammoth.");
  }
  elsif ($text=~/wrong/i) {
    $client->Message(14,"Mammoth is not eating. We believe something is lodged in his throat. We require a young druid to fetch a $special potion.");
  }
  elsif ($text=~/special/i) {
    $client->Message(14,"Go to the gnome city of Ak'Anon on the continent of Faydwer. With their great zoo, you will find a gnome named Kimble Nogflop. Give him this flask of nitrates and he shall hand you a special potion which will force Mammoth to cough up whatever may be stuck inside his throat. Be sure to show me what you find inside his throat upon your return.");
    quest::summonitem(13945);
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 18809 => 1)) {
    $client->Message(14,"Oh my, this must belong to Antonius Bayle! I shall see that he receives it. You have done a great service to Qeynos and Surefall Glade. I rewards you with this. May it be of good use in your future deeds.");
    quest::summonitem(15222);
    quest::faction(159, 10);
    quest::faction(265, 10);
    quest::faction(267, 10);
    quest::faction(135, 10);
    quest::faction(347, -30);
     quest::ding(); quest::exp(100);
  }
  elsif (plugin::check_handin(\%itemcount, 18713 => 1)) {
    $client->Message(14,"Well met, friend of the forest. You will find power and enlightenment among these woods. Here, wear this tunic and represent the Jaggedpine with pride. Salmekia Treherth will help train you and teach you the duties of Jaggedpine Treefolk. The forests, being the soul and heart of Norrath, depend on you and your actions from this day forth.");
    quest::summonitem("13510");
    quest::ding(); quest::exp("100");
  }
  else {
    $client->Message(14,"$name, I don't need this. Take it back."); #return bogus items
    plugin::return_items(\%itemcount);
    return 1;
  }
}

