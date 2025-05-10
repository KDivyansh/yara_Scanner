rule EquationGroup_dumppoppy {
   meta:
      description = "Equation Group hack tool leaked by ShadowBrokers- file dumppoppy"
      author = "cyrus"
      reference = "https://medium.com/@shadowbrokerss/dont-forget-your-base-867d304a94b1"
      
      hash1 = "4a5c01590063c78d03c092570b3206fde211daaa885caac2ab0d42051d4fc719"
   strings:
      $x1 = "Unless the -c (clobber) option is used, if two RETR commands of the" fullword ascii
      $x2 = "mywarn(\"End of $destfile determined by \\\"^Connection closed by foreign host\\\"\")" fullword ascii

      $l1 = "End of $destfile determined by \"^Connection closed by foreign host"
   condition:
      ( filesize < 20KB and 1 of them )
}