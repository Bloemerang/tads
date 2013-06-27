#charset "us-ascii"

#include <adv3.h>
#include <en_us.h>

class Sword: Thing
    iobjFor(AttackWith)
    {
        verify() {}
        action() { "You strike the <<gDobj.name>> with the <<name>>, <<result_of_attack>>."; }
    }

    result_of_attack = 'but nothing happens'
;
