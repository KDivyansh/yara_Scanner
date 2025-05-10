rule dragos_crashoverride_moduleStrings { 
	meta:
		description = "IEC-104 Interaction Module Program Strings"
		author = "cyrus"
		reference = "https://dragos.com/blog/crashoverride/CrashOverride-01.pdf"
	strings:      
		$s1 = "IEC-104 client: ip=%s; port=%s; ASDU=%u" nocase wide ascii 
		$s2 = " MSTR ->> SLV" nocase wide ascii 
		$s3 = " MSTR <<- SLV" nocase wide ascii 
		$s4 = "Unknown APDU format !!!" nocase wide ascii 
		$s5 = "iec104.log" nocase wide ascii 
	condition:
		any of ($s*)
}