rule FGint_DSAPrimeSearch
{	meta:
		author = "cyrus"
		description = "FGint DSAPrimeSearch"
		version = "0.1"
	strings:
		$c0 = { 55 8B EC 83 C4 DC 53 56 8B DA 8B F0 8D 45 F8 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 45 F0 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 45 E8 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 45 E0 8B 15 ?? ?? ?? ?? E8 ?? ?? ?? ?? 33 C0 55 68 ?? ?? ?? ?? 64 FF 30 64 89 20 8D 4D F8 8B D6 8B C6 E8 ?? ?? ?? ?? 8D 4D E8 8B D6 8B C3 E8 ?? ?? ?? ?? 8D 55 F0 B8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D 4D E0 8D 55 E8 8B C3 E8 ?? ?? ?? ?? 8D 45 E8 E8 ?? ?? ?? ?? 8D 4D E8 8D 55 F0 8D 45 E0 E8 ?? ?? ?? ?? 8D 45 E0 E8 ?? ?? ?? ?? 8D 45 F0 E8 ?? ?? ?? ?? 8B 45 EC 8B 40 04 83 E0 01 85 C0 75 18 8D 4D E0 8B D6 8D 45 E8 E8 ?? ?? ?? ?? 8D 55 E8 8D 45 E0 E8 ?? ?? ?? ?? 8B D3 8D 45 E8 E8 ?? ?? ?? ?? C6 45 DF 00 EB 26 8D 4D E8 8D 55 F8 8B C3 E8 ?? ?? ?? ?? 8B D3 8D 45 E8 E8 ?? ?? ?? ?? 8D 4D DF 8B C3 BA 05 00 00 00 E8 ?? ?? ?? ?? 80 7D DF 00 74 D4 8D 45 F8 E8 ?? ?? ?? ?? 33 C0 5A 59 59 64 89 10 68 ?? ?? ?? ?? 8D 45 E0 8B 15 ?? ?? ?? ?? B9 04 00 00 00 E8 ?? ?? ?? ?? C3 }
	condition:
		$c0
}