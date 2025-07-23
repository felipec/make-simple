#include <stdio.h>
#include <windows.h>
#include <tchar.h>

int main(int argc, char *argv[])
{
        STARTUPINFO si = { .cb = sizeof(si) };
        PROCESS_INFORMATION pi = {0,};

        if (argc < 2) return 1;

        // GetStartupInfo(&si);
        // si.dwFlags = STARTF_USESTDHANDLES;

        if (!CreateProcess(NULL, argv[1], NULL, 0, TRUE, 0, NULL, 0, &si, &pi))
		return 1;

        WaitForSingleObject(pi.hProcess, INFINITE);

        return 0;
}
