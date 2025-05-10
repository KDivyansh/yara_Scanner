rule antisb_anubis {
    meta:
        Author = "cyrus"
        description = "Anti-Sandbox checks for Anubis"
	version = "0.1"
    strings:
        $p1 = "Software\\Microsoft\\Windows\\CurrentVersion" nocase
        $c1 = "RegQueryValue"
        $s1 = "76487-337-8429955-22614"
        $s2 = "76487-640-1457236-23837"
    condition:
        $p1 and $c1 and 1 of ($s*)
}