rule EquationGroup_envoytomato {
   meta:
      description = "Equation Group hack tool leaked by ShadowBrokers- file envoytomato"
      author = "cyrus"
      reference = "https://medium.com/@shadowbrokerss/dont-forget-your-base-867d304a94b1"
      
      hash1 = "9bd001057cc97b81fdf2450be7bf3b34f1941379e588a7173ab7fffca41d4ad5"
   strings:
      $s1 = "[-] kernel not vulnerable" fullword ascii
      $s2 = "[-] failed to spawn shell" fullword ascii
   condition:
      filesize < 250KB and 1 of them
}