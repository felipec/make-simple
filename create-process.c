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

        TCHAR cmd[] = TEXT("bash --version");

        int r = CreateProcess(NULL, cmd, NULL, 0, TRUE, 0, NULL, 0, &si, &pi);
        printf("r = %d\n", r);
        if (!r) return 1;

        WaitForSingleObject(pi.hProcess, INFINITE);

        return 0;
}
