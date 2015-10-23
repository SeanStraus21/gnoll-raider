///Generate NPCs

//set stuff up
var a,tempnum,lastcreated,templist,npc_count;
templist = ds_list_create();
ds_list_copy(templist,cell_list);
//ds_list_delete(templist,origin);//rule out origin
tempnum = ds_list_size(templist);
for(i=tempnum-1;i>=0;i-=1){
  a = ds_list_find_value(templist,i);
  if (a.cell_type != obj_empty_space){
    ds_list_delete(templist,i);
  }
}


npc_count = 10;
for(i=0;i<npc_count;i+=1){
  if (ds_list_size(templist) == 0){
    //maybe do something to get extra enemies
    break;
  }
  temp_num = floor(random(ds_list_size(templist)));
  a = ds_list_find_value(templist,temp_num);
  ds_list_delete(templist,temp_num);
  lastcreated = instance_create(0,0,obj_abstract_npc);
  lastcreated.npc_x = a.cell_x;
  lastcreated.npc_y = a.cell_y;
  tempnum = floor(random(ds_list_size(dungeon.npc_type_list)));
  lastcreated.npc_type = ds_list_find_value(dungeon.npc_type_list,tempnum);
  ds_list_add(npc_list,lastcreated);
}
//clean up the mess
ds_list_destroy(templist);
