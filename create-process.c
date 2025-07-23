#include <stdio.h>
#include <windows.h>
#include <tchar.h>

int main(int argc, char *argv[])
{
        STARTUPINFO si = {0,};
        PROCESS_INFORMATION pi = {0,};

        if (argc < 2) return 1;

        // GetStartupInfo(&si);
        // si.dwFlags = STARTF_USESTDHANDLES;

        si.cb = sizeof(si);

        // int r = CreateProcess("C:/Program Files/Git/bin/sh.exe", "bash --version", NULL, 0, TRUE, 0, NULL, 0, &si, &pi);
        // int r = CreateProcess(NULL, "bash foo.t", NULL, 0, TRUE, 0, NULL, 0, &si, &pi);
        int r = CreateProcess(NULL, "bash.exe ./foo.t", NULL, 0, TRUE, 0, NULL, 0, &si, &pi);
        // int r = CreateProcess(NULL, "C:/Program Files/Git/bin/sh.exe ./foo.t", NULL, 0, TRUE, 0, NULL, 0, &si, &pi);
        printf("r = %d\n", r);
        if (!r) return 1;

        WaitForSingleObject(pi.hProcess, INFINITE);

        return 0;
}
