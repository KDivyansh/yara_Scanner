rule BlackEnergy_BE_2 
{
   
   meta:
      description = "Detects BlackEnergy 2 Malware"
      hash = "983cfcf3aaaeff1ad82eb70f77088ad6ccedee77"
   
   strings:
      $s0 = "<description> Windows system utility service  </description>" fullword ascii
      $s1 = "WindowsSysUtility - Unicode" fullword wide
      $s2 = "msiexec.exe" fullword wide
      $s3 = "WinHelpW" fullword ascii
      $s4 = "ReadProcessMemory" fullword ascii
   
   condition:
      uint16(0) == 0x5a4d and filesize < 250KB and all of ($s*)
}