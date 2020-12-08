///////////////////////////////////////////////////////////////////////////////

class SquadDropLightstickGoal extends SquadCommandGoal;

///////////////////////////////////////////////////////////////////////////////
//
// Variables

var(parameters) Pawn TargetPawn;
var bool			bPlaySpeech;

///////////////////////////////////////////////////////////////////////////////
//
// Constructors

// Use this constructor
overloaded function construct( AI_Resource r, Pawn inCommandGiver, vector inCommandOrigin )
{
	super.construct(r, inCommandGiver, inCommandOrigin);

	assert(inCommandGiver != None);
	TargetPawn = inCommandGiver;
}

///////////////////////////////////////////////////////////////////////////////
//
// Other

function SetPlaySpeech(bool play)
{
	bPlaySpeech = play;
}

function bool GetPlaySpeech()
{
	return bPlaySpeech;
}

///////////////////////////////////////////////////////////////////////////////

defaultproperties
{
	goalName = "SquadDropLightstick"
}
