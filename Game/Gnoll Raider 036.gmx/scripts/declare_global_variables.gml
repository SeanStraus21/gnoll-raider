//declare player variables
globalvar crnt_dungeon, dungeon_seed, mu_destination;
globalvar crnt_pnum, cjp, gold, lexp, sklpts, trtpts, attpts, nextroom, myip, main_unit, destination_coordinates;
//declare ability variables
globalvar trait, quality, abl_slot, abl_lvl, abl_ready, abl_slot_set, skl_lvl;
//declare gnoll ability variables.
globalvar scavenge_level, scavenge_delay, scavenge_energy, scavenge_heal, 
sprint_ready, sprint_level, sprint_duration, sprint_cd, sprint_mod, 
sneak_ready, sneak_delay, sneak_cd, sneak_level, sneak_duration, sneak_mod;
//declare variables for stat modifiers
globalvar spdmod, atkmod, rngmod, defmod, atkspdmod;
//declare private variables
globalvar crnt_spd, crnt_wpn, crnt_rng, crnt_atkspd, crnt_atk, crnt_def, crnt_lvl;

/*
maybe have variables for cd reduction & so forth
*/

//declare multiplayer arrays
globalvar pnum, pname, mu_class, mu_mhp, mu_hp, mu_mep, mu_ep, 
mx, my, mz, mxspd, myspd, mzspd, mfdir, mmdir,
pchar, mu_spr, mu_icon, npcid_array, npcid_index, msneaking, mdodge;
globalvar mu_graveroom,mu_gravex,mu_gravey;
//declare utility variables
globalvar nextroom, roomprevious, allclear, nr_ready, room_index, nextroom_id, room_id, portal_list, mu_portal,temp_socket;
//declare the debugger variables
globalvar debugger_count;
debugger_count = 0;
global.restart = false
global.master = false
global.multiplayer = false
global.var_numberofplayers = 1
global.returning = false
roomprevious = ''
allclear = 0
crnt_pnum = 0
main_unit = 'none'
myip = hostip(myhost());
cjp = 1
npcid_index = 1
npcid_array[1] = ''
spdmod = 0;
atkmod = 0;
rngmod = 0;
defmod = 0;
atkspdmod = 0;
abl_slot_set = 0;

for(i=0;i<8;i+=1){
  //set mu_portal to null
  mu_portal[i] = -1;
  //set mu_chamber to null
  mu_chamber[i] = -1;
  //set mu_destination to null
  mu_destination[i] = -1;
  //declare ready bool array
  nr_ready[i] = 0
  //declare main unit array
  pchar[i] = 0
  //declare player ID array
  pnum[i] = i
  //declare max hitpoint array
  mu_mhp[i] = 0;
  //declare currenthitpoint array
  mu_hp[i] = 0;
  //declare max energypoint array
  mu_mep[i] = 0;
  //declare currentenergypoint array
  mu_ep[i] = 0;
  //declare direction array
  mfdir[i] = 270;
  //declare coordinate and speed arrays
  mx[i] = 0;
  my[i] = 0;
  mz[i] = 0;
  mxspd[i] = 0;
  myspd[i] = 0;
  mzspd[i] = 0;
  //declare grave locations
  mu_graveroom[i] = room;
}
