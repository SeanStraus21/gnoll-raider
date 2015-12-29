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
    //move as far as possible in the desired direction
    //move_contact_solid(dir_move,crnt_spd);
    if (!place_free(x+xspd,y)){
      move_contact_solid(270+sign(xspd)*90,xspd);
      xspd = 0;
    }else{
      x += xspd;
    }
    if (!place_free(x,y+yspd)){
      move_contact_solid(180+sign(yspd)*90,yspd);
      yspd = 0;
    }else{
      y += yspd;
    }
  }
}
/*
grabbing walls problem:
  the original system was designed for orthogonal movement, but problems arise when colliding with diagonal objs
  Our first improvement is to use separate checks for yspd and xspd.
  Well, nothings easy. This means that pixels are catching and additional checks are needed
    We have to be careful here. the underlying logic is sound: 
      if destination can be reached, move there, else get as close as possible
    But our definition of close as possible relies on the results of move_contact solid
    There is one issue with our existing solution, which is that a very fast gnoll could teleport across obstacles.
    This hasn't been a problem yet, but it might be if we redefine "close as possible"
  our final resort is to replaced the move_contact_solid with a custom function.
  In a pinch, we could also just stop pretending there is an arbitrary number of directions, we know there are only 8
*/

