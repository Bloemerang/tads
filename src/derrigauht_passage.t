#charset "us-ascii"

#include <adv3.h>
#include <en_us.h>

derrigauht_roadside: OutdoorRoom 'Derrigauht Roadside'
    "A little spot on the side of the road, which I haven't had a chance to
     describe in greater detail"

    west = derrigauht_pass
;

derrigauht_pass: OutdoorRoom 'Derrigauht Pass'
    "A gorge with a road running through it. Cliffs tower up on both sides. It
     is open to the east and west"

    east = derrigauht_roadside
    west = derrigauht_gate
;

derrigauht_gate: OutdoorRoom 'Derrigauht Gate'
    "The high point of the pass. At least, it ought to be; westward passage is blocked,
     however, by a massive pile of rubble."

    east = derrigauht_pass
    west = derrigauht_cave_entrance
;

derrigauht_cave_entrance: OutdoorRoom 'Derrigauht Cave Entrance'
    "todo.."

    down = derrigauht_cave
;
