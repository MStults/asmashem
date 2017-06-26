//argument0 => old atom
//argument1 => new atom

//*** ORIGINAL CODE 
//if !scr_loaded() || global.combining_cnt > 0 then return false;

var atom_old = argument0
    , atom_new = argument1
    , xx
    , yy = atom_old.y
    , atoms;
    
if atom_old.type == AtomType.GamePiece then return false;
    
if atom_old.type == AtomType.Iron then return false;

if atom_new.type == AtomType.Iron
{
    if atom_old.type == AtomType.Laser
    or atom_old.type == AtomType.Shotgun
    or atom_old.type == AtomType.Missile
    or atom_old.type == AtomType.Anti
    or atom_old.type == AtomType.Mine
    then return true;
    else return false;
        
}

if atom_old.type = AtomType.Dop 
    or atom_old.type == AtomType.Laser
    or atom_old.type == AtomType.Shotgun
    or atom_old.type == AtomType.Missile
    or atom_old.type == AtomType.Anti
    or atom_old.type == AtomType.Mine
then return true;
    

//check lightning
//if atom_old.type == AtomType.Lightning ||  atom_new.type == AtomType.Lightning return true;

//Horizontal left
xx = atom_old.x - atom_old.atom_w * 2;
atoms[0] = instance_position(xx, yy, obj_atom);
    
xx = atom_old.x - atom_old.atom_w;
atoms[1] = instance_position(xx, yy, obj_atom);

//Horizontal right
xx = atom_old.x + atom_old.atom_w;
atoms[2] = instance_position(xx, yy, obj_atom);

xx = atom_old.x + atom_old.atom_w * 2;
atoms[3] = instance_position(xx, yy, obj_atom);

//remove new atom
for(var i=0; i<4; i++)
    if atoms[i] && atoms[i].id == atom_new.id then atoms[i] = noone;

//Check Horizontal
if scr_same(atom_new, atoms[1]) && scr_same(atom_new, atoms[2]) then return true; //middle
if scr_same(atom_new, atoms[0]) && scr_same(atom_new, atoms[1]) then return true; //end left
if scr_same(atom_new, atoms[2]) && scr_same(atom_new, atoms[3]) then return true; //end right


//find the largest and smallest y values to account for the result of the atoms floating up
//if there x values are not the same (not in a Vertical line) the the y values should be the same 
var top =  min(atom_old.y, atom_new.y); 
var bottom = max(atom_old.y, atom_new.y);

xx = atom_old.x;

//Vertical top atoms
yy = top - atom_old.atom_h * 2; 
atoms[0] = instance_position(xx, yy, obj_atom);

yy += atom_old.atom_h;
atoms[1] = instance_position(xx, yy, obj_atom);

//Vertical bottom atoms
yy = bottom + atom_old.atom_h; 
atoms[2] = instance_position(xx, yy, obj_atom);

yy += atom_old.atom_h; 
atoms[3] = instance_position(xx, yy, obj_atom);    

for(var i=0; i<4; i++)
    if atoms[i] && atoms[i].id == atom_new.id then atoms[i] = noone;

//Check Vertical
if scr_same(atom_new, atoms[1]) && scr_same(atom_new, atoms[2]) then return true; //middle
if scr_same(atom_new, atoms[0]) && scr_same(atom_new, atoms[1]) then return true; //end top
if scr_same(atom_new, atoms[2]) && scr_same(atom_new, atoms[3]) then return true; //end bottom

    
//no match 
return false;
