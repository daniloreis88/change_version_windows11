@echo off
:: Verifica se o script está sendo executado como administrador
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Este script precisa ser executado como administrador.
    pause
    exit /b
)

:start
cls
ECHO *******************************
ECHO * Windows 11 Version Switcher *
ECHO *******************************
ECHO 1. Windows 11 Pro
ECHO 2. Windows 11 Pro VL
ECHO 3. Windows 11 Education VL
ECHO 4. Windows 11 Enterprise VL
ECHO 5. Sair
ECHO.

set choice=
set /p choice=Selecione a Versao [1-5]: 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto to_pro
if '%choice%'=='2' goto to_pro_vl
if '%choice%'=='3' goto to_edu_vl
if '%choice%'=='4' goto to_ent_vl
if '%choice%'=='5' goto end

:: Mensagem para entrada inválida
ECHO Opcao invalida! Por favor, escolha uma opcao entre 1 e 5.
pause
goto start

:to_pro
ECHO Alterando para Windows 11 Pro...
changepk /ProductKey W269N-WFGWX-YVC9B-4J6C9-T83GX >nul
goto finish

:to_pro_vl
ECHO Alterando para Windows 11 Pro VL...
changepk /ProductKey NK96Y-D9CD8-W44CQ-R8YTK-DYJWX >nul
goto finish

:to_edu_vl
ECHO Alterando para Windows 11 Education VL...
changepk /ProductKey NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 >nul
goto finish

:to_ent_vl
ECHO Alterando para Windows 11 Enterprise VL...
changepk /ProductKey NPPR9-FWDCX-D2C8J-H872K-2YT43 >nul
goto finish

:finish
ECHO.
ECHO Alteracao concluida com sucesso!
pause
goto start

:end
ECHO Saindo do programa. Ate logo!
pause
