rule Dubnium_Sample_2
{

    meta:
        description = "Detects sample mentioned in the Dubnium Report"
        author = "cyrus"
        reference = "https://goo.gl/AW9Cuu"
        hash1 = "5246899b8c74a681e385cbc1dd556f9c73cf55f2a0074c389b3bf823bfc6ce4b"

    strings:
        $x1 = ":*:::D:\\:c:~:" fullword ascii
        $s2 = "SPMUVR" fullword ascii

    condition:
        ( uint16(0) == 0x5a4d and filesize < 2000KB and all of them )
}
