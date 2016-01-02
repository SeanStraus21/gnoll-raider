x_offset = argument0y_offset = argument1
lastcreated = instance_create(0,0,obj_abstract_cell);
lastcreated.cell_x = 416+ x_offset;
lastcreated.cell_y = 368+ y_offset;
lastcreated.cell_z = 0;
lastcreated.cell_type = obj_doodad_rock_00;
lastcreated.chamber = id;
ds_list_add(cell_list,lastcreated);
lastcreated = instance_create(0,0,obj_abstract_cell);
lastcreated.cell_x = 384+ x_offset;
lastcreated.cell_y = 800+ y_offset;
lastcreated.cell_z = 0;
lastcreated.cell_type = obj_doodad_rock_00;
lastcreated.chamber = id;
ds_list_add(cell_list,lastcreated);
lastcreated = instance_create(0,0,obj_abstract_cell);
lastcreated.cell_x = 832+ x_offset;
lastcreated.cell_y = 416+ y_offset;
lastcreated.cell_z = 0;
lastcreated.cell_type = obj_doodad_rock_00;
lastcreated.chamber = id;
ds_list_add(cell_list,lastcreated);
lastcreated = instance_create(0,0,obj_abstract_npc);
lastcreated.npc_x = -384+ x_offset;
lastcreated.npc_y = 0+ y_offset;
lastcreated.npc_type = obj_enemyspawn_g_l_ex;
lastcreated.chamber = id;
ds_list_add(npc_list,lastcreated);
with(lastcreated){event_user(0);}
lastcreated = instance_create(0,0,obj_abstract_npc);
lastcreated.npc_x = -384+ x_offset;
lastcreated.npc_y = 0+ y_offset;
lastcreated.npc_type = obj_enemyspawn_g_l_ex;
lastcreated.chamber = id;
ds_list_add(npc_list,lastcreated);
with(lastcreated){event_user(0);}
lastcreated = instance_create(0,0,obj_abstract_npc);
lastcreated.npc_x = -384+ x_offset;
lastcreated.npc_y = 0+ y_offset;
lastcreated.npc_type = obj_enemyspawn_g_m_ex;
lastcreated.chamber = id;
ds_list_add(npc_list,lastcreated);
with(lastcreated){event_user(0);}
lastcreated = instance_create(0,0,obj_abstract_npc);
lastcreated.npc_x = -384+ x_offset;
lastcreated.npc_y = 0+ y_offset;
lastcreated.npc_type = obj_enemyspawn_g_m_ex;
lastcreated.chamber = id;
ds_list_add(npc_list,lastcreated);
with(lastcreated){event_user(0);}
