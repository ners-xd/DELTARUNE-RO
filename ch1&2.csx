#load "main.csx"

if (Data?.GeneralInfo?.DisplayName?.Content != "DELTARUNE Chapter 1&2")
{
	ScriptError("Versiune invalidă (folosește DELTARUNE Chapter 1&2).");
	return;
}

BuildMod();