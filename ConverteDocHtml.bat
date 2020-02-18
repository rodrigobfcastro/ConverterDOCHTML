::Script criado para pegar arquivos DOT ou DOC de uma pasta e converte-los para html.
::Criado por Rodrigo Castro - 14-02-2020

::Nescessário:
::Libreoffice
::Caminho do libreoffice no path do windows
@echo off
color 80
::Configuração
set extencao=dotx

echo Conversor de arquivos para html.
echo.
::Buscar os arquivos no diretorio
DIR "*.%extencao%" /B /P>filaConversao.txt
::loop para converter
for /f "usebackq delims==" %%y in (%cd%\filaConversao.txt) do echo Convertendo arquivo: %%y para HTML. && if not exist %%~ny.html start /wait soffice.exe --convert-to html "%cd%\%%y" --outdir %cd%
echo.
echo Conversao concluida!
echo.
pause>nul