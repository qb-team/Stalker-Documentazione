Vengono presentati qui di seguito i diagrammi UML delle classi relativi alla applicazione web:

-   Administrator management;

-   Anonymous tracking;

-   Recognized tracking;

-   Authentication;

-   Menubar;

-   Organization management.

!!! info
    Per redente ogni componente riutilizzabile, mantenibile e facile da testare, si è cercato di progettare componenti che abbiano al loro interno poche responsabilità e che siano il più coese possibili, tenendo pero sotto controllo il numero di dipendenze.

## Administrator management
![!alt text](../Immagini/WebApp/administratorManagement.PNG "diagramma delle classi")
<figcaption align=center> <em> Diagramma delle classi - Administrator </em> </figcaption>

Nel precedente diagramma viene illustrato come sono state progettate le funzionalità per la gestione degli amministratori.

## Anonymous tracking

![!alt text](../Immagini/WebApp/anonymousTracking.PNG "diagramma delle classi")
<figcaption align=center> <em> Diagramma delle classi - Anonymous tracking </em> </figcaption>

Nel precedente diagramma viene illustrato come sono state progettate le funzionalità per il monitoraggio dei utenti anonimi sia nelle organizzazioni sia nei luoghi<sup>G</sup> dell'organizzazione.

## Recognized tracking
![!alt text](../Immagini/WebApp/authenticatedAccessesUserLDAP.PNG "diagramma delle classi")
<figcaption align=center> <em> Diagramma delle classi - Recognized tracking </em> </figcaption>

Il diagramma mostra le classi progettate per permettere di ricercare gli accessi di uno specifico utente autenticato all'interno dell'organizzazione o di un posto.

## Authentication
![!alt text](/Immagini/WebApp/authentication.PNG "diagramma delle classi")
<figcaption align=center> <em> Diagramma delle classi - Authentication </em> </figcaption>

Nel precedente diagramma viene illustrato come è stata progettata la funzionalità di autenticazione nella applicazione web.

## Menubar
![!alt text](../Immagini/WebApp/menubar.PNG "diagramma delle classi")
<figcaption align=center> <em> Diagramma delle classi - Menubar </em> </figcaption>

Nel precedente diagramma viene mostrato come è stato progettato il component `ManubarComponent`. Menubar è un component che permette di gestire gli eventi generati della componente grafica omonima *menubar*.

## Organization management

![!alt text](../Immagini/WebApp/OrgManagement.PNG "diagramma delle classi")
<figcaption align=center> <em> Diagramma delle classi - Organization management </em> </figcaption>

Nel precedente diagramma viene illustrato come è stata progettata la funzionalità di gestione delle organizzazioni.

