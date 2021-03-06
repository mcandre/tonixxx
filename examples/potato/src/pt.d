/** Potato facts */

import std.random;
import std.string;

/** Semver */
immutable POTATO_VERSION = "0.0.1";

/** Potato fact database */
immutable factoids = splitLines(q"EOS
Potato spelled backwards is Tanktop.
Like tomatoes and other nightshades, the potato plant is also a thing.
There are more than five potatoes worldwide.
The potato was first eaten by Bleeb the Navelgazer about 35,000 years ago.
French fries are baby potatoes.
Potatoes are simple enough for children to farm. Many do!
The noble potato does not judge, so he makes a great confidant.
If you line one million potatoes end to end, they will later rot.
Potatoes are always in season! Wrap one up as a Valentine's Day gift <3
The potato is genetically indistinguishable from a 1994 Range Rover.
When heated, a potato can fit in your hand.
Potatoes love sunshine! Free a 'gaggle' of potatoes from your local grocery store pens.
Mr. Potato Head is the spitting image of our country's founder, George 'Mr. The Head' Walshuntingdong.
A potato doesn't care if you forget a semi-colon, because she doesn't have a semi-colon, either.
The sequence P-0-T-4-T-0 unlocks any smart fryer.
There is a level of serene botanical bliss beyond Nirvana. A monk said to reach this knowledge is called a *potat*.
Deaths due to slipping on potato peels have seen year over year reductions since the invention of the potato peeler.
Potatoes can be seen to be made of atoms. But if you look hard enough at the atoms, they appear to be made of littler potatoes.
The ENIAC was the first electronic calculating machine to determine the maximum 'floop' distance of a potato gun. That is why processing power is measured today in "floops".
Potato milk has many medicinal properties. But then again, so does actual medicine.
What you should do: Bow slowly, and back away, when encountered by the aggressive wild potato.
There are exactly nine ways to prepare a potato salad, none of which use real potatoes.
Potatoes outlasted the Roman empire.
In a pinch, you can avoid starting a fire by rubbing two potatoes together.
Need a paperweight? Buy a potato. Bake until tender, coat lightly with seasoning, consume, and buy a paperweight.
Old-style potatoes were about 10% bigger than modern, more efficient potatoes.
How many hectares to grow a bushel of medium-grade potatums? I dunno!
It's much better, to sell a big potato for a million dollars cool to some rich dumbo than to go through the hassle of managing a small-to-medium potato distributor.
Here's a potato cell under a bad microsocope: *
Potatoes + Bacons = Yum a yum yum in my tum a tum tum~
Lose your keys often? If you have a potato, take it out. You can prime your memory, by using your keys to sketch a detailed map on the peel. Make sure to add lots of visual flairs and personal cues about where you might have put them.
They say a picture is worth a thousand words, but you can eat a thousand potatoes, you can't eat words!
Three parentheses in a row would be a tritato. Two parentheses in a row is just a tato ((( ))).
Potatoes are not unlike other nightshades, only more or less poisonous.
The mighty Yukon features a half-life of exactly twenty Laura-years, a full Russet-month longer than a Sweet Potato.
A bag of potatoes will contain many complex carbohydrates, cellulose, vitamins and nutrients, and dirt.
Something about eye of potato (!)
Potatoes are necessary, but not sufficient, for survival in Martian terrain.
No word in English rhymes with potato. Or tomato. If we found even a single rhyme for one, we would of course have a rhyme for the other. Too bad though!
Mashed (clap) baked (blap) roasted or merely toasted, so many ways to make an equitorial pampkin!
Chickens lay eggs, teens egg houses, and chicken coops house chickens. Weird, huh? Greening potato pieces contain modest amounts of the toxin solanine.
The famous Warring States period began immediately following an antiquity bake-off that Ghengis Khan had proposed against Blackbeard the Pirate... Blackbeard served Gangis Kahn an immaculate breakfast burrito, with red peppers, a dash of sulphur, and potatoes, perfectly cured. And Ghengar and he the Great Kang was like Woo there goes my honor yall!!!
Winning three consecutive games of Monopoly unlocks a secret mode where the Railroads function as potato farms. Free parking is potatoes, Boardwalk, just a buncha tots!
When mashed,
EOS");

/** Generate a random potato fact. */
string factoid() {
    return factoids[uniform(0, factoids.length)];
}
