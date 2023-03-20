#include <stdio.h>
#include <windows.h>

int main(int argc, char *argv[])
{
        STARTUPINFO si;
        PROCESS_INFORMATION pi = {0,};

        if (argc < 2) return 1;

        GetStartupInfo(&si);
        si.dwFlags = STARTF_USESTDHANDLES;

        int r = CreateProcess(NULL, argv[1], NULL, 0, TRUE, 0, NULL, 0, &si, &pi);
        printf("r = %d\n", r);
        if (!r) return 1;

        WaitForSingleObject(pi.hProcess, INFINITE);

        return 0;
}
