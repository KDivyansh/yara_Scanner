rule EquationGroup_gr_dev_bin_post {
   meta:
      description = "Equation Group hack tool set"
      author = "cyrus"
      reference = "https://medium.com/@shadowbrokerss/dont-forget-your-base-867d304a94b1"
      
      hash1 = "c1546155efa95dbc4e3cc95299a3968fc075f89d33164e78b00b76c7d08a0591"
   strings:
      $x1 = "op=cron&action=once&frame=cronOnceFrame&cronK=cronV&cronCommand=%2Ftmp%2Ftmpwatch&time=12%3A12+01%2F28%2F2005" ascii
   condition:
      ( filesize < 1KB and all of them )
}