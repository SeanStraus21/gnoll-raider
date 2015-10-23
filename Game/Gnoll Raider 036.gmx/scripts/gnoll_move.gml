///move generic
/*
xspd = displacement on x axis
yspd = displacement on y axis
*/

pivoting = pivot_btn;
strafing = strafe_btn;

//check keyboard input to determine maximum displacement
if (arrow_left){
  xspd = -1*(crnt_spd + spdmod);
}
if (arrow_right){
  xspd = (crnt_spd + spdmod);
}
if (arrow_up){
  yspd = -1*(crnt_spd + spdmod);
}
if (arrow_down){
  yspd = (crnt_spd + spdmod);
}
//if sneaking = true, modify total speed to account for it
if (sneaking){
  xspd = floor(xspd*sneak_mod+1);
  yspd = floor(yspd*sneak_mod+1);
}

if(!arrow_left && !arrow_right){
  xspd = 0;
}
if(!arrow_up && !arrow_down){
  yspd = 0;
}

dir_move = speed_direction(xspd,yspd,dir_move);

if (!strafing && !stunned){
  dir_face = dir_move;
}

//xspd = lengthdir_x(crnt_spd,dir_move);
//yspd = lengthdir_y(crnt_spd,dir_move);
//if conditions permit, move desired amount
if (!pivoting && !snared && !channeling && !stunned && controlling_player == crnt_pnum && !instance_exists(obj_menu_parent)){
  if (place_free(x+xspd,y+yspd)){
    x += xspd;
    y += yspd;
  }else{
    xspd = 0;
    yspd = 0;
    move_contact_solid(dir_move,crnt_spd);
  }
}

