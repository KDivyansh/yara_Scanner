rule disable_taskmanager {
    meta:
        Author = "cyrus"
        description = "Disable Task Manager"
	version = "0.1"
    strings:
        $p1 = "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System" nocase
        $r1 = "DisableTaskMgr"
    condition:
        1 of ($p*) and 1 of ($r*)
}