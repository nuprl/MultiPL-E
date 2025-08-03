REM This example call for coq_platform_make_windows.bat shows how to locally reprodduce a Coq CI Windows run.
REM Just adjust the github repo name to yours and the commit hash to that of your PR.

SET GITHUB_SERVER_URL=https://github.com
SET GITHUB_REPOSITORY=<PUT YOUR GITHUB USER NAME HERE (or coq to test an already merged commit)>/<YOUR FORK NAME FOR COQ - USUALLY 'coq'>
SET GITHUB_SHA=<PUT YOUR PR COMMIT HASH HERE>

CALL coq_platform_make_windows.bat ^
  -arch=64 ^
  -destcyg=C:\bin\cygwin64_coq_platform_gaetan ^
  -cygcache=C:\bin\cygwin_cache ^
  -cygrepo=https://mirrors.kernel.org/sourceware/cygwin ^
  -packages="8.19~2024.10" -extent=b -parallel=p -jobs=8 -switch=k ^
  -override-dev-pkg="coq-core=%GITHUB_SERVER_URL%/%GITHUB_REPOSITORY%/archive/%GITHUB_SHA%.tar.gz" ^
  -override-dev-pkg="coq-stdlib=%GITHUB_SERVER_URL%/%GITHUB_REPOSITORY%/archive/%GITHUB_SHA%.tar.gz" ^
  -override-dev-pkg="coq=%GITHUB_SERVER_URL%/%GITHUB_REPOSITORY%/archive/%GITHUB_SHA%.tar.gz" ^
  -override-dev-pkg="coqide-server=%GITHUB_SERVER_URL%/%GITHUB_REPOSITORY%/archive/%GITHUB_SHA%.tar.gz" ^
  -override-dev-pkg="coqide=%GITHUB_SERVER_URL%/%GITHUB_REPOSITORY%/archive/%GITHUB_SHA%.tar.gz" ^
