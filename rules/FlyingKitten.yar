import "pe"
rule FlyingKitten : rat
{
    meta:
        Description = "Flying Kitten RAT"
        Reference   = "http://blog.crowdstrike.com/cat-scratch-fever-crowdstrike-tracks-newly-reported-iranian-actor-flying-kitten"

    strings:
        $classpath = "Stealer.Properties.Resources.resources"
        $pdbstr = "\\Stealer\\obj\\x86\\Release\\Stealer.pdb"

    condition:
        all of them and uint16(0) == 0x5A4D and uint32(uint32(0x3c)) == 0x4550 and uint16(uint32(0x3C) + 0x16) & 0x2000 == 0 and ((uint16(uint32(0x3c)+24) == 0x010b and uint32(uint32(0x3c)+232) > 0) or (uint16(uint32(0x3c)+24) == 0x020b and uint32(uint32(0x3c)+248) > 0)) 

}
