rule DebuggerException__ConsoleCtrl : AntiDebug DebuggerException {
	meta:
		weight = 1
		Author = "cyrus"
		reference = "https://github.com/naxonez/yaraRules/blob/master/AntiDebugging.yara"
	strings:
		$ ="GenerateConsoleCtrlEvent"
	condition:
		any of them
}