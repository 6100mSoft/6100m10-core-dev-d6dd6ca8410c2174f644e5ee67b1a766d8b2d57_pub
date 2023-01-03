set FIREFOX_PATH="%ProgramFiles%\Mozilla Firefox\browser\VisualElements\"
set ENGINE_PATH="%SystemDrive%\Gloom10\AppEngine\Firefox\VisualElements\"
xcopy /Y %ENGINE_PATH%VisualElements_70.png %FIREFOX_PATH%
xcopy /Y %ENGINE_PATH%VisualElements_150.png %FIREFOX_PATH%
