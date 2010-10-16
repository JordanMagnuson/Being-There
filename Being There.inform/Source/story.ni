"Being There" by Jordan Magnuson

The story headline is "A notgame for Korea". 
The story genre is "Experimental". 
The release number is 007. [Made with Inform 7 release 6E72] 
The story description is "A short, experimental work of interactive fiction about existence and Korea. It is not a game, and you don't need to be familiar with interactive fiction to play it." 
The story creation year is 2010. 
Release along with cover art.

[Include Flexible Windows by Jon Ingold.]

Include Location Images by Emily Short.
Include List Controller by Eric Eve.
Include Plurality by Emily Short.
Include Implicit Actions by Eric Eve.
Include Conversation Framework by Eric Eve.
Include Alternatives by Eric Eve.
[Include Small Kindnesses by Aaron Reed.]
Include Smarter Parser by Aaron Reed.
Include Basic Screen Effects by Emily Short.
Include Status Line Removal by Emily Short.
Include Default Messages by David Fisher.

[Include Output Filtering by Ron Newcomb.]
[Include Supplemental Actions by Al Golden.]
[Include Text Capture by Eric Eve.]
[Include Senses by ShadowChaser.]
[Include Modified Exit by Emily Short.]
[Include Basic Help Menu by Emily Short.]
[Include Tutorial Mode by Emily Short.]
[Include Basic Help Menu by Emily Short.
Include Tutorial Mode by Emily Short]

Use no scoring.
Use American dialect.
Use the serial comma.
Use full-length room descriptions. 
[Use no status line.]

Rule for printing the banner text: do nothing.

The graphics window proportion is 60. 

Part 0 - Debugging

[To decide whether unicodage is disabled: 
        (-  ~~glk_gestalt(gestalt_Unicode, 0) -) ]

When play begins:
	clear the screen;
	sort the Table of generic quips in random order;
	sort the Table of sitting quips in random order;
	sort the Table of standing quips in random order;
	sort the Table of reclining quips in random order;
	sort the Table of dancing quips in random order;
	sort the Table of flying quips in random order;
	sort the Table of singing quips in random order;
	sort the Table of running quips in random order;
	sort the Table of korean man quips in random order;
	sort the Table of korean girl quips in random order;
	sort the Table of boy quips in random order;
	[move the player to Stream Room;
	clear the screen;]

Chapter 1 - debug printing

[say "[debug]Some debug text[end debug]";
This will prenvet the debug text from accidentally being displayed in the final release.
See Inform Handbook]
To say debug:
	(- #ifdef DEBUG; -).
To say end debug:
	(- #endif; -).

Chapter 2 - Tester comments

[Allow testers to send comments using "*" in front of commands. 
eg: >* The room description mentions the vase on the pedestal, but I already
broke the vase.]
After reading a command (this is the ignore beta-comments rule):
	if the player's command matches the regular expression "^\p" or the player's command matches the regular expression "^\*":
		say "(Noted.)";
		reject the player's command.


Part 1 - Posture Rules 

Chapter 1 - The Postures

[Understand the command "stand" as something new.
Understand the command "stand up" as something new.]

A posture is a kind of value. The postures are seated, standing, reclining, dancing, swimming, flying, _singing, running, _climbing, _jumping, walking.

A person has a posture. The posture of a person is usually standing. 

A supporter has a posture. A container has a posture. A backdrop has a posture.

Posture-permission relates various things to various postures. The verb to allow (it allows, they allow, it allowed, it is allowed) implies the posture-permission relation. 

Understand the commands "stand" and "sit" and "lie" and "dance" and "swim" and "fly" and "sing" and "run" and "walk" and "climb" as something new. 

Sitting on is an action applying to one thing. 
Lying on is an action applying to one thing. 
Standing up on is an action applying to one thing. 
Dancing on is an action applying to one thing. 
Swimming in is an action applying to one thing. 
Flying in is an action applying to one thing. 
Singing on is an action applying to one thing. 
Running on is an action applying to one thing. 
Climbing on is an action applying to one thing. 
Jumping on is an action applying to one thing. 
Walking on is an action applying to one thing. 


Understand "sit on/in [something]" as sitting on. 
Understand "lie on/in [something]" as lying on. 
Understand "stand on/in [something]" as standing up on. 
Understand "dance on/in [something]" as dancing on. 
Understand "swim in/on/across/under [something]" as swimming in. 
Understand "fly in/on/across/through [something]" as flying in. 
Understand "sing on/in [something]" as singing on. 
Understand "run on/in [something]" as running on. 
Understand "climb on/in [something]" as climbing on. 
Understand "climb [something]" as climbing on. 
Understand "jump on/in [something]" as jumping on. 
Understand "walk on/in [something]" as walking on. 

Carry out an actor sitting on: 
	if the holder of the actor is not the noun, silently try the actor entering the noun; 
	if the holder of the actor is the noun: 
		if the actor is not seated, try the actor taking position seated; 
		otherwise follow the report taking position rules. 

Carry out an actor lying on: 
	if the holder of the actor is not the noun, silently try the actor entering the noun; 
	if the holder of the actor is the noun: 
		if the actor is not reclining, try the actor taking position reclining; 
		otherwise follow the report taking position rules. 

Carry out an actor standing up on: 
	if the holder of the actor is not the noun, silently try the actor entering the noun; 
	if the holder of the actor is the noun: 
		if the actor is not standing, try the actor taking position standing; 
		otherwise follow the report taking position rules. 

Carry out an actor dancing on: 
	if the holder of the actor is not the noun, silently try the actor entering the noun; 
	if the holder of the actor is the noun: 
		if the actor is not dancing, try the actor taking position dancing; 
		otherwise follow the report taking position rules. 

Carry out an actor swimming in: 
	if the holder of the actor is not the noun, silently try the actor entering the noun; 
	if the holder of the actor is the noun: 
		if the actor is not swimming, try the actor taking position swimming; 
		otherwise follow the report taking position rules. 

Carry out an actor flying in: 
	if the holder of the actor is not the sky, silently try the actor entering the sky; 
	if the holder of the actor is the sky: 
		if the actor is not flying, try the actor taking position flying; 
		otherwise follow the report taking position rules. 

Carry out an actor singing on: 
	if the holder of the actor is not the noun, silently try the actor entering the noun; 
	if the holder of the actor is the noun: 
		if the actor is not _singing, try the actor taking position _singing; 
		otherwise follow the report taking position rules. 

Carry out an actor running on: 
	if the holder of the actor is not the noun, silently try the actor entering the noun; 
	if the holder of the actor is the noun: 
		if the actor is not running, try the actor taking position running; 
		otherwise follow the report taking position rules. 

Carry out an actor walking on: 
	if the holder of the actor is not the noun, silently try the actor entering the noun; 
	if the holder of the actor is the noun: 
		if the actor is not walking, try the actor taking position walking; 
		otherwise follow the report taking position rules. 

Carry out an actor climbing on: 
	if the holder of the actor is not the noun, silently try the actor entering the noun; 
	if the holder of the actor is the noun: 
		if the actor is not _climbing, try the actor taking position _climbing; 
		otherwise follow the report taking position rules. 

Carry out an actor jumping on: 
	if the holder of the actor is not the noun, silently try the actor entering the noun; 
	if the holder of the actor is the noun: 
		if the actor is not _jumping, try the actor taking position _jumping; 
		otherwise follow the report taking position rules. 

Lying down is an action applying to nothing. 
Sitting down is an action applying to nothing. 
Standing up is an action applying to nothing. 
Dancing is an action applying to nothing. 
Flying is an action applying to nothing. 
Singing down is an action applying to nothing.
Running down is an action applying to nothing.
Walking down is an action applying to nothing.
jumping down is an action applying to nothing.

Understand "lie down" as lying down. 
Understand "sit down" or "sit" or "sit up" as sitting down. 
Understand "stand" or "stand up" as standing up. 
Understand "dance" or "spin" or "twirl" or "jig" as dancing. 
Understand "fly" or "soar" as flying. 
Understand "sing" as singing down.
Understand "run" as running down.
Understand "walk" as walking down.
Understand "jump" as jumping down.

Taking position is an action applying to one posture. 

Instead of an actor lying down: 
	try the actor taking position reclining; rule succeeds. 
Instead of an actor sitting down: 
	try the actor taking position seated; rule succeeds. 
Instead of an actor standing up: 
	try the actor taking position standing; rule succeeds. 
Instead of an actor dancing: 
	try the actor taking position dancing; rule succeeds. 
Instead of an actor flying: 
	if the holder of the actor is not the sky, silently try the actor entering the sky; 
	if the holder of the actor is the sky: 
		if the actor is not flying, try the actor taking position flying; 
		otherwise follow the report taking position rules. 
Instead of an actor singing down: 
	try the actor taking position _singing; rule succeeds. 
Instead of an actor running down: 
	try the actor taking position running; rule succeeds. 
Instead of an actor walking down: 
	try the actor taking position walking; rule succeeds. 
Instead of an actor jumping down: 
	try the actor taking position _jumping; rule succeeds. 

Check an actor taking position: 
	if the holder of the actor is not a room and the holder of the actor does not allow the posture understood: 
		if the actor is the player: 
			say "You can't take that position [in-on the holder of the actor]."; 
		otherwise if the actor is visible: 
			say "[The actor] can't take that position."; 
		stop the action. 

Check an actor taking position: 
	if the posture understood is the posture of the actor: 
		if the actor is the player: 
			say "You continue to [describe command posture of the player]. [no line break]"; 
		otherwise: 
			if the actor is visible, say "[The actor] is already [the posture understood]."; 
		if a random chance of 2 in 3 succeeds:
			show the next response from the Generic-Quips, with newlines;
		otherwise:
			say "[line break]";		
		stop the action;				

Carry out an actor taking position: 
	change the posture of the actor to the posture understood. 


Report someone taking position (this is the position-report rule): 
	say "[The actor] is now [the posture of the actor][if the holder of the actor is not the location of the actor] [in-on the holder of the actor][end if]." 

Report taking position: 
	if the player is in a body of water:
		if the posture of the player is:
			-- standing: say "You try to stand on the water, Jesus-style. You fail, sink, then float to the top. [no line break]";
 			-- seated: say "You sit in a shallow part of the water. [no line break]";
			-- reclining: say "You throw your arms back and lie in the water, floating as best you can. [no line break]";
			-- dancing: say "You thrash about in the water, attempting a new kind of aquatic ballet. [no line break]";
			-- flying: say "Actually, flying in water is typically called 'swimming.' [no line break]";
			-- _singing: say "You dive under the surface and gargle out a few notes to the fish. [no line break]";
			-- running: say "You run as fast as you can and make it several feet across the water's surface before sinking. Fancy people call this 'liquid mountaineering.' [no line break]";
			-- otherwise: say "[line break]";
		if a random chance of 2 in 3 succeeds:
			show the next response from the Generic-Quips, with newlines;
		otherwise:
			say "[line break]";			
	otherwise:
		say "You are now [describe posture of the player][if the holder of the player is not the location] [in-on the holder of the player][end if]. [no line break]"; 
		if a random chance of 2 in 3 succeeds:
			if the posture of the player is:
				-- standing: show the next response from the Standing-Quips, with newlines;
				-- seated: show the next response from the Sitting-Quips, with newlines;
				-- reclining: show the next response from the Reclining-Quips, with newlines;
				-- dancing: show the next response from the Dancing-Quips, with newlines;
				-- flying: show the next response from the Flying-Quips, with newlines;
				-- _singing: show the next response from the Singing-Quips, with newlines;
				-- running: show the next response from the Running-Quips, with newlines;
				-- otherwise: say "[line break]";
		otherwise:
			 if a random chance of 2 in 3 succeeds:
				show the next response from the Generic-Quips, with newlines;
			otherwise:
				say "[line break]";

To say describe posture of (chum - a person): 
	if posture of chum is _singing: 
		say "singing"; 
	otherwise if posture of chum is _climbing:
		say "climbing"; 
	otherwise if posture of chum is _jumping:
		say "jumping"; 
	otherwise: 
		say posture of chum. 
		
To say describe command posture of (chum - a person): 
	if posture of chum is _singing: 
		say "sing"; 
	otherwise if posture of chum is _climbing:
		say "climb"; 
	otherwise if posture of chum is _jumping:
		say "jump"; 
	otherwise if posture of chum is seated:
		say "sit"; 
	otherwise if posture of chum is standing:
		say "stand"; 		
	otherwise if posture of chum is reclining:
		say "recline"; 			
	otherwise if posture of chum is dancing:
		say "dance"; 			
	otherwise if posture of chum is swimming:
		say "swim"; 			
	otherwise if posture of chum is flying:
		say "fly"; 	
	otherwise if posture of chum is walking:
		say "walk"; 																	
	otherwise: 
		say posture of chum. 

To say in-on (item - a thing): 
	if the item is a supporter or the item is a spot:
 		if the item is one-of-many:
			say "on [a item]";
		otherwise:
			say "on [the item]";
	otherwise if the item is the ground:
		say "on [the item]";
	otherwise:
		if the item is one-of-many:
			say "in [a item]"; 
		otherwise:
			say "in [the item]";

Carry out an actor exiting (this is the departure-posture rule): 
	let N be the holder of the actor; 
	if N is a container or N is a supporter, 
		change the posture of the actor to the posture of N; 
	otherwise change the posture of the actor to standing. 


The departure-posture rule is listed after the standard exiting rule in the carry out exiting rulebook. 
The departure-posture rule is listed after the standard getting off rule in the carry out getting off rulebook. 

Carry out an actor entering something (this is the arrival-posture rule): 
	if the noun is a container or the noun is a supporter, 
		change the posture of the actor to the posture of the noun. 

The arrival-posture rule is listed after the standard entering rule in the carry out entering rulebook. 

Check an actor going somewhere: 
	if the actor is in a room and the actor is not standing: 
		say "([if the actor is not the player][the actor] [end if]first standing up)[command clarification break]"; 
		silently try the actor taking position standing; 
		if the actor is not standing, stop the action. 


Chapter 2 - Some Generic Kinds 

A spot is a kind of supporter. A spot is scenery. A spot is always enterable. Every spot allows seated, standing, reclining, dancing, _singing, walking, running. A spot is usually standing.

 Instead of examining a spot: 
    say the initial appearance of the noun; 
    say paragraph break. 

A body of water is a kind of container. A body of water is scenery. A body of water is enterable. Every body of water allows swimming, seated, standing, reclining, dancing, _singing, walking, running. A body of water is usually swimming.

 Instead of examining a body of water: 
    say the initial appearance of the noun; 
    say paragraph break. 

Part 2 - Locations

Chapter 0 - All Locations

[The player]
Instead of examining player:
	say "You have hands, feet, eyes, a nose..."

Instead of tasting a person who is not the player:
	say "They probably wouldn't appreciate that."

Instead of tasting the player:
	say "A bit of salt, a bit of skin. You're human after all."

Instead of smelling a person who is not the player:
	say "They probably wouldn't appreciate that."

Instead of smelling the player:
	say "You smell like you just woke up from a dream."

Instead of touching a person who is not the player:
	say "They probably wouldn't appreciate that."

Instead of touching the player:
	say "You feel like something alive."

Instead of sleeping:
	say "You shut your eyes, and doze off... for how long, you don't know, and you don't care."

Understand "doze" or "nap" or "take nap" or "take a nap" or "snooze" or "rest" as sleeping.

Section 1 - Directions

[Allow player to type "fly east" or "walk east"]
After reading a command: 
	if the player's command includes "east":
		try going east;
		reject the player's command;
	otherwise if the player's command includes "west":
		try going west;
		reject the player's command;
	otherwise if the player's command includes "north":
		try going north;
		reject the player's command;
	otherwise if the player's command includes "south":
		try going south;
		reject the player's command;

[Always go north]
[Have to deal with directions individually, otherwise "up" and "down" also affected]
last-direction is indexed text that varies.
Before going north:
	Change last-direction to "[noun]";
	Change the noun to north.

Before going south:
	Change last-direction to "[noun]";
	Change the noun to north.

Before going east:
	Change last-direction to "[noun]";
	Change the noun to north.

Before going west:
	Change last-direction to "[noun]";
	Change the noun to north.

Carry out going north:
	clear the screen.

Carry out going south:
	clear the screen.

Carry out going east:
	clear the screen.

Carry out going west:
	clear the screen.

[leaving]
Understand the command "leave" as something new.
Understand "leave" as leaving.
leaving is an action applying to nothing.
Carry out of leaving:
	clear the screen;
	say "[command clarification break]";
	Change last-direction to "[one of]north[or]south[or]east[or]west[in random order]";
	move the player to the room north of the location;

Section 2 - Misc

[eating]
Understand the command "eat" as something new.
Understand the command "eat more" as something new.
Understand the commands "eat" and "lick" and "eat more" as "taste".

[jumping]
Instead of jumping:
	try jumping down.

[Every turn when a random chance of 1 in 3 succeeds:
	show the next response of Generic-Quips, with newlines. ]

[swinging]
understand the command "swing" as something new. 
a thing is either swingable or unswingable.
a thing is usually unswingable.
swinging on is an action applying to one thing. 
understand "swing on/in/from [something]" as swinging on. 

report swinging on something which is swingable: 
	say "You swing on [the noun].";
	stop.

report swinging on something which is unswingable: 
	say "You can't really swing on that.";
	stop.
	
[Kissing inanimate objects]
Understand "kiss [something]" as kissing.

Instead of kissing something when the noun is not a person:
	say "Your lips touch [the noun]. [no line break]";
	if a random chance of 2 in 3 succeeds:
		show the next response from the Generic-Quips, with newlines;
	otherwise:
		say line break;

[Getting into and out of]
Climbing into is an action applying to one thing. 
Understand "climb into [something]" as entering.

[One of many]
A thing is either one-of-many or not-one-of-many.
A thing is usually not-one-of-many.

[Drinking]
A thing is either drinkable or not drinkable.
Instead of drinking something that is drinkable:
	say "You drink of [the noun].";
	stop.

[Stoping]
Stopping is an action applying to nothing.
Understand "stop" as stopping.

Instead of stopping:
	say "You stop what you're doing."

[Playing]
Playing is an action applying to one thing.
Understand "play [something]" as playing.

[Looking over]
Looking over is an action applying to one thing.
Understand "look over [something]" as looking over.

[Laughing]
Understand the command "laugh" as something new.
Laughing is an action applying to nothing.
Understand "laugh" or "giggle" or "chuckle" as laughing.
Report laughing:
	say "You laugh out loud. [no line break]";
	if a random chance of 2 in 3 succeeds:
		show the next response from the Generic-Quips, with newlines;
	otherwise:
		say line break;

[Smiling]
Understand the command "smile" as something new.
Smiling is an action applying to nothing.
Understand "smile" as smiling.
Report smiling:
	say "You smile to yourself. [no line break]";
	if a random chance of 2 in 3 succeeds:
		show the next response from the Generic-Quips, with newlines;
	otherwise:
		say line break;

[Looking up]
Understand the command "look up" as something new.
Looking-up is an action applying to nothing.
Understand "look up" or "glance up" as looking-up.
Report looking-up:
	say "You look up into the sky, vast and sprawling above you. [no line break]";
	if a random chance of 2 in 3 succeeds:
		show the next response from the Generic-Quips, with newlines;
	otherwise:
		say line break;

[Crying]
Understand the command "cry" as something new.
Crying is an action applying to nothing.
Understand "cry" as crying.
Report crying:
	say "For some reason, tears drip down your face. [no line break]";
	if a random chance of 2 in 3 succeeds:
		show the next response from the Generic-Quips, with newlines;
	otherwise:
		say line break;

[Breathing]
Understand the command "breathe" as something new.
Breathing is an action applying to nothing.
Understand "breathe" or "breath" as breathing.
Report breathing:
	if the player is in a body of water:
		say "You breathe in deeply... and get a lung full of water. A few coughs and splutters later and you're almost as good as new. [no line break]";
	otherwise:
		say "You breathe in deeply, then let it out slowly. [no line break]";
	if a random chance of 2 in 3 succeeds:
		show the next response from the Generic-Quips, with newlines;
	otherwise:
		say line break;

[Praying]
Understand the command "pray" as something new.
Praying is an action applying to nothing.
Understand "pray" or "say prayer" as praying.
Report praying:
	say "You pray, silently. [no line break]";
	if a random chance of 2 in 3 succeeds:
		show the next response from the Generic-Quips, with newlines;
	otherwise:
		say line break;

[Shouting]
Understand the command "shout" as something new.
shouting is an action applying to nothing.
Understand "shout" or "yell" as shouting.
Report shouting:
	say "You open your mouth, and let out everything inside of you. [no line break]";
	if a random chance of 2 in 3 succeeds:
		show the next response from the Generic-Quips, with newlines;
	otherwise:
		say line break;
		
		
[Diving - when flying]
Understand the command "dive" as something new.
diving is an action applying to nothing.
Understand "dive" as diving.
Report diving:
	If the player is flying:
		say "You soar up, and then down, twirling and gliding like you were born to do it. [no line break]";
		if a random chance of 2 in 3 succeeds:
			show the next response from the Flying-Quips, with newlines;
		otherwise:
			say line break;
	Otherwise if the player is in a body of water:
		say "You plunge deep into the water, surrounding yourself with the cool liquid until you can hold your breath no more, then you surface again. [no line break]";
		if a random chance of 2 in 3 succeeds:
			show the next response from the Generic-Quips, with newlines;
		otherwise:
			say line break;


[Going down from containers/supporters]
Instead of going down:
	If the player is on a spot (called the spot):
		try silently exiting;
		say "You let yourself back down to the ground.";
	Otherwise If the player is on a supporter:
		try silently exiting;
		say "You let yourself back down to the ground.";
	Otherwise If the player is in a container:
		try silently exiting;
		say "You let yourself back down to the ground.";
	Otherwise If the player is on the sky:
		try silently exiting;
		say "You slowly glide back down to earth.";
	Otherwise If the player is in something:
		try silently exiting;
		say "You let yourself back down to the ground.";
	Otherwise If the player is on something:
		try silently exiting;
		say "You let yourself back down to the ground.";
	Otherwise:
		try silently exiting;
		say "You lower yourself down, getting as close as you can to the earth.";

Understand "get down" as exiting. 

Instead of going up:
	say "If you want to climb something, try the command 'climb'; if you want to enter the sky, try 'jump' or 'fly.'"

[Jumping down]
Understand the command "jump down" as something new.
Jumping-downing is an action applying to nothing.
Understand "jump down" or "jump out" or "land" as Jumping-downing.
Instead of Jumping-downing:
	try exiting;

[Climbing inside]
Understand the command "climb inside" as something new.
climbing-insiding is an action applying to one thing.
Understand "climb inside [something]" as climbing-insiding.
Understand "get inside [something]" as climbing-insiding.
Instead of climbing-insiding something:
	try entering the noun;

Chapter 0.5 - Intro

Figure of Pink Jacket is the file "pink_jacket.jpg".

Being There is a room. The room-illustration is Figure of Pink Jacket.

The game-start rule is listed in the carry out looking rules. 

This is the game-start rule:
	if the location is Being There:
		[say "[paragraph break]";
		say "[italic type]A short, experimental work of interactive fiction about existence and Korea. It is not a game, and you don't need to be familiar with interactive fiction to play it.";
		say "[roman type]";
		pause the game;]
		say "[command clarification break]";
		say "[italic type]During the course of play you will be taken to a series of locations. In each location you can do various things by typing commands into the text prompt. Try things like:[line break][line break][roman type]";
		say "listen[line break]";
		say "examine the stripe[line break]";
		say "touch the street[line break]";
		say "dance on the sidewalk[line break]";
		say "climb the tree[line break]";
		say "taste the flower";
		say "[roman type]";
		pause the game;
		say "[command clarification break]";
		say "[italic type]When you are ready to leave a location, type [roman type]'go north,' [italic type]or [roman type]'go west.' [italic type]Alternately you can just type [roman type]'leave.'";
		say "[roman type]";
		pause the game;
		say "[command clarification break]";
		try going north;
		

Chapter 1 - Blossom Street

Figure of Street Blossoms is the file "street_blossoms.jpg".

Blossom Street is a room. Blossom Street is north of Being There. The room-illustration is Figure of Street Blossoms.
"A street stretches in front of you. You don't know this street, but it exists. Above you, and all around you, are cherry blossoms: they fill the street gutter; they overflow onto a yellow stripe of paint; they enter your nose, and come out your ears. 

You see grass to the left. To the right is a yellow stripe, a streetlight, and a fence.

You could sit here if you wanted. You could run and dance on that yellow stripe. You could lie in the street and let the cherry blossoms bury you. If you wanted."

[---------------------------------------------------------------------------]
[ Stripe ]
[---------------------------------------------------------------------------]

The yellow stripe of paint is a spot in Blossom Street. "It's a bold yellow centerline made by a striper. You could taste it if you wanted." 

The odor is "paint and asphalt mixed with cherry blossoms".
The sound is "every stripe you've never listened to".
The feeling is "You slide a finger along the yellow stripe... it leaves a line through the blossoms."
The flavor is "Tastes earthy and yellow, and feels like hard paint; a blossom sticks to your tongue." 

The yellow stripe allows seated, standing, reclining, dancing, _singing, running, walking, _jumping.

[---------------------------------------------------------------------------]
[ Road ] 
[---------------------------------------------------------------------------]
The road is a spot in Blossom Street. "It's an asphalt road." 

The odor is "paint and asphalt mixed with cherry blossoms".
[The sound is "".]
The feeling is "You run your hand over the road... it feels like a rough and textured carpet."
The flavor is "Tastes like dust and black tar."

The road allows seated, standing, reclining, dancing, _singing, running, walking, _jumping.

Understand "street" or "road" as the road. 

Instead of lying on the road:
	try silently entering the road;
	say "You lie down on your back in the middle of the street, and open your mouth. Cherry blossoms rain down like snow, and settle on your legs, your torso, your fingertips.";

[---------------------------------------------------------------------------]
[ Grass ] 
[---------------------------------------------------------------------------]

The grass is a spot in Blossom Street. "Among the most versatile of life forms, grass covers about 20% of the earth's surface area. It's late spring and this patch is soft and green." 

The odor is "the grassy green odor you know so well from all the time you've spent lying in it".
The sound is "nature busily going about its business".
The feeling is "It feels like your hair when you wake up in the morning."
The flavor is "Tastes like something you've eaten before."

The grass allows seated, standing, reclining, dancing, _singing, running, walking, _jumping.

[---------------------------------------------------------------------------]
[ Sidewalk ] 
[---------------------------------------------------------------------------]

The sidewalk is a spot in Blossom Street. "Made of that spongy stuff that's good on your knees."

The odor is "earthworms and rubber".
[The sound is "".]
The feeling is "The sidewalk feels like a hardened sponge. Great for jumping on."
The flavor is "It tastes like the blossoms that cover it: earthy, but sweet."

The sidewalk allows seated, standing, reclining, dancing, _singing, running, walking, _jumping.

Understand "side walk" or "sidwalk" or "path" as the sidewalk.

[---------------------------------------------------------------------------]
[ Gutter ] 
[---------------------------------------------------------------------------]

The gutter is an enterable container in Blossom Street. The gutter is scenery. "It's a gutter like any other, but filled with cherry blossoms."

The odor is "perfume".
The sound is "a distant stream".
The feeling is "The blossoms make it feel like a pillow of flowers. Wouldn't it be great to lie down here?"
The flavor is "You put a flower in your mouth. It tastes like the past."

The gutter allows seated, standing, reclining, _singing, running, walking, _jumping. The gutter is standing.

Instead of dancing on the gutter:
	say "The gutter's a bit small for dancing."

[---------------------------------------------------------------------------]
[ Scenery ]
[---------------------------------------------------------------------------]

[Blossoms]
The cherry blossoms are scenery in Blossom Street. "The cherry blossoms are everywhere, in everything. Fluffy and white like snow, but without the cold."

The odor is "something sweet and dewy".
The sound is "snow".
The feeling is "The delicate flowers feel like warm snow."
The flavor is "You put a flower in your mouth. It tastes like the past."

Understand "blossom" or "blosom" or "flower" or "flowers" as the cherry blossoms.

Instead of taking the cherry blossoms:
	say "There are too many to carry."

[Trees]
The cherry blossom trees are an enterable container in Blossom Street.  The cherry blossom trees are scenery. "The indigenous cherry blossom trees bloom once a year in Korea, in the spring, and only for a week."

The odor is "something sweet and dewy, mixed with bark".
The sound is "the wind in the flowers".
The feeling is "The delicate flowers feel like warm snow."
The flavor is "You lick the trunk of one of the trees, and get a splinter in your tongue."

The cherry blossom trees allows seated, reclining, _singing, _jumping, _climbing, standing. The The cherry blossom trees is seated.

Understand "tree" or "trunk" or "branches" or "cherry tree" or "overhang" as the cherry blossom trees.

Instead of climbing on the cherry blossom trees:
	try sitting on the cherry blossom trees.

Carry out entering the cherry blossom trees:
	if the player is not in the cherry blossom trees:
		say "You grab a branch and swing yourself up, into the midst of the blossoms. Kind of like being in a snowglobe.[line break]";

[Fence]
The fence is a spot in Blossom Street. "It's a construction fence, with mountains on it. Someone's building something on the far side."

The feeling is "Feels metalic, though the paint on tops adds a touch of plastic."
The flavor is "That's one way to get your body's daily dose of metals."

The fence allows seated, _singing, _jumping, _climbing, walking, running. The fence is seated.

Understand "mountains" or "mountain" as the fence.

Instead of climbing on the fence:
	try sitting on the fence.

Carry out entering the fence:
	if the player is not on the fence:
		say "You hoist yourself to the top of the fence.[line break]"

The other-side is scenery in Blossom Street. "Looks to be a convention center of some sort, or a hotel. You can see the hole where the pool will be."

Understand "far side" or "other side" or "construction" or "building" or "something" or "convention center" or "hotel" as the other-side.

Instead of looking over the fence:
	try examining the other-side.

Understand "look through [the fence]" as looking over.


[Streetlight]
The streetlight is a spot in Blossom Street. "It's used to light the way for pedestrians out after dark."

The sound is "no buzzing, no flickering... just silence".
The feeling is "The pole is metal, the lamp cover is hard plastic."
The flavor is "That's one way to get your body's daily dose of metals."

The streetlight allows _climbing.

Understand "light" or "pole" or "poll" or "lamp" or "post" or "streetlamp" as the streetlight.

Instead of climbing on the streetlight:
	if the player is not on the streetlight:
		silently try entering the streetlight;
		say "You shimmy up the pole [apostrophe]till you get to the lamp, and can go no higher. A bug peers out at you from behind the plastic.";
	otherwise:
		say "You've gone as far as you can up the pole."
		
Instead of switching on the streetlight:
	say "You wave your hand, and the streetlight turns on, as if by magic."
	
Instead of switching off the streetlight:
	say "You blow at the light, and it turns off."

[waiting]
Instead of waiting for the first time:
	if the location of the player is Blossom Street:
		say "The cherry blossoms pile higher.";
	otherwise: 
		say "Time passes. Or does it?";

Instead of waiting for the third time:
	if the location of the player is Blossom Street:
		say "The cherry blossoms pile higher still.";
	otherwise: 
		say "Time passes.";

Instead of waiting for the fifth time:
	if the location of the player is Blossom Street:
		say "The cherry blossoms cover you.";
	otherwise: 
		say "Time passes.";
	
After waiting:
	if a random chance of 1 in 6 succeeds:
		say "Time stands still. [no line break]";
	otherwise:
		say "Time passes. [no line break]";
	if a random chance of 2 in 3 succeeds:
		show the next response from the Generic-Quips, with newlines;
	otherwise:
		say "[line break]";	


Chapter 2 - Maisan Mountain

Figure of Mountain View is the file "mountain.jpg".

Maisan Mountain is a room. Maisan Mountain is north of Blossom Street. The room-illustration is Figure of Mountain View.
"[if unvisited]After traveling [last-direction] for some time you find yourself atop [end if]Maisain Mountain, looking out over the farmland of North Jeolla. There's a golf course down there that you might just be able to touch, as well as some man-made lakes and Geum River, winding itself towards the Yellow Sea.

You could dance in the sky here, if you wanted. You could probably fly."

[The maisan-sky]
[The maisan-sky is an enterable container. The maisan-sky is open. The maisan-sky is in Maisan Mountain. The maisan-sky is scenery. "As you peer at the maisan-sky it seems to dance." 

The odor is "fresh mountain air".
The sound is "birds and the wind in the trees".
The feeling is "It feels like your thoughts in the morning."
The flavor is "You open your mouth and breathe in deep. The sky fills your lungs."

The maisan-sky allows dancing, flying. The maisan-sky is flying.

Understand "air" or "breeze" or "ether" as the maisan-sky.]

[Golf course]
The golf course is a spot in Maisan Mountain. "Land is scare, and golf is a luxury here."

The odor is "Cis-3-Hexenal (freshly cut grass)".
The sound is "the 'thwack' of clubs hitting balls, a caddy offering advice".
The feeling is "You stretch out a hand, and can just feel the the crisp smooth grass of a green under your fingers."
The flavor is "Reaching over to the golf course you grab a bit of grass, and a bit of sand, and put them in your mouth. Earthy textures collide." 

Understand "grass" as the golf course.

The golf course allows seated, standing, reclining, dancing, _singing, running, walking, _jumping.

Understand the command "golf" as something new.
Understand "golf" or "play golf" as golfing.
Golfing is an action applying to nothing.
Instead of golfing:
	if the player is in something:
		try silently exiting;
	say "Why not? You grab a stick and play a round of golf, using it as a club."


[Lakes]
The man-made lakes are a body of water in Maisan Mountain. "Irrigation is what it's all about in these plains."

The odor is "weeds and fish".
The sound is "the buzz of insects".
The feeling is "You put a toe into one of the lakes... a fish gives it a nibble."
The flavor is "Tastes fresh and earthy... no chlorine here."

the man-made lakes allow swimming.  the man-made lakes are swimming. 

Understand "lake" or "water" as the man-made lakes.

Instead of swimming in the man-made lakes:
	if the player is not in the man-made lakes:
		silently try entering the man-made lakes;
		say "You jump into a lake. Cool water flows over you.";
	otherwise:
		say "You swim around some more."

Instead of drinking the man-made lakes:
	try tasting the man-made lakes.
	
Does the player mean swimming in the man-made lakes when the player is in the man-made lakes: 
	it is very likely.

[Geum River]
Geum River is a body of water in Maisan Mountain. "One of the major rivers of South Korea, the Geum is beautiful, and life supporting."

The odor is "weeds and fish".
The sound is "the buzz of insects".
The feeling is "You put a toe into the river... a fish gives it a nibble."
The flavor is "Tastes fresh and earthy... no chlorine here."

Geum River allows swimming. Geum River is swimming. 

Understand "water" as Geum River.

Instead of swimming in the river:
	if the player is not in the river:
		silently try entering the river;
		say "You dive into the river and swim its full breadth, then lie back and have a float.";
	otherwise:
		say "You swim around some more."
		
Does the player mean swimming in the river when the player is in the river: 
	it is very likely.		

Instead of drinking the river:
	try tasting the river.
	
[Trees]
The maisan-trees are an enterable container in Maisan Mountain. The maisan-trees are scenery. The printed name is "trees". The description is "Trees and shrubbery cover the mountain, though the valley has been mostly cleared for farmland."

The odor is "pine needles".
The sound is "rings expanding ever so slowly".
The feeling is "You place your hand over a bunch of needles and grip firmly, sending small tingles of pain through your arm."
The flavor is "Bitter."

Understand "tree" or "trees" or "growth" or "shrubbery" or "shrubs" or "bushes" or "brush" as the maisan-trees.

The maisan-trees allows seated, reclining, _singing, _jumping, _climbing, standing. The maisan-trees is seated.

Instead of climbing on The maisan-trees:
	try sitting on The maisan-trees.

Carry out entering The maisan-trees:
	if the player is not in The maisan-trees:
		say "You climb up a tree for an even better view.[line break]";

[Farmland]
The farmland is a spot in Maisan Mountain. "Dark earth and rice paddies as far as the eye can see. These farms are the reason North Jeolla is known as the bread basket of Korea."

The odor is "wet earth and growing things".
The sound is "insects buzzing, and green things reaching for the sky".
The feeling is "The famland is wet and ripe and overflowing."
The flavor is "It tastes like mud, and rice, and insects, and food."

The farmland allows seated, standing, reclining, dancing, _singing, running, walking, _jumping.

Understand "jeolla" or "farm land" or "farm" or "farms" or "land" or "plains" or "plain" or "earth" as the farmland.



Chapter 3 - Napo Field

Figure of Soccer Field is the file "soccer_field.jpg".

Napo Field is a room. Napo Field is north of Maisan Mountain. The room-illustration is Figure of Soccer Field.
"[if unvisited]You fly [last-direction] until you can fly no more. Then you land here, in a middle school soccer field.

[end if]The air is cool and crisp to the touch. Autumn has come, and the birds will be here soon, stopping in this field on their way south. Or maybe they've already been.

There are some parallel bars in the distance. You could swing from those bars, or climb that barren tree. Or you could just keep going [last-direction]."

[Parallel bars]
The parallel bars are a spot in Napo Field. The parallel bars are scenery. The parallel bars are ambiguously plural. The parallel bars are swingable. The parallel bars allow dancing, standing, _singing. The parallel bars are dancing. "Gymnasts use these to train and perform. You could swing from them if you wanted... you could probably even dance on them."

The odor is "the sweat and blood of middle school athletes".
The sound is "something metalic".
The feeling is "You grab the cold metal. It feels like cold metal."
The flavor is "Tastes metalic."

Instead of climbing on the parallel bars:
	try swinging on the parallel bars;

Instead of swinging on the parallel bars:
	silently try entering the parallel bars;
	say "You swing around and around and around."

Understand "equipment" as the parallel bars.

[Trees]
napo-trees are an enterable container in Napo Field. napo-trees are scenery. The printed name of napo-trees is "the trees". "One tree shines gold, another has already lost all its leaves."

The odor is "bark".
The sound is "a bird that's not there".
The feeling is "You move around the tree with your palm to its trunk."
The flavor is "Tastes like real wood."

napo-trees allows seated, reclining, _singing, _jumping, _climbing, standing. napo-trees is seated.

Understand "tree" or "trees" or "barren" as napo-trees.

Instead of climbing on napo-trees:
	try sitting on napo-trees.

Carry out entering napo-trees:
	if the player is not in napo-trees:
		say "You climb to the top of the barren tree. The field looks distant, and small.[line break]";

[Field]
The middle school soccer field is a spot in Napo Field. The middle school soccer field allows seated, standing, dancing, reclining, _singing, running, walking. "Most Korean soccer fields are worn to dirt. This one is surprisingly well-carpeted."

The odor is "grass that's living deep underground".
The feeling is "Feels like your hair when you first wake up."
The flavor is "Tastes like dirt. Just dirt."

Understand "football field" or "grass" or "fields" as the middle school soccer field.

[Goal]
The soccer goal is an enterable container in Napo Field. The soccer goal is scenery. The soccer goal allows seated, standing, reclining, dancing, _singing, running, walking. "It's a soccer goal. Too bad you don't have a ball."

The odor is "phantom sweat and leather".
The sound is "wild chearing on a day gone by".
The feeling is "You slip your fingers through the hoops of the goal's ancient net and wonder how many goals it has seen."
The flavor is "You bend down and touch your tongue to the left goal post, just above the dirt. It tastes like the roots of the World Cup."

Understand "post" or "posts" or "football goal" or "net" as the soccer goal. 

After reading a command: 
	if the player's command includes "football":
		say "In Korea, they actually call it 'soccer.'";
	if the player's command includes "play":
		if the location is Maisan Mountain:
			try golfing;
			reject the player's command;
		otherwise if the location is Napo Field:
			try playing soccer;
			reject the player's command;
		otherwise if the location is Stream Room:
			try splashing;
			reject the player's command;
		otherwise if the location is Baseball Room:
			try playing baseball;
			reject the player's command;
		otherwise:
			say "You play, you have fun, you live life like it's meant to be lived.";
			reject the player's command;
	otherwise if the player's command includes "eat":
		if the location is Kimchi Room and the open pot is closed:
			say "You'll need to open a pot first (and hope that the kimchi is actually in there).[paragraph break]";
			reject the player's command;
	otherwise if the player's command includes "kimchi":
		if the location is Kimchi Room and the open pot is closed:
			say "The kimchi is (presumably) inside of those closed pots.[paragraph break]";
			reject the player's command;		
	otherwise if the player's command includes "put" or the player's command includes "fill":
		if the location is Temple Spring:
			try taking a cup;
			reject the player's command;		

Understand the command "play soccer" as something new.
Understand "play" or "play soccer" or "play football" as playing soccer.
playing soccer is an action applying to nothing.
Instead of playing soccer:
	say "You play soccer with an invisible ball... you score!";

Chapter 4 - Temple Spring

Figure of Spring is the file "temple_spring.jpg".

Temple Spring is a room. Temple Spring is north of Napo Field. The room-illustration is Figure of Spring.
"[if unvisited]You wander [last-direction] for hours, searching for you don't know what. And then you find it: [end if]A fresh spring at the temple of the nirvana fish, spouting clean, cold water from a bamboo chute.

The water flows onto a stone platform, then over the edge, and away."

[The water]
The water is scenery in Temple Spring. The description of the water is "The water looks clear and delicious."

Understand "spring" as the water.

Does the player mean drinking the water:
	it is very likely. 

Does the player mean swimming in the water:
	it is very likely. 

Instead of drinking the water:
	try tasting the water.

Instead of swimming in the water:
	say "Alas: you're not quite small enough to swim up the bamboo shoot. And if you were, you probably wouldn't be strong enough to swim up that fast current."

The odor is "damp bamboo".
The sound is "a running stream".
The feeling is "Feels cool and delicious."
The flavor is "Ignoring the cups, you place your mouth to the fountain, and drink for a long moment. The water freezes your lips and chin, but it tastes like heaven."

[Washing]
Understand the command "wash" as something new.
Understand "wash [something]" as washing.
washing is an action applying to one thing.

Report washing:
	say "You wash [the noun]."
	
Instead of washing the player:
	say "You splash water on your face, your neck, your arms, your legs. It trickles over your skin, displacing sweat and dirt slowly. but surely."

bathing is an action applying to nothing.
Understand "wash" or "bathe" or "bath" or "clean" as bathing.
Report bathing:
	say "You have a nice bathe. You feel cleaner."

[Cups]
A cup is a thing in Temple Spring.  A cup is scenery. The description of a cup is "Communal plastic cups are a norm in Korea."

The feeling is "You take a cup and bend it. Feels like hard plastic."
The flavor is "Ignoring the stream of fresh water, you attempt to eat one of the cups. It tastes like plastic."

Understand "cups" or "ladel" or "ladels" or "ladle" or "ladles" or "plastic" as a cup.

Instead of taking a cup:
	say "You take one of the cups and dip it into the stream of water; then you drink a long draught."

Instead of drinking a cup:
	try taking the cup.

Understand "use [something]" as taking.

[Stone platform]
The stone platform is a spot in Temple Spring. "Water ripples over the stone surface in a hypnotizing fashion. How refreshing it would be to lie down and let the water cover you." The stone platform allows seated, standing, reclining, dancing, _singing, running, walking. 

The odor is "damp rock".
The sound is "a running stream".
The feeling is "Feels rough like the stone that it is."
The flavor is "Licking the surface of the stone platform provides an oddly delightful sensation."

Understand "surface" or "eduge" as the stone platform.

Instead of lying on the stone platform:
	say "You lie down on the cold wet stone, and let the water wash over you, until you are soaked and dripping and feeling newborn."
	
Instead of kissing the stone platform:
	say "You bend down and kiss the wet stone, letting the moisture seep from the stone to your lips."

[Bamboo tubes]
The bamboo tubes are scenery in Temple Spring. "Tubes made from bamboo."

The odor is "damp bamboo".
The sound is "a running stream".
The feeling is "Gourd-like, natural, strong, and smooth."
The flavor is "The bamboo is hard, but you manage to bite a small piece off the end of the tube, and suck on it for a while. You feel oddly at peace with the world."

Understand "shoots" or "shoot" or "shute" or "shutes" or "chute" as the bamboo tubes.

[Rocks]
The rocks are scenery in Temple Spring. "The rocks here are overgrown with moss and vines, like all good rocks should be."

The odor is "damp rock".
The sound is "a running stream".
The feeling is "You run your hand over the rock, fingers passing from hard stone to soft moss and back."
The flavor is "The moss that covers the rocks provides an earthy, mossy flavor."

Understand "moss" or "vines" or "greenery" or "green" or "bushes" as the rocks.

Instead of climbing the rocks:
	say "The rocks are damp and slippery, but you climb them as best you can."

Chapter 5 - Kimchi Room

Figure of Kimchi Pots is the file "kimchi_pots.jpg".

Kimchi Room is a room. Kimchi Room is north of Temple Spring. The room-illustration is Figure of Kimchi Pots. The printed name of Kimchi Room is "Kimchi Pots".
"[if unvisited]Walking [last-direction] you come upon some gaint Kimchi pots. 

[end if]If there was kimchi in one of those pots you could eat it... you could put it in your mouth and let the spices soak your tongue. 

You could climb into one of the pots and sing until your voice was hoarse. 

You could stand on top of one of them and jump up and down until someone made you stop. 

You could do a million things. Or nothing at all."

[pot]
The open pot is a closed openable enterable container in Kimchi Room. The open pot is one-of-many. The open pot is scenery. "Large pots made for holding Korea's favorite food. Big enough to climb into... or stand on." The open pot allows seated, standing, reclining, dancing, _singing, running, _jumping. A open pot is seated. The printed name of the open pot is "kimchi pot".

The odor is "strongly spiced cabbage".
The sound is "pots full of cabbage".
The feeling is "The pots are glazed, and feel smooth and curvy."
The flavor is "The pots themselves don't taste like much."

Understand "kimchi pots" or "kimchi pot" or "pots" or "jar" or "jars" as the open pot.

A supporter-pot is a spot in Kimchi Room. The indefinite article is "a". A supporter-pot is scenery. A supporter-pot is one-of-many.  A supporter-pot allows seated, standing, reclining, dancing, _singing, running, _jumping. The printed name of a supporter-pot is "closed kimchi pot". 

The odor is "strongly spiced cabbage".
The sound is "pots full of cabbage".
The feeling is "The pots are glazed, and feel smooth and curvy."
The flavor is "The pots themselves don't taste like much."

Before searching the open pot:
	if the open pot is closed:
		say "You'll need to open one first.";
		reject the player's command;
	otherwise:
		say "You find a boatload of kimchi--what a surprise!";
		reject the player's command;

After opening the open pot:
	now the printed name of the open pot is "open kimchi pot";
	say "You open a kimchi pot, revealing more kimchi than you know what to do with."
After closing the open pot:
	now the printed name of the open pot is "kimchi pot";
	say "You close the open kimchi pot."

Instead of standing up on the open pot:
	if the player's command includes "on" or the open pot is closed:
		try standing up on the supporter-pot;
	otherwise:
		silently try entering the open pot;
		change the posture of the actor to standing; 
		say "You are now standing in an open kimchi pot; the strong spicy odor surrounds you, and the cabbage is soft beneath your bare feet.";

Instead of sitting on the open pot:
	if the player's command includes "on" or the open pot is closed:
		silently try entering the supporter-pot;
		change the posture of the actor to seated; 
		say "You are now sitting on one of the closed kimchi pots. You feel the power of kimchi beneath you.";
	otherwise:
		silently try entering the open pot;
		change the posture of the actor to seated; 
		say "You are now sitting in an open kimchi pot; the strong spicy odor surrounds you, and the cabbage is soft beneath you.";

Instead of dancing on the open pot:
	if the player's command includes "on" or the open pot is closed:
		try dancing on the supporter-pot;
	otherwise:
		silently try entering the open pot;
		change the posture of the actor to dancing; 
		say "Some might say the pots are a bit small for dancing in, but you wiggle around as best you can."
		
Before dancing:
	if the holder of the player is the open pot:
		say "Some might say the pots are a bit small for dancing in, but you wiggle around as best you can.";
		change the posture of the actor to dancing; 
		stop the action;

Instead of lying on the open pot:
	if the player's command includes "on" or the open pot is closed:
		say "The pots are a bit small to lie on.";
	otherwise:
		say "The pots are a bit small to lie in.";
		
Before lying down:
	if the holder of the player is the supporter-pot:
		say "The pots are a bit small to lie on.";
		stop the action;
	otherwise if the holder of the player is the open pot:
		say "The pots are a bit small to lie in.";
		stop the action;

Instead of singing on the open pot:
	if the player's command includes "on" or the open pot is closed:
		try singing on the supporter-pot;
	otherwise:
		silently try entering the open pot;
		say "You are now singing in an open kimchi pot. The cabbage resonates around you.";
		
Lid-breaking is a number that varies. Lid-breaking is 0.

Before jumping or jumping on (this is the jumping on pots rule):
	if the player is in the open pot:
		if the player's command includes "on" or the open pot is closed:
			if lid-breaking is less than 2:
				move the player to the supporter-pot;
				say "You jump onto the closed pot.";
				stop the action;
			otherwise:
				say "That is no longer possible, now that you have broken the lid.";
				stop the action;
		otherwise:
			say "The cabbage protests by belching and squeaking under your feet.";
			stop the action;
	if the player is on the supporter-pot:
		if lid-breaking is 2:
			say "The ceramic lid has had all the abuse it can take. It breaks. You land in a mountain of kimchi.";
			now the open pot is open;
			silently try getting off the supporter-pot;
			silently try entering the open pot;
		otherwise if lid-breaking is greater than 2:
			say "You better not jump on any more of the pots, now that you've broken one.";
		otherwise:
			say "You jump up and down like a maniac on the ceramic lid of the kimchi pot. You better hope it doesn't break under you!";
		       increase lid-breaking by 1;
		       do nothing instead.
       
Instead of entering the closed open pot (this is the getting on the closed pot rule):
	if the player's command includes "in" and the open pot is closed:
		say "You'll need to open one of the pots first.";
	otherwise:
		try entering the supporter-pot;
		say "You jump onto a closed pot.".       
       

Instead of tasting the open pot:
	say "(If you want to eat the kimchi, try the command 'eat kimchi'.)"


[Kimchi food]
kimchi food is a kind of thing. The indefinite article is "a small mountain of". The printed name is "kimchi". The description is "Spiced, fermented cabbage. Koreans eat this stuff with every meal."

The odor is "strongly spiced cabbage".
The feeling is "The kimchi is cold, and feels soft and squishy."

understand "kimchi" or "cabbage" as kimchi food.

The pot contains kimchi food. 

Instead of taking kimchi food:
	say "You have no pockets, and the pots are too large to carry."

Instead of tasting kimchi food for the first time:
	say "You take a bite of the kimchi. Spicy and delicious."

Instead of tasting kimchi food for the second time:
	say "You take another bite."

Instead of tasting kimchi food at least three times:
	say "You eat more. And more. You're starting to get addicted."

Instead of tasting kimchi food at least five times:
	say "Okay, you're officially addicted."
	
Does the player mean eating kimchi food:
	it is very likely. 

Does the player mean tasting kimchi food:
	it is very likely. 


Chapter 6 - Stream Room

Figure of Stream is the file "stream.jpg".

Stream Room is a room. Stream Room is north of Kimchi Room. The room-illustration is Figure of Stream. The printed name of Stream Room is "A Stream". 
"[if unvisited]You run far this time, and come upon a stream where a father plays with his two daughters.[otherwise]A stream where a father plays with his two daughters.[end if]"

[People]
The Korean man is a man in Stream Room. The Korean man is scenery. The description is "A middle aged Korean man, having fun with his daughters." The Korean man wears a black swimsuit, a dark blue T-shirt, and a towel. 

Understand "father" as the korean man.

The description of the black swimsuit is "From the shape of the suit and a bit of carrying strap emerging from the pocket, you can see the man's packing a camera--ready to capture any Kodak moments, if he can manage to get his hands free."

Understand "shirt" or "tshirt" or "teeshirt" as the t-shirt.

The Korean girls are people in Stream Room. The Korean girls are scenery.The description is "Two cute girls; one in a colorful striped swimsuit, and one with a swim skirt. Both sensibly wearing visors for sun protection." The girls wear visors, and girl swimsuits.

Understand "daughters" or "daughter" or "child" or "children" or "girl" as the korean girls.

The description of the visors is "Koreans are typically very concerned about sun exposure, for health reasons, and because they tend to prefer light skin."

Understand "visor" as the visors.

The description of the girl swimsuits is "One striped and colorful, one light-colored and polka-dotted, with a skirt."

Understand "skirt" as the girl swimsuits.

[Conversation]
Asking the Korean man about something is korean-man-chatting.
Telling the Korean man about something is korean-man-chatting.
Informing the Korean man about something is korean-man-chatting.
Saying hello to the korean man is korean-man-chatting.
Saying goodbye to the korean man is korean-man-chatting.
Quizzing the Korean man about something is korean-man-chatting.

Instead of korean-man-chatting:
	show the next response from the korean-man-quips, with newlines;

korean-man-quips is a cyclic list controller. The associated list is the table of korean man quips.

Table of korean man quips
response
"The man glances at you and smiles."
"The man smiles and nods."
"The man says a few words in Korean."
"The man attempts to wave at you, but realizes he doens't have any hands free."

Asking the Korean girls about something is korean-girls-chatting.
Telling the Korean girls about something is korean-girls-chatting.
Informing the Korean girls about something is korean-girls-chatting.
Saying hello to the korean girls is korean-girls-chatting.
Saying goodbye to the korean girls is korean-girls-chatting.
Quizzing the Korean girls  about something is  korean-girls-chatting.

Instead of korean-girls-chatting:
	show the next response from the korean-girl-quips, with newlines;

korean-girl-quips is a cyclic list controller. The associated list is the table of korean girl quips.

Table of korean girl quips
response
"The girl in the striped suit looks over at you and smiles. The other girl is too busy trying not to slip to notice your voice."
"The girls giggle and point at you enthusiastically."
"'Hello my name is Ae-young nice to meat you,' says the girl in the striped suit, then giggles."
"The girls stare at you, smiling. Then they both burst out laughing."
"The older girl looks at you, then looks at her father and says something in Korean."


[Stream]
The stream-water is an enterable container in Stream Room. The stream-water is scenery. The printed name is "stream". The description is "A clear flowing stream that's just calling out to you to sit down in it and ponder life for a while." 

The odor is "clean water, without a hint of polution or grime".
The sound is "a faucet on high".
The feeling is "Liquid refreshment."
The flavor is "You bend down, place your head in the stream, and open your mouth. The water rushes into your mouth, down your throat, and fills your stomach. Bloated, you fall over with a splash. You are now reclining in the stream.";

Understand "stream" or "river" or "water" as the stream-water.

The stream-water allows seated, standing, dancing, reclining, _singing, running, walking, _jumping. 

Instead of drinking the stream-water:
	try tasting the stream-water;

Carry out tasting the stream-water:
	if the holder of the actor is not the stream-water:
		silently try entering the stream-water;
	otherwise:
		say "Being handily located in the stream already, you open your mouth and let the water rush in.";
		stop the action;

Instead of swimming in the stream-water:
	silently try entering the stream-water;
	say "Some might say the water's a bit shallow for swimming, but that doesn't stop you from diving in head first and splashing about like a maniac." 

Does the player mean drinking the stream-water:
	it is very likely. 

Does the player mean swimming in the stream-water:
	it is very likely. 

[Splashing]
Splashing is an action applying to nothing.
Understand "splash" as splashing.

splashing-something is an action applying to one thing.
Understand "splash [something]" as splashing-something.

Instead of splashing:
	say "You summon your strength and produce a monstrous splash."

Instead of splashing-something:
	say "You splash [the noun] vigorously, getting wonderfully soaked in the process."

[Rocks]
The stream-rocks are scenery in Stream Room. "Wet rocks."

Chapter 7 - Baseball Room

Figure of Baseball is the file "baseball.jpg".

Baseball Room is a room. Baseball Room is north of Stream Room. The room-illustration is Figure of Baseball. The printed name of Baseball Room is "Sandlot". 
"[if unvisited]You follow the stream, walking [last-direction], until the stream becomes a river and you can no longer touch the bottom. Then you float with your eyes closed, until the river washes you up on an asphalt shore, where two boys play baseball at dusk.

You feel your time is drawing short. You won't be able to stay here long.[otherwise]An asphalt lot, where two boys play baseball at dusk.[end if]"

[asphalt lot]
The asphalt lot is a spot in Baseball Room. "On weekends this lot is full of kids skating and playing badminton. Tonight these boys have it to themselves." 

The odor is "paint and asphalt".
[The sound is "".]
The feeling is "You run your hand over the asphalt... it feels like a rough and textured carpet."
The flavor is "Tastes like dust and black tar."

The aslphalt lot allows seated, standing, reclining, dancing, _singing, running, walking.

Understand "street" or "road" or "ground" or "shore" as the aslphalt lot. 

[grass]
The dry grass is a spot in Baseball Room. "It's barely spring here, and this grass hasn't yet recovered from the snow that covered it all winter."

The odor is "grass that's living deep underground".
The feeling is "Feels like your hair when you first wake up."
The flavor is "Tastes like the earth."

The dry grass allows seated, standing, reclining, dancing, _singing, running, walking.

Understand "dirt" or "earth" as the dry grass.

[stairs]
The stairs are a spot in Baseball Room.  The description is "Designed to look like wood, these stairs are actually made of hard plastic. Where do they lead to?"

Understand "stair" as the stairs.

Instead of climbing on the stairs:
	say "You climb the stairs to find yourself at the edge of Lake Eunpa, a man-made resevoir built by the Japanese that now serves as a beautiful lake, surrounded by walkways."

[Lake Eunpa]
Lake-Eunpa is a body of water in Baseball Room.Lake-Eunpa is proper-named. Lake-Eunpa is drinkable. "A man-made resevoir built by the Japanese that now serves as a beautiful lake, surrounded by walkways." The printed name is "Lake Eunpa".

The odor is "weeds and fish".
The sound is "the buzz of insects".
The feeling is "You put a toe into the lake... a fish gives it a nibble."
The flavor is "Tastes fresh and earthy... no chlorine here."

[After swimming in Lake-Eunpa:
	say "Looking up, you see a bright orange sky."]
	
Instead of swimming in Lake-Eunpa:	
	if the player is not in Lake-Eunpa:
		silently try entering Lake-Eunpa;
		say "You dive into the water head first, then gradually allow yourself to turn over. Looking up, you see a bright orange sky.";
	otherwise:
		say "You swim around some more."	

Instead of drinking Lake-Eunpa:
	try tasting Lake-Eunpa.

Understand "eunpa" or "lake" or "water" or "resevoir" or "man-made" as Lake-Eunpa.

Does the player mean drinking Lake-Eunpa:
	it is very likely. 
	
Does the player mean swimming in Lake-Eunpa:
	it is very likely. 

[walkways]
The walkways are a spot in Baseball Room. "Walkways surround the lake."

The walkways allows seated, standing, reclining, dancing, _singing, running, walking.

Understand "walkway" or "path" or "paths" as the walkways.

[People]
The baseball players are people in Baseball Room. The baseball players are scenery. The description is "Two boys taking part in one of Korea's favorite pastimes." The baseball players wear a hat, shirts, pants, shoes, a baseball-ball, and a baseball bat.

The description of the baseball bat is "A typicall baseball bat."

The description of the baseball-ball is "Just your ordinary baseball."

Understand "ball" as the baseball-ball.

Understand "boy" or "boys" or "korean" or "koreans" or "bong-cha" or "chang-sun" as the baseball players.

[Conversation]
Asking the baseball players about something is baseball-player-chatting.
Telling the baseball players about something is baseball-player-chatting.
Informing the baseball players about something is baseball-player-chatting.
Saying hello to the baseball players is baseball-player-chatting.
Saying goodbye to the baseball players is baseball-player-chatting.
Quizzing the baseball players about something is baseball-player-chatting.

Instead of baseball-player-chatting:
	show the next response from the baseball-player-quips, with newlines;

baseball-player-quips is a stopping list controller. The associated list is the table of baseball player quips.

Table of baseball player quips
response
"The boys turn and look at you. 'Hello! Hello!' they shout excitedly."
"'My name is Bong-cha! My name is Chang-sun!' yell the boys."
"The boys seem focused on their baseball playing."

[Playing baseball]
playing baseball is an action applying to nothing.
Understand "play" or "play baseball" as playing baseball.
Instead of playing baseball:
	say "Through pantomime you demonstrate to the boys that you are an exceptional baseball player. They gladly let you join in, and you play for some time."

Instead of taking the bat:
	try playing baseball.
	
Instead of taking the baseball-ball:
	try playing baseball.

Chapter 8 - Boys Room

Figure of Boys is the file "boys.jpg".

Boys-Room is a room. Boys-Room is north of Baseball Room. The room-illustration is Figure of Boys. The printed name is "A Group of Boys". 
"[if unvisited]You make your way quickly [last-direction], but a group of smiling boys jumps in front of you.

'Kimchi! My name is Bae! Hello! I love you! My name is Chin-ho!'[otherwise]A group of smiling boys stands in front of you, hollering every bit of english they know.[end if]"

[People]
The boys are people in Boys-Room. The boys are scenery. The description is "A group of smiling boys; they look to be in grade school." 

Understand "boy" or "boys" or "korean" or "koreans" or "Bae" or "Chin-ho" as the boys.

[Conversation]
Asking the boys about something is boy-chatting.
Quizzing the boys about something is boy-chatting.
Telling the boys about something is boy-chatting.
Informing the boys about something is boy-chatting.
Saying hello to the boys is boy-chatting.
Saying goodbye to the boys is boy-chatting.

Instead of boy-chatting:
	show the next response from the boy-quips, with newlines;

boy-quips is a stopping list controller. The associated list is the table of boy quips.

Table of boy quips
response
"'Annyeonghaseyo!' yell the boys in unison. One of them is jumping uncontrollably."
"Hello! How are you! My name is Bon-hwa! yell the boys, excitedly."


Chapter 9 - Pavilion Room

Figure of Pavilion is the file "pavilion.jpg".

Pavilion Room is a room. Pavilion Room is north of Boys-Room. The room-illustration is Figure of Pavilion. The printed name of Pavilion Room is "A Pavilion". 
"You manage to break away from the group of boys. Running now, panting, you've hardly any time left. Glancing to your right, you see a man helping a young boy take off his shoes before entering a pavilion."


Chapter 10 - Umbrella Room

Figure of Umbrella Girl is the file "umbrella_girl.jpg".

Umbrella Room is a room. Umbrella Room is north of Pavilion Room. The room-illustration is Figure of Umbrella Girl. The printed name of Umbrella Room is "Leaving". 
"You're flying now, faster than you've ever flown before... the air that streams by you feels like a thick liquid. Glancing over your shoulder, your last glimpse of Korea is a girl in red stripes, holding an umbrella. 

And then she's gone."

[The collapsing bridge rule is listed first in the instead rules. ]

[Rule for printing the name of the spoon while asking which do you mean: 
    say "enormous silver spoon" ]

The game-end rule is listed in the carry out looking rules. 

This is the game-end rule:
	if the location is Umbrella Room:
		center "Being There. A notgame for Korea, created by Jordan Magnuson.[paragraph break]";
		center "GameTrekking.com";
		say paragraph break; 
		wait for any key; 
		stop game abruptly; 		

["You run far this time. Past all the empty places, until you find two boys playing baseball at dusk in an empty lot."]


Part 3 - Quips

Generic-Quips is a cyclic list controller. The associated list is the table of generic quips.
Standing-Quips is a cyclic list controller. The associated list is the table of standing quips.
Sitting-Quips is a cyclic list controller. The associated list is the table of sitting quips.
Reclining-Quips is a cyclic list controller. The associated list is the table of reclining quips.
Dancing-Quips is a cyclic list controller. The associated list is the table of dancing quips.
Flying-Quips is a cyclic list controller. The associated list is the table of flying quips.
Singing-Quips is a cyclic list controller. The associated list is the table of singing quips.
Running-Quips is a cyclic list controller. The associated list is the table of running quips.

Table of generic quips
response
"You feel a breeze behind you."
"Life is good."
"A bird flies by, and looks at you."
"It feels like you've been here before."
"You hear rain in the distance."
"Above you is the sky."
"The ether shifts around you."
"You take a deep breath."
"You close your eyes, but the world is still there, in front of you."
"The earth spins slowly."
"A beam of sunlight crosses in front of you."
"Just like when you were a kid... or maybe not."
"The world looks different."
"The breeze ruffles your hair."
"You hear thunder rumble in a distant land."
"A little bug buzzes by."
"You think of all the places you've never been."
"You wonder how you ended up here."
"You close your eyes for a moment... and almost fall asleep."
"Everything around you seems to drip color."
"Something around you smells... interesting."

Table of sitting quips
response
"You feel a pebble beneath your buttock." 
"Cross-legged."
"Legs out in front of you."
"You rest your chin on your upraised knees."
"You stare at your toes, and wonder how they got there."
"You lean back on your hands."
"Well, doing more of a squat, really."

Table of standing quips
response
"You feel tall."
"You can feel it through your legs."
"It feels firm beneath your feet."
"It seems to move under your feet. Maybe it's just the earth spinning."
"You are more like a spaghetti noodle now."
"You imagine that you are a needle, pointed towards the sky."

Table of reclining quips
response
"Arms outstretched."
"With your feet in the air."
"You rest your head on the earth and close your eyes."
"You turn over on your side."
"Face on down, particles colliding with your face."
"Curled up like a ball."

Table of dancing quips
response
"You spin and you spin, until you can't see straight."
"What would this feel like if you were under water?"
"Twirling ballet style."
"Leaping wildly, like a gazelle."
"Your best imitation of a European folk dance. Where'd you get the clogs?" 
"Who says you can't breakdance?"
"Tapping away like a mad person."
"Acro style."
"Or rather, hopping up and down on one foot repetatively."
"A contemporary interpretation of the scenery around you."
"Sort of a solo waltz."
"This would probably be called a sword dance, if you had a sword."

Table of flying quips
response
"You feel millions of Nitrogen and Oxygen particles hitting your skin." 
"Like a bird."
"Like a plane."
"Like the fastest things on earth."
"Slowly, lazily, just for fun."
"You go high, and then glide slowly towards the earth."
"You hit a hot air patch and shoot upwards geyser style."

Table of singing quips
response
"You belt it out like a good one."
"No one to say if you're any good or not."
"For the world at large."
"Tiny drums in your ears vibrate in time."
"A trumpet sounds in the distance."

Table of running quips
response
"Around and around in circles."
"Back and forth, [apostrophe]till you're panting and out of breath."
"The wind behind you."
"Faster, and faster."



Chapter 1 - Backdrops

A backdrop can be a supporter. A backdrop can be a container. A backdrop can be open. A backdrop can be enterable. 

[The sky]
The sky is an enterable container. The sky is open. The sky is a backdrop. The sky is everywhere. The sky is scenery. "As you peer at the sky it seems to dance." 

The odor is "fresh life".
The sound is "wind in a large, large space".
The feeling is "It feels like your thoughts in the morning."
The flavor is "You open your mouth and breathe in deep. The sky fills your lungs."

The sky allows dancing, flying. The sky is flying.

Understand "air" or "breeze" or "ether" as the sky.

[The ground]
The ground  is an enterable supporter. The ground is a backdrop. The ground is everywhere. The ground is scenery. "It's the ground."  

The odor is "the earth".

The ground allows seated, standing, reclining, dancing, _singing, running, walking. The ground is standing.

[Misc]
A bird is a backdrop. It is everywhere. It is scenery. "It's not quite close enough to make out."  

The rain is a backdrop. It is everywhere. It is scenery. "It sounds very distant."  

A beam of sunlight is a backdrop. It is everywhere. It is scenery. "The beam vanishes as quickly as it appeared."  

A pebble is a backdrop. It is everywhere. It is scenery. "Just a little rock, probably millions of years old."  

A bug is a backdrop. It is everywhere. It is scenery. "A little creepy crawly, enjoying its life while it lasts."

Understand the command move as something new;
Understand "move [something]" as taking.

Instead of taking a pebble:
	say "You move the pebble out of the way, to satisfy your buttock."

oxygen is a backdrop. It is everywhere. "You can't see the particles, but you can feel them."

Understand "particles" or "nitrogren" as oxygen.

Part 4 - Senses
[Based on the senses extension, by ShadowChaser]

Chapter 1 - Feel

A thing has some text called feeling. The feeling of a thing is usually "normal".

After touching something:
	if the feeling of the noun is "normal" then say "Pretty much what you would expect.";
	otherwise say "[the feeling of the noun][paragraph break]".

Chapter 2 - Taste

A thing has some text called flavor. The flavor of a thing is usually "normal". 

The block tasting rule is not listed in the check tasting rules. 

Carry out tasting something: 
	if the flavor of the noun is "normal" then say "Pretty much what you would expect.";
	otherwise say "[the flavor of the noun][paragraph break]".

[When tasting a room, run through all the flavors in the room]
[The list of flavors is a list of texts that varies.
Instead of tasting a room (called the tastedRoom): 
	truncate the list of flavors to 0 entries;
	if a thing can be touched by the player begin; 
		say "You stick out your tongue, and a flavor lands on it... ";
		repeat with item running through things which can be touched by the player begin; 
			if the flavor of the item is not "normal" and the flavor of the item is not listed in the list of flavors begin;
				add the flavor of the item to the list of flavors;
			end if;
		end repeat;
		sort the list of flavors in random order;
		say entry 1 of the list of flavors;
	end if.]

Chapter 3 - Smell

A thing has some text called odor. The odor of a thing is usually "normal". A thing can be strong_smelling or weak_smelling. A thing is usually weak_smelling.

A room has some text called odor. The odor of a room is usually "normal".

The block smelling rule is not listed in the check smelling rules. 

carry out smelling something:
	if the odor of the noun is "normal" then say "Smells the same as it did yesterday.";
	otherwise say "Smells like [the odor of the noun].[paragraph break]".


[When smelling a room, run through all the smells in the room]
The list of smells is a list of texts that varies.
indexed-captured-text is indexed text that varies.
Instead of smelling a room (called the smeltRoom): 
	truncate the list of smells to 0 entries;
	if a thing can be touched by the player begin; 
		say "Smells surround you...[line break]";
		repeat with item running through things which can be touched by the player begin; 
			if the odor of the item is not "normal" and the odor of the item is not listed in the list of smells and the item is not a backdrop begin;
				add the odor of the item to the list of smells;
			end if;
		end repeat;
		repeat with item running through the list of smells begin;
			say "...[no line break][item].[line break]";
		end repeat;
	end if.

Definition: a thing is pungent if it is strong_smelling.

Chapter 4 - Hearing

A thing has some text called sound. The sound of a thing is usually "silence". A thing can be loud_sounding or soft_sounding. A thing is usually soft_sounding.

The block listening rule is not listed in the check listening to rules. 

Carry out listening to something: 
	if the sound of the noun is "silence" then say "Silence.";
	otherwise say "Sounds like [the sound of the noun].[paragraph break]".

[When listening to a room, run through all the sounds in the room]
The list of sounds is a list of texts that varies.
indexed-captured-sound-text is indexed text that varies.
Instead of listening to a room: 
	truncate the list of sounds to 0 entries;
	if an audible thing can be touched by the player begin; 
		say "You hear...[line break]";
		repeat with item running through audible things which can be touched by the player begin; 
			if the sound of the item is not listed in the list of sounds begin;
				add the sound of the item to the list of sounds;
			end if;
		end repeat;
		repeat with item running through the list of sounds begin;
			[Capture the output text and use regex to capitalize the first letter of each sentence]
			say "...[no line break][item].[line break]";
		end repeat;
	end if.

Definition: a thing is audible if the sound of it is not "silence".
Definition: a thing is noisy if it is loud_sounding.


Part 5 - Body Parts

[Head]
A head is a kind of thing. A head is a part of every person.

A nose is a kind of thing. A nose is part of every person.

eyes are a kind of thing. eyes are a part of every person.

An eye is a kind of thing. An eye is a part of every person.

ears are a kind of thing. ears are a part of every person.

An ear is a kind of thing. An ear is a part of every person.

chin is a kind of thing. A chin is a part of every person.

hair is a kind of thing. Hair is a part of every person.

a face is a kind of thing. A face is part of every person.

[Upper Body]
hands are a kind of thing. hands are a part of every person.

A hand is a kind of thing. A hand is part of every person.

fingers are a kind of thing. fingers are a part of every person.

a finger is a kind of thing. A finger is a part of every person.

[Lower Body]
legs are a kind of thing. legs are a part of every person.

a leg is a kind of thing. A leg is a part of every person.

feet are a kind of thing. feet are a part of every person.

a foot is a kind of thing. A foot is a part of every person.

knees are a kind of thing. knees are a part of every person.

a knee is a kind of thing. A knee is a part of every person.

Toes are a kind of thing. Toes are a part of every person.

A toe is a kind of thing. A toe is a part of every person.


Part 6 - Time Limit

[Time limit]
baseball-room-turns is a number that varies.
baseball-room-turns is 5.
boys-room-turns is a number that varies.
boys-room-turns is 2.

Every turn: 
	if player is in Baseball Room:
		change baseball-room-turns to baseball-room-turns - 1;
	if player is in Boys-Room:
		change boys-room-turns to boys-room-turns - 1;

Before doing anything other than going or leaving in Baseball Room: 
	if baseball-room-turns <= 0:
		say "Time is short: you must leave this place.";
		stop the action;

Before doing anything other than going or leaving in Boys-Room: 
	if boys-room-turns <= 0:
		say "There is no more time to spare: you must keep moving.";
		stop the action;

Before doing anything other than going or leaving in Pavilion Room: 
	say "There is no time to stop now.";
	stop the action;

Rule for printing a parser error: 
	if the location is Baseball Room and baseball-room-turns <= 0:
		say "Time is short: you must leave this place.";
		stop the action; 
	otherwise if the location is Boys-Rooms and boys-room-turns <= 0:
		say "There is no more time to spare: you must keep moving.";
		stop the action; 
	otherwise if the location is Pavilion Room:
		say "There is no time to stop now.";
		stop the action;		
	otherwise:
		continue the action;


Part 7 - Default Messages

 Table of custom library messages (continued)
  	Message Id  	Message Text  
  	LibMsg <block attacking>  	"You attack [the noun].[line break]"  
  	LibMsg <block kissing>  	"Hm... they might take that the wrong way.[line break]"
 	