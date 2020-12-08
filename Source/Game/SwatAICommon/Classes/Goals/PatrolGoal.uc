///////////////////////////////////////////////////////////////////////////////
// PatrolGoal.uc - PatrolGoal class
// this goal is given to those AIs that patrol around the level

class PatrolGoal extends SwatCharacterGoal;
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
//
// Variables

// copied to our action
var(parameters) PatrolList	Patrol;

///////////////////////////////////////////////////////////////////////////////
//
// Overloaded Constructor

overloaded function construct( AI_Resource r, PatrolList inPatrol )
{
	super.construct( r, priority );

	assert(inPatrol != None);
	Patrol = inPatrol;
}

///////////////////////////////////////////////////////////////////////////////
defaultproperties
{
    priority           = 30
    goalName           = "Patrol"
	bTerminateIfStolen = true
}
