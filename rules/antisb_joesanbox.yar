rule antisb_joesanbox {
     meta:
        author = "cyrus"
        description = "Anti-Sandbox checks for Joe Sandbox"
	version = "0.1"
    strings:
	$p1 = "Software\\Microsoft\\Windows\\CurrentVersion" nocase
	$c1 = "RegQueryValue"
	$s1 = "55274-640-2673064-23950"
    condition:
        all of them
}
