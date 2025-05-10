rule Chacha_256_constant {
    meta:
		author = "spelissier"
		description = "Look for 256-bit key Chacha stream cipher constant"
		reference = "https://tools.ietf.org/html/rfc8439#page-8"
	strings:
		$c0 = "expand 32-byte k"
		$split1 = "expand 3"
		$split2 = "2-byte k"
	condition:
		$c0 or ( $split1 and $split2 )
}