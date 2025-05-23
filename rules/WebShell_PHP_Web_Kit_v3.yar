rule WebShell_PHP_Web_Kit_v3
{

   meta:
      description = "Detects PAS Tool PHP Web Kit"
      reference = "https://github.com/wordfence/grizzly"

   strings:
      $php = "<?php $"
      $php2 = "@assert(base64_decode($_REQUEST["
      $s1 = "(str_replace(\"\\n\", '', '"
      $s2 = "(strrev($" ascii
      $s3 = "de'.'code';" ascii

   condition:
      ( $php at 0 or $php2 ) and filesize > 8KB and filesize < 100KB and all of ($s*)
}