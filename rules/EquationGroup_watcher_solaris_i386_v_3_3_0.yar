rule EquationGroup_watcher_solaris_i386_v_3_3_0 {
   meta:
      description = "Equation Group hack tool set"
      author = "cyrus"
      reference = "https://medium.com/@shadowbrokerss/dont-forget-your-base-867d304a94b1"
      
      hash1 = "395ec2531970950ffafde234dded0cce0c95f1f9a22763d1d04caa060a5222bb"
   strings:
      $s1 = "getexecname" fullword ascii
      $s2 = "invalid option `" fullword ascii
      $s6 = "__fpstart" fullword ascii
      $s12 = "GHFIJKLMNOPQRSTUVXW" fullword ascii
   condition:
      ( uint16(0) == 0x457f and filesize < 700KB and all of them )
}