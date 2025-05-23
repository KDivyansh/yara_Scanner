rule EquationGroup_porkserver {
   meta:
      description = "Equation Group hack tool leaked by ShadowBrokers- file porkserver"
      author = "cyrus"
      reference = "https://medium.com/@shadowbrokerss/dont-forget-your-base-867d304a94b1"
      
      hash1 = "7b5f86e289047dd673e8a09438d49ec43832b561bac39b95098f5bf4095b8b4a"
   strings:
      $s1 = "%s/%s server failing (looping), service terminated" fullword ascii
      $s2 = "getpwnam: %s: No such user" fullword ascii
      $s3 = "execv %s: %m" fullword ascii
      $s4 = "%s/%s: unknown service" fullword ascii
   condition:
      ( uint16(0) == 0x457f and filesize < 70KB and 3 of them )
}