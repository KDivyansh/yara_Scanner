rule DebuggerCheck__DrWatson : AntiDebug DebuggerCheck {
	meta:
		weight = 1
		Author = "cyrus"
		reference = "https://github.com/naxonez/yaraRules/blob/master/AntiDebugging.yara"
	strings:
		$ ="__invoke__watson"
	condition:
		any of them
}