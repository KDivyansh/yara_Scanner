rule APT_bestia
{
meta:
    description = "Bestia.3.02.012.07 malware used in APT attacks on Polish government"
    references = "http://zaufanatrzeciastrona.pl/post/ukierunkowany-atak-na-pracownikow-polskich-samorzadow/" /* PL */
    hash0 = "9bb03bb5af40d1202378f95a6485fba8"
    hash1 = "7d9a806e0da0b869b10870dd6c7692c5"
    maltype = "apt"
    filetype = "exe"
strings:
    $string0 = "u4(UeK"
    $string1 = "nMiq/'p"
    $string2 = "_9pJMf"
    $string3 = "ICMP.DLL"
    $string4 = "EG}QAp"
    $string5 = "tsjWj:U"
    $string6 = "FileVersion" wide
    $string7 = "O2nQpp"
    $string8 = "2}W8we"
    $string9 = "ILqkC:l"
    $string10 = "f1yzMk"
    $string11 = "AutoIt v3 Script: 3, 3, 8, 1" wide
    $string12 = "wj<1uH"
    $string13 = "6fL-uD"
    $string14 = "B9Iavo<"
    $string15 = "rUS)sO"
    $string16 = "FJH{_/f"
    $string17 = "3e 03V"
condition:
    17 of them
}
