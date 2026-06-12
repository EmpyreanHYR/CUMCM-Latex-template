@echo off
setlocal enabledelayedexpansion
cd /d "%~dp0"

set "MAIN=document"

if /i "%1"=="clean" goto :clean_only
if /i "%1"=="c"     goto :clean_only

REM -- default (double-click): compile, then clean up -------------
:build
echo ============================================
echo   Compiling %MAIN%.tex ...
echo ============================================

echo [1/4] xelatex #1 ...
xelatex -interaction=nonstopmode -synctex=1 "%MAIN%.tex"
if errorlevel 1 (
    echo.
    echo *** ERROR: xelatex failed! ***
    echo.
    pause
    exit /b 1
)

echo [2/4] bibtex ...
bibtex "%MAIN%" 2>nul
if errorlevel 1 echo     (bibtex skipped - no citations or no .bib)

echo [3/4] xelatex #2 ...
xelatex -interaction=nonstopmode -synctex=1 "%MAIN%.tex"

echo [4/4] xelatex #3 ...
xelatex -interaction=nonstopmode -synctex=1 "%MAIN%.tex"

echo.
echo ============================================
echo   Cleaning auxiliary files ...
echo ============================================
call :do_clean

echo.
echo ============================================
echo   Done!  Output:  %~dp0%MAIN%.pdf
echo ============================================
goto :end

REM -- standalone clean -------------------------------------------
:clean_only
echo Cleaning auxiliary files for %MAIN%.tex ...
call :do_clean
echo Done.
goto :end

REM -- shared clean routine ---------------------------------------
:do_clean
del /q "%MAIN%.aux"  2>nul
del /q "%MAIN%.log"  2>nul
del /q "%MAIN%.out"  2>nul
del /q "%MAIN%.toc"  2>nul
del /q "%MAIN%.bbl"  2>nul
del /q "%MAIN%.blg"  2>nul
del /q "%MAIN%.thm"  2>nul
del /q "%MAIN%.bak"  2>nul
del /q "%MAIN%.lof"  2>nul
del /q "%MAIN%.lot"  2>nul
del /q "%MAIN%.nav"  2>nul
del /q "%MAIN%.snm"  2>nul
del /q "%MAIN%.vrb"  2>nul
del /q "%MAIN%.run.xml"  2>nul
del /q "%MAIN%.bcf"  2>nul
del /q "%MAIN%.synctex.gz"  2>nul

for %%x in (aux log out toc bbl blg thm bak lof lot nav snm vrb run.xml bcf synctex.gz) do (
    del /q "*.%%x" 2>nul
)
exit /b

:end
