@rem ////// Edite as linhas abaixo com os seus dados

@set ip=192.168.1.4:1080
@set username=admin
@set password=MYSECRETPASSWORD
@set comando1=do reboot


@rem ///// N�o edite as linhas abaixo:

@rem ///// Cria��o do script vbs

@echo set sh=WScript.CreateObject("WScript.Shell")>>telnet.vbs
@echo WScript.Sleep 500>>telnet.vbs
@echo sh.SendKeys "%username%">>telnet.vbs
@echo WScript.Sleep 500>>telnet.vbs
@echo sh.SendKeys "~">>telnet.vbs
@echo WScript.Sleep 500>>telnet.vbs
@echo sh.SendKeys "%password%">>telnet.vbs
@echo sh.SendKeys "~">>telnet.vbs
@echo WScript.Sleep 500>>telnet.vbs


@rem ///// Enviando comando

@echo sh.SendKeys "%comando1%">>telnet.vbs
@echo sh.SendKeys "~">>telnet.vbs

REM -
@echo WScript.Sleep 75000>>telnet.vbs
@echo sh.SendKeys "^]" >>telnet.vbs
@echo WScript.Sleep 500>>telnet.vbs
@echo sh.SendKeys "quit">>telnet.vbs
@echo WScript.Sleep 500>>telnet.vbs
@echo sh.SendKeys "~">>telnet.vbs
@echo WScript.Sleep 500>>telnet.vbs

@rem ///// Iniciando a sess�o de telnet

@start /realtime telnet.exe %ip%
@cscript //nologo telnet.vbs
@del /q telnet.vbs