rule Cobalt_functions
{

    meta:

        author="cyrus"
        url="https://www.securityartwork.es/2017/06/16/analisis-del-powershell-usado-fin7/"
        description="Detect functions coded with ROR edi,D; Detect CobaltStrike used by differents groups APT"

    strings:

        $h1={58 A4 53 E5} // VirtualAllocEx
        $h2={4C 77 26 07} // LoadLibraryEx
        $h3={6A C9 9C C9} // DNSQuery_UTF8
        $h4={44 F0 35 E0} // Sleep
        $h5={F4 00 8E CC} // lstrlen

    condition:
        2 of ( $h* )
}
