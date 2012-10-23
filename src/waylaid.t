#charset "us-ascii"

#include <adv3.h>
#include <en_us.h>

/*
 *   Our game credits and version information.  This object isn't required
 *   by the system, but our GameInfo initialization needs this for
 *   some of its information.
 */
versionInfo: GameID
    IFID = 'c2d8dead-0fb2-4cf5-bc80-793137b1f072'
    name = 'Waylaid'
    byline = 'by The Troublemakers'
    htmlByline = 'by <a href="mailto:enyalie.is@gmail.com">
                  The Troublemakers</a>'
    version = '1'
    authorEmail = 'The Troublemakers <enyalie.is@gmail.com>'
    desc = 'Glug glug glug....thunk.'
    htmlDesc = 'Glug glug glug....thunk.'

    /* 
     *   other bibliographic tags you might want to set include:
     *
     *.    headline = 'An Interactive Sample'
     *.    seriesName = 'The Sample Trilogy'
     *.    seriesNumber = '1'
     *.    genreName = 'Sample Games'
     *.    forgivenessLevel = 'Polite'
     *.    gameUrl = 'http://mysite.com/mygame.htm'
     *.    firstPublished = '2006'
     *.    languageCode = 'en-US'
     *.    licenseType = 'Freeware'
     *.    copyingRules = 'Nominal cost only; compilations allowed'
     *.    presentationProfile = 'Default'
     */

    showCredit()
    {
        /* show our credits */
        "Put credits for the game here. ";

        /* 
         *   The game credits are displayed first, but the library will
         *   display additional credits for library modules.  It's a good
         *   idea to show a blank line after the game credits to separate
         *   them visually from the (usually one-liner) library credits
         *   that follow.  
         */
        "\b";
    }
    showAbout()
    {
        "Put information for players here.  Many authors like to mention
        any unusual commands here, along with background information on
        the game (for example, the author might mention that the game
        was created as an entry for a particular competition). ";
    }
;

/*
 *   Define the player character.  The name of this object is not
 *   important, but note that it has to match up with the name we use in
 *   the main() routine to initialize the game, below.
 *   
 *   Note that we aren't required to define any vocabulary or description
 *   for this object, because the class Actor, defined in the library,
 *   automatically provides the appropriate definitions for an Actor when
 *   the Actor is serving as the player character.  Note also that we
 *   don't have to do anything special in this object definition to make
 *   the Actor the player character; any Actor can serve as the player
 *   character, and we'll establish this one as the PC in main(), below.  
 */
me: Actor
    /* the initial location is the Derrigauht Roadside */
    location = derrigauht_roadside
;

/*
 *   The "gameMain" object lets us set the initial player character and
 *   control the game's startup procedure.  Every game must define this
 *   object.  For convenience, we inherit from the library's GameMainDef
 *   class, which defines suitable defaults for most of this object's
 *   required methods and properties.  
 */
gameMain: GameMainDef
    /* the initial player character is 'me' */
    initialPlayerChar = me

    /* 
     *   Show our introductory message.  This is displayed just before the
     *   game starts.  Most games will want to show a prologue here,
     *   setting up the situation for the player, and show the title of the
     *   game.  
     */
    showIntro()
    {
        "Bwaahahaha!\b";
    }

    /* 
     *   Show the "goodbye" message.  This is displayed on our way out,
     *   after the user quits the game.  You don't have to display anything
     *   here, but many games display something here to acknowledge that
     *   the player is ending the session.  
     */
    showGoodbye()
    {
        "<.p>Thanks for playing!\b";
    }
;
