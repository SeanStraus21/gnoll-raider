var i,j,crnt_cell,picked,h,w;
w=rw+2;
h=rh+2;

for(i=0;i<4;i+=1){
  if (adjacent[i]!=noone){
    switch(i){
      case 0://east
        j = (h div 2)*w+(w-1);
        crnt_cell = ds_list_find_value(cell_list,j);
        while(true){
          //travel west: -1
          j-=1;
          picked = ds_list_find_value(cell_list,j);
          if(picked.cell_type != obj_empty_space){
            picked.cell_type = obj_empty_space;
          }else{
            break;
          }
        }
        break;
      case 1://north
        j = (w div 2);
        crnt_cell = ds_list_find_value(cell_list,j);
        while(true){
          //travel south: +w
          j+=w;
          picked = ds_list_find_value(cell_list,j);
          if(picked.cell_type != obj_empty_space){
            picked.cell_type = obj_empty_space;
          }else{
            break;
          }
        }
        break;
      case 2://west
        j = (h div 2)*w;
        crnt_cell = ds_list_find_value(cell_list,j);
        while(true){
          //travel east: +1
          j+=1;
          picked = ds_list_find_value(cell_list,j);
          if(picked.cell_type != obj_empty_space){
            picked.cell_type = obj_empty_space;
          }else{
            break;
          }
        }
        break;
      case 3://south
        j = (w div 2)+(h-1)*w;
        crnt_cell = ds_list_find_value(cell_list,j);
        while(true){
          //travel north: -w
          j-=w;
          picked = ds_list_find_value(cell_list,j);
          if(picked.cell_type != obj_empty_space){
            picked.cell_type = obj_empty_space;
          }else{
            break;
          }
        }
        break;
    }
    crnt_cell.cell_type = obj_door;
    crnt_cell.entrance_id = i;
    entrance[i]=crnt_cell;
  }
}
