x_offset = argument0;y_offset = argument1;
if (adjacent[0] != noone){
lastcreated = instance_create(0,0,obj_abstract_cell);
lastcreated.cell_x = 544;
lastcreated.cell_y = 1168;
lastcreated.cell_type = obj_door;
lastcreated.entrance_id = 0;
entrance[0] = lastcreated;
ds_list_add(cell_list,lastcreated);lastcreated = instance_create(0,0,obj_abstract_cell);
lastcreated.cell_x = 480+ x_offset;
lastcreated.cell_y = 1168+ y_offset;
lastcreated.cell_z = 64;
lastcreated.cell_type = obj_ground;
lastcreated.chamber = id;
ds_list_add(cell_list,lastcreated);
startlocation[0] = lastcreated;
}else{
  
lastcreated = instance_create(0,0,obj_abstract_cell);
lastcreated.cell_x = 544+ x_offset;
lastcreated.cell_y = 1168+ y_offset;
lastcreated.cell_z = 128;
lastcreated.cell_type = obj_door_empty;
lastcreated.chamber = id;
ds_list_add(cell_list,lastcreated);
lastcreated = instance_create(0,0,obj_abstract_cell);
lastcreated.cell_x = 576+ x_offset;
lastcreated.cell_y = 1184+ y_offset;
lastcreated.cell_z = 128;
lastcreated.cell_type = obj_door_empty;
lastcreated.chamber = id;
ds_list_add(cell_list,lastcreated);
}

if (adjacent[1] != noone){
lastcreated = instance_create(0,0,obj_abstract_cell);
lastcreated.cell_x = 320;
lastcreated.cell_y = 1088;
lastcreated.cell_type = obj_door;
lastcreated.entrance_id = 1;
entrance[1] = lastcreated;
ds_list_add(cell_list,lastcreated);lastcreated = instance_create(0,0,obj_abstract_cell);
lastcreated.cell_x = 320+ x_offset;
lastcreated.cell_y = 1120+ y_offset;
lastcreated.cell_z = 64;
lastcreated.cell_type = obj_ground;
lastcreated.chamber = id;
ds_list_add(cell_list,lastcreated);
startlocation[1] = lastcreated;
}else{
  
lastcreated = instance_create(0,0,obj_abstract_cell);
lastcreated.cell_x = 320+ x_offset;
lastcreated.cell_y = 1088+ y_offset;
lastcreated.cell_z = 128;
lastcreated.cell_type = obj_door_empty;
lastcreated.chamber = id;
ds_list_add(cell_list,lastcreated);
}

if (adjacent[2] != noone){
lastcreated = instance_create(0,0,obj_abstract_cell);
lastcreated.cell_x = 96;
lastcreated.cell_y = 1200;
lastcreated.cell_type = obj_door;
lastcreated.entrance_id = 2;
entrance[2] = lastcreated;
ds_list_add(cell_list,lastcreated);lastcreated = instance_create(0,0,obj_abstract_cell);
lastcreated.cell_x = 160+ x_offset;
lastcreated.cell_y = 1200+ y_offset;
lastcreated.cell_z = 64;
lastcreated.cell_type = obj_ground;
lastcreated.chamber = id;
ds_list_add(cell_list,lastcreated);
startlocation[2] = lastcreated;
}else{
  
lastcreated = instance_create(0,0,obj_abstract_cell);
lastcreated.cell_x = 96+ x_offset;
lastcreated.cell_y = 1200+ y_offset;
lastcreated.cell_z = 128;
lastcreated.cell_type = obj_door_empty;
lastcreated.chamber = id;
ds_list_add(cell_list,lastcreated);
lastcreated = instance_create(0,0,obj_abstract_cell);
lastcreated.cell_x = 64+ x_offset;
lastcreated.cell_y = 1216+ y_offset;
lastcreated.cell_z = 128;
lastcreated.cell_type = obj_door_empty;
lastcreated.chamber = id;
ds_list_add(cell_list,lastcreated);
}

if (adjacent[3] != noone){
lastcreated = instance_create(0,0,obj_abstract_cell);
lastcreated.cell_x = 352;
lastcreated.cell_y = 1520;
lastcreated.cell_type = obj_door;
lastcreated.entrance_id = 3;
entrance[3] = lastcreated;
ds_list_add(cell_list,lastcreated);lastcreated = instance_create(0,0,obj_abstract_cell);
lastcreated.cell_x = 352+ x_offset;
lastcreated.cell_y = 1424+ y_offset;
lastcreated.cell_z = 64;
lastcreated.cell_type = obj_ground;
lastcreated.chamber = id;
ds_list_add(cell_list,lastcreated);
startlocation[3] = lastcreated;
}else{
  
lastcreated = instance_create(0,0,obj_abstract_cell);
lastcreated.cell_x = 352+ x_offset;
lastcreated.cell_y = 1520+ y_offset;
lastcreated.cell_z = 128;
lastcreated.cell_type = obj_door_empty;
lastcreated.chamber = id;
ds_list_add(cell_list,lastcreated);
}
lastcreated = instance_create(0,0,obj_abstract_cell);
lastcreated.cell_x = 288+ x_offset;
lastcreated.cell_y = 1296+ y_offset;
lastcreated.cell_z = 64;
lastcreated.cell_type = obj_ground;
lastcreated.chamber = id;
ds_list_add(cell_list,lastcreated);
startlocation_main = lastcreated;
