#charset "us-ascii"

#include <adv3.h>
#include <en_us.h>

derrigauht_roadside: OutdoorRoom 'Derrigauht Roadside'
    
    "You find yourself dumped along a gravelly path, with large stone cliffs looming to the north and south on either side.
    Some straggly plants grow from crevices but otherwise there are no signs of life around you. Farther down the road to 
    the west you see what might be some caves."

    west = derrigauht_pass
;

derrigauht_pass: OutdoorRoom 'Derrigauht Pass'
    "As you move farther into the desolate pass a sense of foreboding overtakes you. The cliffs continue along for what looks to be another few miles, but 
    the path is much rockier here and difficult to navigate. Tucked into the north wall of the pass are some caves, almost completely obscured by boulders. 
    On the south side of the pass is a large slab of stone, atop which sits a dairy goat. He eyes you hungrily."

    east = derrigauht_roadside
    west = derrigauht_gate
    north = derrigauht_cave_entrance    
;

derrigauht_gate: OutdoorRoom 'Derrigauht Gate'
    "The high point of the pass. At least, it ought to be; westward passage is blocked,
     however, by a massive pile of rubble."
   // Make rubble examinable 

    east = derrigauht_pass
    ;

derrigauht_cave_entrance: OutdoorRoom 'Derrigauht Cave Entrance'
    "parklies.."

    down = derrigauht_cave
;
