# 4.6 Diagrammi delle classi
Vengono presentati qui di seguito i diagrammi UML delle classi relativi al backend.  

!!! info
    Per rendere ogni componente riutilizzabile, mantenibile e facile da testare, si è cercato di progettare componenti che abbiano al loro interno poche responsabilità e che siano il più coese possibili, tenendo però sotto controllo il numero di dipendenze.

## 4.6.1 Diagrammi dei Service

### 4.6.1.1 AccessService
![!AccessService](../Immagini/Backend/Classi/AccessService.png)

L'`AccessService` si occupa di soddisfare le richieste provenienti dai controller per ottenere informazioni sugli accessi di un utente presso un luogo o un'organizzazione.
___

### 4.6.1.2 AdministratorService
![!AdministratorService](../Immagini/Backend/Classi/AdministratorService.png)

L'`AdministratorService` si occupa di soddisfare le richieste provenienti dai controller per ottenere informazioni sugli amministratori di un'organizzazione e per la gestione dei loro permessi.
___

### 4.6.1.3 AuthenticationServerService
![!AuthenticationServerService](../Immagini/Backend/Classi/AuthenticationServerService.png)

L'`AuthenticationServerService` si occupa di soddisfare le richieste provenienti dai controller per ottenere informazioni sulle utenze presenti nel server che autentica gli utenti dell'organizzazione. Il server a cui inoltrare le richieste è indicato nell'organizzazione.
___

### 4.6.1.4 AuthenticationService
![!AuthenticationService](../Immagini/Backend/Classi/AuthenticationService.png)

L'`AuthenticationService` si occupa di soddisfare le richieste provenienti dai controller per ottenere informazioni sullo stato di autenticazione e i permessi (in questo caso intesi come "essere un utente dell'app" oppure "essere un amministratore della web-app") di un utente.
___

### 4.6.1.5 FavoriteService
![!FavoriteService](../Immagini/Backend/Classi/FavoriteService.png)

Il `FavoriteService` si occupa di soddisfare le richieste provenienti dai controller per ottenere informazioni sulle organizzazioni preferite di un utente dell'app e la gestione della loro lista dei preferiti.
___

### 4.6.1.6 MovementService
![!MovementService](../Immagini/Backend/Classi/MovementService.png)

Il `MovementService` si occupa di soddisfare le richieste provenienti dai controller per tracciare i movimenti (ingressi o uscite) di un utente presso un luogo o un'organizzazione. In questo diagramma si può notare come `OrganizationMovementPublisher` e `PlaceMovementPublisher` implementino l'interfaccia `MovementPublisher`, a loro volta estese rispettivamente da `OrganizationMovementRedisPublisher` e `PlaceMovementRedisPublisher`. L'implementazione delle due tipologie di tracciamento è stata separata per permettere una maggiore flessibilità ed estendibilità delle loro implementazioni, oltre a poter cambiare del tutto lo strumento utilizzato per memorizzare i tracciamenti (Redis) e sostituirlo, senza richiedere che le classi che hanno dipendenze verso i due publisher debbano essere modificate.
___

### 4.6.1.7 OrganizationService
![!OrganizationService](../Immagini/Backend/Classi/OrganizationService.png)

L'`OrganizationService` si occupa di soddisfare le richieste provenienti dai controller per ottenere informazioni sulle organizzazioni e altre funzionalità disponibili agli amministratori, come ad esempio la richiesta di eliminazione dell'organizzazione amministrata.
___

### 4.6.1.8 PlaceService
![!PlaceService](../Immagini/Backend/Classi/PlaceService.png)

Il `PlaceService` si occupa di soddisfare le richieste provenienti dai controller per ottenere informazioni sui luoghi di un'organizzazione e per gestirli.
___

### 4.6.1.9 PresenceService
![!PresenceService](../Immagini/Backend/Classi/PresenceService.png)

Il `PresenceService` si occupa di soddisfare le richieste provenienti dai controller per ottenere informazioni sulle presenze correnti presso un luogo o un'organizzazione.
___

### 4.6.1.10 ReportService
![!ReportService](../Immagini/Backend/Classi/ReportService.png)

Il `ReportService` si occupa di soddisfare le richieste provenienti dai controller per ottenere report tabellari sugli accessi passati presso i luoghi di un'organizzazione da parte di utenti autenticati.
___

## 4.6.2 Diagrammi dei Controller

### 4.6.2.1 AccessController
![!AccessController](../Immagini/Backend/Classi/AccessAPI.png)

L'`AccessController` si occupa di soddisfare le richieste ricevute dai client per ottenere informazioni sugli accessi di un utente presso un luogo o un'organizzazione, servendosi dell'`AccessService`.
___

### 4.6.2.2 AdministratorController
![!AdministratorController](../Immagini/Backend/Classi/AdministratorApi.png)

L'`AdministratorController` si occupa di soddisfare le richieste ricevute dai client per ottenere informazioni sugli amministratori di un'organizzazione e per la gestione dei loro permessi, servendosi dell'`AdministratorService`.
___

### 4.6.2.3 AuthenticationServerController
![!AuthenticationServerController](../Immagini/Backend/Classi/AuthenticationServerApiController.png)

L'`AuthenticationServerController` si occupa di soddisfare le richieste ricevute dai client per ottenere informazioni sulle utenze presenti nel server che autentica gli utenti dell'organizzazione, servendosi dell'`AuthenticationServerService`.
___

### 4.6.2.4 FavoriteController
![!FavoriteController](../Immagini/Backend/Classi/FavoriteAPI.png)

Il `FavoriteController` si occupa di soddisfare le richieste ricevute dai client per ottenere informazioni sulle organizzazioni preferite di un utente dell'app e la gestione della loro lista dei preferiti, servendosi del `FavoriteService`.
___

### 4.6.2.5 MovementController
![!MovementController](../Immagini/Backend/Classi/MovementAPI.png)

Il `MovementController` si occupa di soddisfare le richieste ricevute dai client per tracciare i movimenti (ingressi o uscite) di un utente presso un luogo o un'organizzazione, servendosi del `MovementService`.
___

### 4.6.2.6 OrganizationController
![!OrganizationController](../Immagini/Backend/Classi/OrganizationAPI.png)

L'`OrganizationController` si occupa di soddisfare le richieste ricevute dai client per ottenere informazioni sulle organizzazioni e altre funzionalità disponibili agli amministratori, come ad esempio la richiesta di eliminazione dell'organizzazione amministrata, servendosi dell'`OrganizationService`.
___

### 4.6.2.7 PlaceController
![!PlaceController](../Immagini/Backend/Classi/PlaceAPI.png)

Il `PlaceController` si occupa di soddisfare le richieste ricevute dai client per ottenere informazioni sui luoghi di un'organizzazione e per gestirli, servendosi del `PlaceService`.
___

### 4.6.2.8 PresenceController
![!PresenceController](../Immagini/Backend/Classi/PresenceAPI.png)

Il `PresenceController` si occupa di soddisfare le richieste ricevute dai client per ottenere informazioni sulle presenze correnti presso un luogo o un'organizzazione, servendosi del `PresenceService`.
___

### 4.6.2.9 ReportController
![!ReportController](../Immagini/Backend/Classi/ReportAPI.png)

Il `ReportController` si occupa di soddisfare le richieste ricevute dai client per ottenere report tabellari sugli accessi passati presso i luoghi di un'organizzazione da parte di utenti autenticati, servendosi del `ReportService`.
___

## 4.6.3 Diagrammi di altre classi

### 4.6.3.1 AuthenticationFacade
![!AuthenticationFacade](../Immagini/Backend/Classi/AuthenticationFacade.png)

L'`Authentication Facade` è una classe che implementa il design pattern Facade. Si occupa di raggruppare tutte le funzionalità comuni ai vari controller fornendole da un unico punto di accesso. Queste funzionalità sono quelle offerte dall'`AuthenticationService`, per verificare lo stato di autenticazione di un utente o amministratore, e quelle del PermissionService, per verificare se un utente è amministratore o meno e se ha i permessi presso una determinata organizzazione.
___

### 4.6.3.2 GpsAreaFacade
![!GpsAreaFacade](../Immagini/Backend/Classi/GpsAreaFacade.png)

Le funzionalità che controllano la dimensione di un'area geografica espressa dall'area di tracciamento (trackingArea) di un'organizzazione o di un luogo vengono realizzate dalle classi che permettono a `GpsArea Facade` di funzionare. Nuovamente, come dice il nome, viene utilizzato il design pattern Facade per avere un unico punto di accesso alle tre funzionalità di calcolo dell'area data una lista di coordinate geografiche, verifica di appartenenza di un punto all'interno di un certo perimetro e costruzione di oggetti di tipo `Coordinate`, che corrisponde all'interfaccia che permette di elaborare i dati ricevuti dalle trackingArea. Inoltre, le tre interfacce `AreaCalculator`, `CoordinateFactory` e `PointInsidePolygon` sono implementate attualmente in un modo abbastanza semplice, ma potrebbero essere aggiornate o sostituite da altre implementazioni più precise, indicandone l'uso nella configurazione del software.
___

### 4.6.3.3 MovementSubscriber
![!MovementSubscriber](../Immagini/Backend/Classi/MovementSubscriber.png)

Avendo deciso di implementare il pattern Publisher-Subscriber, se il MovementService dispone del publisher, deve esserci anche un subscriber. In questo caso, il subscriber si occupa di ottenere i messaggi dal Message Broker, di analizzarli per convertirli da semplici movimenti (di ingresso o di uscita) in istanze (parziali) di accessi che vengono memorizzate tramite i supporti di persistenza per poterli ottenere successivamente tramite le API fornite per gli Access.
___