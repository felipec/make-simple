#!/usr/bin/pwsh

(Get-Command bash).Path
(Get-Command sh).Path
(Get-Command bash.exe).Path
(Get-Command sh.exe).Path
$Env:PATH
bash sub/foo.t
Start-Process -FilePath "bash" -Wait -NoNewWindow -ArgumentList "sub/foo.t"
