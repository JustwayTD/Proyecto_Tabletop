;Este script nos dara una tabla con unos datos dados y calculara su integral
#NoEnv
#Warn
SendMode Input

Gui, OurGuI:New
Gui, Add, Text,, Por favor, indique donde comienza la integral:
Gui, Add, Edit, vIntegralBoisA w100, comienza
Gui, Add, Text,, Por favor, indique donde termina la integral:
Gui, Add, Edit, vIntegralBoisB w100, termina
;Gui, Add, Text,, Ahora, Por favor indique la formula que vamos a integrar:
;Gui, Add, Edit, vIntegralBoisF1 w100
Gui, Add, Text,, Cuantas interacciones tendra esta integral?
Gui, Add, Edit, vIntegralBoisInt w100

Gui, Add, Button,w80 gIntegral, Integrate
Gui, Show
return
Integral:
{
  RunWait, UInfo.xlsx
  sleep, 10000 ;esperara 10 segundos para activar la tecla goto
  Send {f5}
  sleep, 1000
  Send A9
  Send {enter}
  Clipboard = %Variable%
  Clipboard:=Clipboard
  Sleep 250
  Send, ^v
  Sleep 250
  return
  send {enter}
  msgbox completao tu
  return

}
