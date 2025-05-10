rule win_hook {
    meta:
        Author = "cyrus"
        description = "Affect hook table"
    version = "0.1"
    strings:
        $f1 = "user32.dll" nocase
        $c1 = "UnhookWindowsHookEx"
        $c2 = "SetWindowsHookExA"
        $c3 = "CallNextHookEx"
    condition:
        $f1 and 1 of ($c*)
}