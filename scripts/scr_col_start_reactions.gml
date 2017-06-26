
if !scr_loaded() || global.combining_cnt > 0 exit;
    
var prev = noone
    , atom
    , xx = left_x + atom_w * col
    , yy
    , atoms
    , i=0
    , j=1;
    
for( i=0; i<row_cnt; i+=1)
{
    yy = top_y + atom_h * i;
    atom = instance_position(xx, yy, obj_atom);
    if scr_can_react(atom, prev, true) 
    {
        if j == 1 atoms[0] = prev;
        atoms[j] = atom
        j += 1;
    } else {
        if j > 2 break;
        else j = 1;
    }       
    prev = atom;
}

if j > 2
{   
    var kids, axis_index = ceil(j/2) - 1, k=0;
    for(i=0; i<j; i++)
        if i != axis_index
            kids[k++] = atoms[i];
        
    with(atoms[axis_index])
        scr_combine(kids, false);   
}

col = (col + 1) % col_cnt;
