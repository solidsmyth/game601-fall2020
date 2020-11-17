"game601-Escape" by Sam Smyth

Release along with the "Quixe" interpreter

The Escape Room is a room. The player is in the Escape Room. The description of the Escape Room is "You are in an Escape Room. The room is mostly bare. There are three doors: one to the North, one to the East, and one to the West. There is no door on the South wall. A table sits in the middle of the room." 

The table is a thing.
The table is scenery. 
The description of the table is "A table in the middle of the room." 
The table is a supporter. 
The table is in the Escape Room.

Instead of taking the table:
	say "The table is bolted to the ground.";
	stop the action.

The box is a thing.
The box is on the table.
The description of the box is "A small wooden box."

The blue key is a thing.
The blue key can be discovered or undiscovered.
The blue key is undiscovered.
The description of the blue key is "A blue key. It is marked with the letter S."
The blue key unlocks the South Wall.

Instead of taking the box:
	If the blue key is undiscovered:
		say "You pick up the box. Inside is a blue key. You take the blue key and put it in your pocket."; 
		now the player is carrying the blue key;
		now the blue key is discovered;
		stop the action;
	otherwise:
		say "You want to take the box but it is useless."

North Door is a door.
The North Door is scenery.
The description of North Door is "A door inscribed with the letter N. There is a key hole in the door knob."
North Door can be locked or unlocked.
North Door is closed.
North Door is locked.

The North Door is north of the Escape Room and south of the Exit.

East Door is a door.
The East Door is scenery.
The description of East Door is "A door inscribed with the letter E. There is a key hole in the door knob."
East Door can be locked or unlocked.
East Door is closed.
East Door is locked.

The East Door is east of the Escape Room and west of the Light Room.

West Door is a door.
The West Door is scenery.
The description of West Door is "A door inscribed with the letter W. There is a key hole in the door knob."
West Door can be locked or unlocked.
West Door is closed.
West Door is locked.

The West Door is west of the Escape Room and east of the Chest Room.

South Wall is a door.
The South Wall is scenery.
The description of South Wall is "A wall inscribed with the letter S. There is a small key hole in the middle of the S."
South Wall can be locked or unlocked.
South Wall is closed.
South Wall is locked.

The South Wall is south of the Escape Room and north of the Blue Room.


The Chest Room is a room. "You open the West Door to reveal a small room."
The small chest is a fixed in place locked container in the Chest Room. "There is a small golden chest is the center of the room. It has no markings." A green key is here. "A green key sits on top of the chest." 

The description of the small chest is "It's just a small golden chest with no markings."
The description of the green key is "A green key. An E is etched into the handle."
The green key unlocks the East Door.

The red key is a thing in the small chest.
The description of the red key is "A red key. Someone got lazy and just drew an N on it with sharpie."
The red key unlocks the North Door.

The Exit is a room. After opening the North Door, end the story saying "You step into the room. Balloons fall from the ceiling along with a banner that says CONGRATULATIONS! YOU ESCAPED!"

The Blue Room is a room. "You open the South Wall to reveal a small Blue Room." A purple key is here. "A purple key hangs from a string in the middle of the room."

The description of the purple key is "A purple key. There is a W inscribed on the handle."
The purple key unlocks the West Door.

The Light Room is a room. "You open the East Door to reveal a blindingly lit room. You cover your eyes and look around." A golden key is here. "A golden key shines in the center of the room."

The description of the golden key is "A golden key. It shines even when it is not in the light."
The golden key unlocks the small chest. 

