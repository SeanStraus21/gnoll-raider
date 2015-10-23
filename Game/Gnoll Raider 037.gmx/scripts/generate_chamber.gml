//Virtual Maze
/*
This version generates an abstract room from a schematic
*/

var my_number, my_script;
my_number = floor(random(ds_list_size(dungeon.chamber_schematics_list)));

my_script = dungeon.chamber_schematics_list[|my_number];
script_execute(my_script);
