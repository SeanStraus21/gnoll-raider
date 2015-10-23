//argument0 = stack
//argument1 = crnt_cell
/*
current index = (i)div(w)+(i)mod(w)

left =      i-1 exists  && (i)mod(w)!=0
right =     i+1 exists  && (i)mod(w)<(w-1)
top =       i-w exists  && (i)div(w)>0
bottom =    i+w exists  && (i)div(w)<(h-1)

0   1   2   3   4
5   6   7   8   9
10  11  12  13  14

i div w = row#
i mod w = column#

*/
var i,w,h;
i = argument1;
w = argument2;
h = argument3;

//check left
if ((i)mod(w) != 0){
    if (instance_exists(ds_list_find_value(cell_list,i-1))){
        ds_list_add(argument0,ds_list_find_value(cell_list,i-1));
    }
}

//check right
if ((i)mod(w) < (w-1)){
    if (instance_exists(ds_list_find_value(cell_list,i+1))){
        ds_list_add(argument0,ds_list_find_value(cell_list,i+1));
    }
}

//check top
if ((i)div(w) > 0){
    if (instance_exists(ds_list_find_value(cell_list,i-w))){
        ds_list_add(argument0,ds_list_find_value(cell_list,i-w));
    }
}

//check bottom
if ((i)div(w) < (h-1)){
    if (instance_exists(ds_list_find_value(cell_list,i+w))){
        ds_list_add(argument0,ds_list_find_value(cell_list,i+w));
    }
}

