sub EVENT_SAY { 
if($text=~/Hail/i){
quest::emote("jumps at your voice and begins laughing at his skittishness");
quest::say("Ahh, hello there. Not many people know of this place, so visitors are quite rare. Hehehe. It's a very beautiful place indeed, so, ummm, please don't go telling everyone you know about it. Heheh. Thanks, friend.");
}
if($text=~/book Immortals/i){
quest::emote("looks up at you, eyes wide in astonishment");
quest::say("My god, you found 'Immortals'?! Where did you find it? Never mind, that is unimportant. I have in my possession a book that explains more about these individuals. Its value is unimaginable as well as the impact it is capable of. As you can see, I grow old. I need an individual to watch over this book and make sure it is protected. Would you be willing to [take this responsibility]?");
}
if($text=~/responsibility/i){
quest::say("I'm sorry, but I could only give this book to a true master, such as a member of the Whistling Fists Order. And unless you can give me proof that you are one, in addition to Danl's reference, which is very unlikely, there is no way I'll let you take charge of [the Celestial Fists].");
}
if($text=~/Celestial Fists/i){
quest::say("The Celestial Fists is the title of a book written by an unknown author. His writing is sub par but the legend is interesting from a biographical standpoint alone. Its rarity commands top dollar in the scholarly community but the secrets revealed in the book are what truly makes it dangerous. I've thought many times to destroy it but just couldn't. I hope I'm able to find someone to watch over it soon."); }
}
sub EVENT_ITEM { 
if ($itemcount{1682} == 1 && $itemcount{12970} == 1){
quest::summonitem("1683");
quest::say("Astonishing! To think that you are a master of an order thought to be lost to our world. Forgive my earlier doubts. I believe you are indeed worthy to be given the responsibility of watching over this book. Take great care that it does not fall into the wrong hands as it would be truly disastrous.");
quest::ding(); quest::exp("200"); }
}
#END of FILE Zone:timorous  ID:118043 -- Lheao 

