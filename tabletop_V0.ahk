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
  IfEqual Mod( %IntegralBoisInt% , 2 ), 2
  {
      RunWait, UInfo.xlsx
  }
  RunWait, UInfo3.xlsx
  sleep, 5000 ;esperara 5 segundos para activar la tecla goto
  Send {f5}
  sleep, 1000
  Send {B3}
  Send {enter}
  Clipboard = %IntegralBoisA%
  Clipboard:= Clipboard
 Send, ^v
   Sleep 250
   Send {f5}
   sleep, 1000
   Send {E3}
   Send {enter}
Clipboard:=""
Clipboard = %IntegralBoisB%
Send, ^v
Sleep 250
Send {enter}
Send {f5}
sleep, 1000
Send {D3}
Send {enter}
Clipboard:= ""
Clipboard = %IntegralBoisInt%
  msgbox !!!!
  return

}
