rule dragos_crashoverride_exporting_dlls {
	meta:
		description = "CRASHOVERRIDE v1 Suspicious Export"
		author = "cyrus"
		reference = "https://dragos.com/blog/crashoverride/CrashOverride-01.pdf"
	condition:
		pe.exports("Crash") & pe.characteristics
}
