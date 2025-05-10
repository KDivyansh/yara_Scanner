rule EquationGroup_emptycriss {
   meta:
      description = "Equation Group hack tool leaked by ShadowBrokers- file emptycriss"
      author = "cyrus"
      reference = "https://medium.com/@shadowbrokerss/dont-forget-your-base-867d304a94b1"
      
      hash1 = "a698d35a0c4d25fd960bd40c1de1022bb0763b77938bf279e91c9330060b0b91"
   strings:
      $s1 = "./emptycriss <target IP>" fullword ascii
      $s2 = "Cut and paste the following to the telnet prompt:" fullword ascii
      $s8 = "environ define TTYPROMPT abcdef" fullword ascii
   condition:
      ( filesize < 50KB and 1 of them )
}