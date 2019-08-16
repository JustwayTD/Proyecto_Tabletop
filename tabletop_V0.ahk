;Este script nos dara una tabla con unos datos dados y calculara su integral
#NoEnv
#Warn
SendMode Input

Gui, OurGuI:New
Gui, Add, Text,, Por favor, indique donde comienza la integral:
Gui, Add, Edit, vIntegralBoisA w100, comienza
Gui, Add, Text,, Por favor, indique donde termina la integral:
Gui, Add, Edit, vIntegralBoisB w100, termina
Gui, Add, Text,, Ahora, Por favor indique la formula que vamos a integrar:
Gui, Add, Edit, vIntegralBoisF1 w100
Gui, Add, Text,, Cuantas interacciones tendra esta integral?
Gui, Add, Edit, vIntegralBoisInt w100

Gui, Add, Button,w80 gIntegral, Integrate
Gui, Show
return
Integral:
{
  RunWait, UInfo.xlsx
  sleep, 10
  Send {f5}
  sleep, 10
  Send A9
  Send {enter}
  send test1prueba
  send {enter}
  msgbox completao tu
  return

}
