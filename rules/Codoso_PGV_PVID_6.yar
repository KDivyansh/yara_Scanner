rule Codoso_PGV_PVID_6
{

    meta:
        description = "Detects Codoso APT PGV_PVID Malware"
        author = "cyrus"
        reference = "https://www.proofpoint.com/us/exploring-bergard-old-malware-new-tricks"
        hash = "4b16f6e8414d4192d0286b273b254fa1bd633f5d3d07ceebd03dfdfc32d0f17f"

    strings:
        $s0 = "rundll32 \"%s\",%s" fullword ascii
        $s1 = "/c ping 127.%d & del \"%s\"" fullword ascii

    condition:
        uint16(0) == 0x5a4d and filesize < 6000KB and all of them
}