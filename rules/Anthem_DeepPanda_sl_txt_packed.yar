rule Anthem_DeepPanda_sl_txt_packed
{

    meta:
        description = "Anthem Hack Deep Panda - ScanLine sl-txt-packed"
        author = "cyrus"
        hash = "ffb1d8ea3039d3d5eb7196d27f5450cac0ea4f34"

    strings:
        $s0 = "Command line port scanner" fullword wide
        $s1 = "sl.exe" fullword wide
        $s2 = "CPports.txt" fullword ascii
        $s3 = ",GET / HTTP/.}" fullword ascii
        $s4 = "Foundstone Inc." fullword wide
        $s9 = " 2002 Foundstone Inc." fullword wide
        $s15 = ", Inc. 2002" fullword ascii
        $s20 = "ICMP Time" fullword ascii

    condition:
        all of them
}