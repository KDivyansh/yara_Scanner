rule FGint_ECElGamalEncrypt
{	meta:
		author = "cyrus"
		description = "FGint ECElGamalEncrypt"
		version = "0.1"
	strings:
		$c0 = { 55 8B EC 81 C4 3C FF FF FF 53 56 57 33 DB 89 5D D8 89 5D D4 89 5D D0 8B 75 10 8D 7D 8C A5 A5 A5 A5 A5 8B 75 14 8D 7D A0 A5 A5 A5 A5 A5 8B 75 18 8D 7D DC A5 A5 8B 75 1C 8D 7D E4 A5 A5 8B F1 8D 7D EC A5 A5 8B F2 8D 7D F4 A5 A5 89 45 FC 8B 45 FC E8 ?? ?? ?? ?? 8D 45 F4 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 45 EC 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 45 E4 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 45 DC 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 45 A0 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 45 8C 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 85 78 FF FF FF 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 85 64 FF FF FF 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 85 50 FF FF FF 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 85 3C FF FF FF 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 45 C4 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 45 BC 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 45 B4 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 7D CF }
		$c1 = { 55 8B EC 83 C4 A8 53 56 57 33 DB 89 5D A8 89 5D AC 89 5D BC 89 5D B8 89 5D B4 89 4D F4 89 55 F8 89 45 FC 8B 75 0C 8B 45 FC E8 ?? ?? ?? ?? 8D 45 E8 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 45 E0 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 45 D8 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 45 D0 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 45 C8 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 45 C0 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 33 C0 55 68 71 14 41 00 64 FF 30 64 89 20 8D 55 BC 8B C6 E8 ?? ?? ?? ?? 8B 45 BC E8 ?? ?? ?? ?? 8B D8 8D 55 BC 8B 45 FC E8 ?? ?? ?? ?? 8D 45 BC 8B 4D BC BA 8C 14 41 00 E8 ?? ?? ?? ?? 8B FB 4F EB 10 8D 45 BC 8B 4D BC BA 98 14 41 00 E8 ?? ?? ?? ?? 8B 45 BC }
	condition:
		$c0 or $c1
}