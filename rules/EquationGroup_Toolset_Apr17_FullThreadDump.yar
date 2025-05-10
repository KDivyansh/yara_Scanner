rule EquationGroup_Toolset_Apr17_FullThreadDump {
   meta:
      description = "Detects EquationGroup Tool - April Leak"
      author = "cyrus"
      reference = "https://steemit.com/shadowbrokers/@theshadowbrokers/lost-in-translation"
      
      hash1 = "b68f3f32bfa6cf11145c9fb9bf0075a5ca3938ea218b1cc29ad62f7b9e043255"
   strings:
      $s1 = "FullThreadDump.class" fullword ascii
      $s2 = "ThreadMonitor.class" fullword ascii
      $s3 = "Deadlock$DeadlockThread.class" fullword ascii
   condition:
      ( uint16(0) == 0x4b50 and filesize < 30KB and all of them )
}