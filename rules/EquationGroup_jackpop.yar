rule EquationGroup_jackpop {
   meta:
      description = "Equation Group hack tool leaked by ShadowBrokers- file jackpop"
      author = "cyrus"
      reference = "https://medium.com/@shadowbrokerss/dont-forget-your-base-867d304a94b1"
      
      hash1 = "0b208af860bb2c7ef6b1ae1fcef604c2c3d15fc558ad8ea241160bf4cbac1519"
   strings:
      $x1 = "%x:%d  --> %x:%d %d bytes" fullword ascii

      $s1 = "client: can't bind to local address, are you root?" fullword ascii
      $s2 = "Unable to register port" fullword ascii
      $s3 = "Could not resolve destination" fullword ascii
      $s4 = "raw troubles" fullword ascii
   condition:
      ( uint16(0) == 0x457f and filesize < 30KB and 3 of them ) or ( all of them )
}