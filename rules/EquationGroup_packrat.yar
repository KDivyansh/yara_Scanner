rule EquationGroup_packrat {
   meta:
      description = "Equation Group hack tool leaked by ShadowBrokers- file packrat"
      author = "cyrus"
      reference = "https://medium.com/@shadowbrokerss/dont-forget-your-base-867d304a94b1"
      
      hash1 = "d3e067879c51947d715fc2cf0d8d91c897fe9f50cae6784739b5c17e8a8559cf"
   strings:
      $x2 = "Use this on target to get your RAT:" fullword ascii
      $x3 = "$ratremotename && " fullword ascii
      $x5 = "$command = \"$nc$bindto -vv -l -p $port < ${ratremotename}\" ;" fullword ascii
   condition:
      ( filesize < 70KB and 1 of them )
}