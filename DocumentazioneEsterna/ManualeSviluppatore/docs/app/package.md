# Diagrammi dei package
Vengono presentati qui di seguito i diagrammi UML dei package relativi alla applicazione Android.

## Visione generale delle dipendenze tra package
Il package principale dell'applicazione è nominato it.qbteam.stalkerapp. Esso contiene le classi di attività HomePageActivity e MainActivity e i vari package dell'architettura Model View Presenter. Nel seguente diagramma UML vengono mostrate tutte le dipendenze che esistono tra i vari package.
![!Dipendenze](/Immagini/App/AppPackageDiagramm.PNG "Diagramma dei package - Visione delle dipendenze")
<figcaption align="center"> <em> Diagramma dei package - Visione delle dipendenze </em> </figcaption>

## Model
Nel seguente package vengono raggruppati altri package contenenti tutte le classi utilizzate per la business logic. In questa sezione vengono utilizzate le funzionalità di tracking, gestione dati dal server o locali, metodi di connessione ed interazione con il backend, autenticazioni su Firebase o LDAP, struttura delle organizzazioni e dell'utente.
![!Model](/Immagini/App/ModelPackageDiagramm.PNG "Package del Model")
<figcaption align="center"> <em> Diagramma del package - Package del Model </em> </figcaption>

## View
Nel seguente package vengono raggruppate tutte le classi dedicate alle funzionalità di user interface. Le classi fragment rappresentano le pagine dell'applicazione e sono collegate con i loro rispettivi file xml che modificano la loro interpretazione grafica.
![!View](/Immagini/App/ViewPackageDiagramm.PNG "Package del View")
<figcaption align="center"> <em> Diagramma del package - Package del View </em> </figcaption>

## Presenter
Nel seguente package vengono raggruppate tutte le classi dedicate alla comunicazione tra le altre due componenti dell'architettura.
![!Presenter](/Immagini/App/PresenterPackageDiagramm.PNG "Package del Presenter")
<figcaption align="center"> <em> Diagramma del package - Package del Presenter </em> </figcaption>

## Contract
Nel seguente package vengono raggruppate tutte le interfacce contract che servono per facilitare la comunicazione tra le varie componenti in maniera asincrona. Visto che a loro volta contengono altre interfacce possono essere rappresentate come dei "package".
![!Contract](/Immagini/App/ContractPackageDiagramm.PNG "Package del contract")
<figcaption align="center"> <em> Diagramma del package - Package del Contract </em> </figcaption>

## Esempio di composizione di un Contract
Andando nel dettaglio il seguente "package" raggruppa tutte le interfacce che compongono un contract e questa struttura vale anche per tutti gli altri contract.
![!LoginContract](/Immagini/App/LoginContract.PNG "Esempio diagramma dei package dei contracts")
<figcaption align="center"> <em> Diagramma del package - Package del LoginContract </em> </figcaption>

## Tool
Nel seguente package vengono raggruppate tutte le classi ed interfacce dedicate alle funzionalità generiche che possono essere usate in base ai contesti per dare supporto ai fragment ed evitare ripetizioni di codice tra le varie classi.
![!Tool](/Immagini/App/ToolPackageDiagramm.PNG "Package del Tool")
<figcaption align="center"> <em> Diagramma del package - Package del Tool </em> </figcaption>
