/*
    x-1 x   x+1
y-1 3   2   1
y   4       0
y+1 5   6   7

0 =     i+1 exists      && (i)mod(w)<(w-1) 

1 =     i-w+1 exists    && (i)div(w)>0      && (i)mod(w)<(w-1)
2 =     i-w exists      && (i)div(w)>0      
3 =     i-w-1 exists    && (i)div(w)>0      && (i)mod(w)!=0

4 =     i-1 exists      && (i)mod(w)!=0     
 
5 =     i+w-1 exists    && (i)div(w)<(h-1)  && (i)mod(w)!=0
6 =     i+w exists      && (i)div(w)<(h-1)  
7 =     i+w+1 exists    && (i)div(w)<(h-1)  && (i)mod(w)<(w-1)
*/
var flag,i,w,h;
flag = false;
i = argument0;
w = argument1;
h = argument2;

//i+1 exists      && (i)mod(w)<(w-1)
cell[0] = false;
if ((i)mod(w) < (w-1)){
    if (instance_exists(ds_list_find_value(cell_list,i+1))){
        cell[0] = true;
    }
}
//i-w+1 exists    && (i)div(w)>0      && (i)mod(w)<(w-1)
cell[1] = false;
if ((i)div(w)>0 && (i)mod(w)<(w-1)){
    if (instance_exists(ds_list_find_value(cell_list,i-w+1))){
        cell[1] = true;
    }
}
//i-w exists      && (i)div(w)>0 
cell[2] = false;
if ((i)div(w)>0){
    if (instance_exists(ds_list_find_value(cell_list,i-w))){
        cell[2] = true;
    }
}
//i-w-1 exists    && (i)div(w)>0 && (i)mod(w)!=0
cell[3] = false;
if ((i)div(w)>0 && (i)mod(w)!=0){
    if (instance_exists(ds_list_find_value(cell_list,i-w-1))){
        cell[3] = true;
    }
}
//i-1 exists      && (i)mod(w)!=0     
cell[4] = false;
if ((i)mod(w)!=0){
    if (instance_exists(ds_list_find_value(cell_list,i-1))){
        cell[4] = true;
    }
}
//i+w-1 exists    && (i)div(w)<(h-1) && (i)mod(w)!=0
cell[5] = false;
if ((i)div(w)<(h-1) && (i)mod(w)!=0){
    if (instance_exists(ds_list_find_value(cell_list,i+w-1))){
        cell[5] = true;
    }
}
//i+w exists      && (i)div(w)<(h-1) 
cell[6] = false;
if ((i)div(w)<(h-1)){
    if (instance_exists(ds_list_find_value(cell_list,i+w))){
        cell[6] = true;
    }
}
//i+w+1 exists    && (i)div(w)<(h-1) && (i)mod(w)<(w-1)
cell[7] = false;
if ((i)div(w)<(h-1) && (i)mod(w)<(w-1)){
    if (instance_exists(ds_list_find_value(cell_list,i+w+1))){
        cell[7] = true;
    }
}
/*
if (
(cell[0] && cell[1] && cell[2] && cell[3] && cell[4])
||
(cell[2] && cell[3] && cell[4] && cell[5] && cell[6])
||
(cell[4] && cell[5] && cell[6] && cell[7] && cell[0])
||
(cell[6] && cell[7] && cell[0] && cell[1] && cell[2])
){
    flag = true;
}else{
    flag = false;
}
return flag;
*/

if (
(cell[0] && cell[1] && cell[3] && cell[4])
||
(cell[2] && cell[3] && cell[5] && cell[6])
||
(cell[4] && cell[5] && cell[7] && cell[0])
||
(cell[6] && cell[7] && cell[1] && cell[2])
){
    flag = true;
}else{
    flag = false;
}
return flag;

