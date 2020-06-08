# 4.6 Diagrammi delle classi
Vengono presentati qui di seguito i diagrammi UML delle classi relativi al backend.  

!!! info
    Per rendere ogni componente riutilizzabile, mantenibile e facile da testare, si è cercato di progettare componenti che abbiano al loro interno poche responsabilità e che siano il più coese possibili, tenendo però sotto controllo il numero di dipendenze.

## 4.6.1 Diagrammi dei Service

### 4.6.1.1 AccessService
![!AccessService](../Immagini/Backend/Classi/AccessService.png)

L'`AccessService` si occupa di soddisfare le richieste provenienti dai controller per ottenere informazioni sugli accessi di un utente presso un luogo o un'organizzazione.

Sono disponibili i seguenti metodi:

- `getAnonymousAccessListInOrganization`: ritorna una lista di **OrganizationAccess** che rappresenta tutti gli accessi di un utente anonimo (tracciati nel sistema tramite degli **exitToken** che permettono di reperire gli accessi a posteriori dall'utente che li ha effettuati) all'interno di una specifica organizzazione, identificata dal suo **organizationId**. Viene utilizzato il metodo `findByExitTokenAndOrganizationId` dell'interfaccia **OrganizationAccessRepository** che opera la query sul database per ottenere gli accessi dell'utente. Questa chiamata viene ripetuta per tutti gli *exitToken* passati al metodo e viene composta così la lista finale;
- `getAnonymousAccessListInPlace`: ritorna una lista di **PlaceAccess** che rappresenta tutti gli accessi di un utente anonimo (tracciati nel sistema tramite degli **exitToken** che permettono di reperire gli accessi a posteriori dall'utente che li ha effettuati) all'interno di uno specifico luogo di un'organizzazione, identificato dal suo **placeId**. Viene utilizzato il metodo `findByExitTokenAndPlaceId` dell'interfaccia **PlaceAccessRepository** che opera la query sul database per ottenere gli accessi dell'utente. Questa chiamata viene ripetuta per tutti gli *exitToken* passati al metodo e viene composta così la lista finale;
- `getAuthenticatedAccessListInOrganization`: ritorna una lista di *OrganizationAccess* che rappresenta tutti gli accessi di un insieme di utenti riconosciuti, tramite il loro codice identificativo nel server di autenticazione dell'organizzazione (**orgAuthServerId**), all'interno di un'organizzazione che permette il tracciamento autenticato, identificata dal suo **organizationId**. Viene utilizzato il metodo `findByOrgAuthServerIdAndOrganizationId` dell'interfaccia **OrganizationAccessRepository** per ottenere tutti gli accessi di un utente dato il suo identificativo e l'id dell'organizzazione. Viene chiamato per ogni *orgAuthServerId* passato ottenendo la lista completa di tutti gli accessi di tutti gli utenti richiesti;
- `getAuthenticatedAccessListInPlace`: ritorna una lista di *PlaceAccess* che rappresenta tutti gli accessi di un insieme di utenti riconosciuti, tramite il loro codice identificativo nel server di autenticazione dell'organizzazione (**orgAuthServerId**), all'interno di un luogo di un'organizzazione che permette il tracciamento autenticato, identificato dal suo **placeId**. Viene utilizzato il metodo `findByOrgAuthServerIdAndPlaceId` dell'interfaccia **OrganizationAccessRepository** per ottenere tutti gli accessi di un utente dato il suo identificativo e l'id del luogo. Viene chiamato per ogni *orgAuthServerId* passato ottenendo la lista completa di tutti gli accessi di tutti gli utenti richiesti.
___

### 4.6.1.2 AdministratorService
![!AdministratorService](../Immagini/Backend/Classi/AdministratorService.png)

L'`AdministratorService` si occupa di soddisfare le richieste provenienti dai controller per ottenere informazioni sugli amministratori di un'organizzazione e per la gestione dei loro permessi.

Sono disponibili i seguenti metodi:

- `bindAdministratorToOrganization`: assegna un amministratore già esistente ad una organizzazione esistente. Il parametro di tipo **Permission** contiene tutte le informazioni necessarie al metodo; Viene utilizzato il metodo `save` dell'interfaccia **PermissionRepository** (che lo eredita da **CrudRepository** di **org.springframework.data.repository**) per salvare nel database l'oggetto di tipo **Permission** che rappresenta i privilegi di gestione (intesi in senso generico, quindi possono essere di visualizzazione - viewer -, gestione - manager -, possesso - owner -) concessi all'amministratore all'interno di una organizzazione;
- `createNewAdministratorInOrganization`: crea un nuovo account per un amministratore nel provider di autenticazione e ne assegna i permessi ad un'organizzazione tramite l'oggetto **Permission**. Viene utilizzato il metodo `save` dell'interfaccia **PermissionRepository** per salvare nel database il nuovo amministratore.  
- `getAdministratorListOfOrganization`: ritorna una lista di **Permission** che rappresenta l'insieme di amministratori che operano in una data organizzazione identificata dal suo **organizationId**. Viene utilizzato il metodo `findByOrganizationId` dell'interfaccia **PermissionRepository** per ottenere tutti gli amministratori in una organizzazione;
- `getPermissionList`: ritorna una lista di **Permission** che rappresenta tutte le organizzazioni in cui un dato amministratore (identificato tramite **administratorId**) ha permessi di gestione (intesi in senso generico). Viene utilizzato il metodo `findByAdministratorId` dell'interfaccia **PermissionRepository**.  
- `updateAdministratorPermission`: ritorna un oggetto di tipo **Permission** all'interno di un Optional (wrapper per oggetti introdotto in Java 8 e disponibile nel package **java.util**) che contiene le modifiche appena apportate ai permessi di uno specifico amministratore all'interno di un'organizzazione richieste passando a questo metodo un parametro di tipo **Permission**. Viene utilizzato il metodo `save` dell'interfaccia **PermissionRepository**.  
- `unbindAdministratorFromOrganization`: cancella i permessi di un amministratore da un'organizzazione passando al metodo un oggetto di tipo **Permission**. Viene utilizzato il metodo `deleteById` dell'interfaccia **PermissionRepository** (che lo eredita).  
___

### 4.6.1.3 AuthenticationServerService
![!AuthenticationServerService](../Immagini/Backend/Classi/AuthenticationServerService.png)

L'`AuthenticationServerService` si occupa di soddisfare le richieste provenienti dai controller per ottenere informazioni sulle utenze presenti nel server che autentica gli utenti dell'organizzazione. Il server a cui inoltrare le richieste è indicato nell'organizzazione.

- `getUserInfoFromAuthServer`: ritorna una lista di **OrganizationAuthenticationServerInformation** che rappresenta tutte le informazioni degli utenti passati al metodo tramite l'oggetto **OrganizationAuthenticationServerRequest** che nel campo OrgAuthServerIds contiene una lista di stringhe contenenti gli identificativi degli utenti per i quali ritornare le informazioni oppure può contenere un singolo elemento ( ***** ) per significare che si vogliono le informazioni di tutti gli utenti dell'organizzazione, l'organizzazione della quale si vogliono ricevere informazioni sugli utenti deve essere a tracciamento autenticato. 

___

### 4.6.1.4 AuthenticationService
![!AuthenticationService](../Immagini/Backend/Classi/AuthenticationService.png)

L'`AuthenticationService` si occupa di soddisfare le richieste provenienti dai controller per ottenere informazioni sullo stato di autenticazione e i permessi (in questo caso intesi come "essere un utente dell'app" oppure "essere un amministratore della web-app") di un utente.    

-`checkToken`: metodo privato che data una stringa utilizza il metodo `verifyIdToken` della classe **FirebaseAuth** per determinare se l'utente è autenticato tramite Firebase.  
-`isWebAppAdministrator`: data una stringa **accessToken** determina utilizzando i metodi `getFirebaseUser` e `findByAdministratorId` se l'utente identificato dall'**accessToken** sia un amministratore; in caso il token non sia valido lancia una **AuthenticationException**.  
-`isAppUser`: data una stringa **accessToken** determina utilizzando i metodi `getFirebaseUser` e `findByAdministratorId` se l'utente identificato dall'**accessToken** non sia un amministratore; in caso il token non sia valido lancia una **AuthenticationException**.   
-`createUser`: date 3 stringhe (accessToken, email, password) utilizza il metodo `createUser` della classe **FirebaseAuth** per creare un utente su Firebase, se l'operazione non ha successo ritorna **false** mentre se avviene con successo ritorna **true**; in caso il token non sia valido lancia una **AuthenticationException**.  
-`getUserIdByEmail`: date 2 stringhe (accessToken, email) ritorna un **Optional<String>** che rappresenta l'identificativo dell'utente, utilizza il metodo `getUserByEmail` della classe **FirebaseAuth**, in caso l'**accessToken** non fosse valido lancia una **AuthenticationException** e se invece non viene trovato l'identificativo dell'utente ritorna **Optional.empty()**.
-`getUserId`: ritorna l'identificativo dell'utente dato il suo **accessToken**, utilizza il metodo `getFirebaseUser`; in caso il token non sia valido lancia una **AuthenticationException**.  
-`getFirebaseUser`: ritorna un **Optional<FirebaseToken>** dato un **accessToken** utilizzando il metodo `verifyIdToken` della classe **FirebaseAuth**, se quest'ultimo metodo lancia una **FirebaseAuthException** `getFirebaseUser` ritorna **Optional.empty()**.  
-`getEmailByUserId`: ritorna **Optional<String>** contenente l'email dell'utente identificato da **userId**, utilizza il metodo `getUser` della classe **FirebaseAuth**, ritorna **Optional.empty()** nel caso in cui userId fornito sia vuoto o nullo, oppure se la chiamata di `getUser` lanci FirebaseAuthException o IllegalArgumentException; invece `getEmailByUserId` nel caso l'**accessToken** passato non sia valido lancia **AuthenticationException**.  

___

### 4.6.1.5 FavoriteService
![!FavoriteService](../Immagini/Backend/Classi/FavoriteService.png)

Il `FavoriteService` si occupa di soddisfare le richieste provenienti dai controller per ottenere informazioni sulle organizzazioni preferite di un utente dell'app e la gestione della loro lista dei preferiti.  

-`addFavoriteOrganization`: fornisce la possibilità per un utente di salvare un'organizzazione nei preferiti associando il suo identificativo all'identificativo dell'organizzazione nell'oggetto **Favorite** che riceve il metodo e, quest'ultimo, utilizzando il metodo `save` della classe **FavoriteRepository** lo salva sul DB e ritorna il risultato di tale operazione.  
-`getFavoriteOrganizationList`: ritorna una lista di **Organization** che rappresenta tutte le organizzazioni inserite tra i preferiti da parte di uno specifico utente identificato dal suo **userId**; utilizza il metodo `findAllFavoriteOfOneUserId` della classe **FavoriteRepository** per ottenere tutti gli oggetti **Favorite** associati a un utente e in seguito utilizza il metodo `findAllById` della classe **OrganizationRepository** per ottenere tutte le organizzazioni contenute nella lista di **Favorite**.  
-`removeFavoriteOrganization`: rimuove un oggetto **Favorite** dal DB grazie al metodo `deleteById` della classe **FavoriteRepository**.  
-`getFavorite`: determina la presenza o meno di un oggetto **Favorite** nel DB grazie al metodo `existsById` della classe **FavoriteRepository** che accetta un parametro **FavoriteId** e ritorna true in caso sia già salvato e false in caso contrario.  
___

### 4.6.1.6 MovementService
![!MovementService](../Immagini/Backend/Classi/MovementService.png)

Il `MovementService` si occupa di soddisfare le richieste provenienti dai controller per tracciare i movimenti (ingressi o uscite) di un utente presso un luogo o un'organizzazione. In questo diagramma si può notare come `OrganizationMovementPublisher` e `PlaceMovementPublisher` implementino l'interfaccia `MovementPublisher`, a loro volta estese rispettivamente da `OrganizationMovementRedisPublisher` e `PlaceMovementRedisPublisher`. L'implementazione delle due tipologie di tracciamento è stata separata per permettere una maggiore flessibilità ed estendibilità delle loro implementazioni, oltre a poter cambiare del tutto lo strumento utilizzato per memorizzare i tracciamenti (Redis) e sostituirlo, senza richiedere che le classi che hanno dipendenze verso i due publisher debbano essere modificate.

-`trackMovementInOrganization`: si occupa di verificare l'integrità dell'oggetto **OrganizationMovement**, inoltre in caso il movimento sia d'entrata viene chiamato il metodo `setExitToken` della classe **OrganizationMovement** per salvare nell'oggetto **OrganizationMovement** un exitToken; in seguito l'oggetto viene passato al metodo `publish` della classe **OrganizationMovementPublisher** per essere pubblicato su Redis.  
-`trackMovementInPlace`: si occupa di verificare l'integrità dell'oggetto **PlaceMovement**, inoltre in caso il movimento sia d'entrata viene chiamato il metodo `setExitToken` della classe **PlaceMovement** per salvare nell'oggetto **PlaceMovement** un exitToken; in seguito l'oggetto viene passato al metodo `publish` della classe **PlaceMovementPublisher** per essere pubblicato su Redis.  
-`generateExitToken`: ritorna una stringa contenente caratteri da 0-9a-z randomizzati che rappresentano un **exitToken**.  
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

-`getOrganizationPresenceCounter`: si occupa di interrogare Redis per ottenere in numero di presenze all'interno di una organizzazione specificata passando un **organizationId** al metodo; il contatore viene ottenuto chiamando il metodo `opsForValue` della classe **RedisTemplate<String, Integer>** e sul risultato chiamare  `get` con parametro la stringa contente **"organization:"+organizationId**; infine viene ritornato Optional dell'oggetto dopo aver verificato non sia nullo, e in caso sia nullo viene settato a zero.
-`getPlacePresenceCounter`:si occupa di interrogare Redis per ottenere in numero di presenze all'interno di un luogo specificato passando un **placeId** al metodo; il contatore viene ottenuto chiamando il metodo `opsForValue` della classe **RedisTemplate<String, Integer>** e sul risultato chiamare  `get` con parametro la stringa contente **"place:"+placeId**; infine viene ritornato Optional dell'oggetto dopo aver verificato non sia nullo, e in caso sia nullo viene settato a zero.
___

### 4.6.1.10 ReportService
![!ReportService](../Immagini/Backend/Classi/ReportService.png)

Il `ReportService` si occupa di soddisfare le richieste provenienti dai controller per ottenere report tabellari sugli accessi passati presso i luoghi di un'organizzazione da parte di utenti autenticati.  

-`getDuration`: dati due **OffsetDateTime** il metodo calcola la differenza tra la seconda data e la prima trasformandole in secondi e dunque ritorna il numero di secondi trascorsi tra la prima data e la seconda.  
-`getTimePerUserReport`: ritorna una lista di **TimePerUserReport** che rappresenta tutti gli accessi a uno specifico luogo degli utenti autenticati di un'organizzazione, il luogo viene indicato passando al metodo un **placeId**; utilizza il metodo `findByPlaceId` della classe **placeAccessRepo** per ottenere tutti gli accessi a un determinato luogo, questi accessi vengono controllati, raggruppati assieme per identificativo unico LDAP e viene calcolato il tempo trascorso tra l'entrata e l'uscita usando il metodo `getDuration`; infine da una lista di **PlaceAccess** si costruisce la lista di ritorno di **TimePerUserReport**.
___

## 4.6.2 Diagrammi dei Controller

### 4.6.2.1 AccessController
![!AccessController](../Immagini/Backend/Classi/AccessAPI.png)

L'`AccessController` si occupa di soddisfare le richieste ricevute dai client per ottenere informazioni sugli accessi di un utente presso un luogo o un'organizzazione, servendosi dell'`AccessService`. 

-`getAnonymousAccessListInOrganization`: il metodo ritorna **List<OrganizationAccess>** ovvero tutti gli accessi ad un'organizzazione a tracciamento anonimo fatti dallo stesso utente che effettua la richiesta, deve essere passato al metodo un **exitToken** che identificherà l'utente e un **organizationId** che identifica l'organizzazione della quale ritornare gli accessi.
-`getAnonymousAccessListInPlace`:il metodo ritorna **List<PlaceAccess>** ovvero tutti gli accessi ad un luogo appartenente ad un'organizzazione a tracciamento anonimo fatti dallo stesso utente che effettua la richiesta, deve essere passato al metodo un **exitToken** che identificherà l'utente e un **placeId** che identifica il luogo del quale ritornare gli accessi.
-`getAuthenticatedAccessListInOrganization`:ritorna una **List<OrganizationAccess>** che rappresenta tutti gli accessi di uno o più utenti autenticati ad una organizzazione a tracciamento autenticato; il metodo richiede come parametri una lista di **orgAuthServerIds** che in caso la richiesta sia fatta da un'amministratore contiene uno o più identificativi degli utenti, mentre se la richiesta viene fatta dal singolo utente sarà presente solo il proprio identificativo; il secondo parametro è invece l'identificativo dell'organizzazione.   
-`getAuthenticatedAccessListInPlace`: ritorna una **List<PlaceAccess>** che rappresenta tutti gli accessi di uno o più utenti autenticati all'interno di un luogo di un'organizzazione a tracciamento autenticato; il metodo richiede come parametri una lista di **orgAuthServerIds** che in caso la richiesta sia fatta da un'amministratore contiene uno o più identificativi degli utenti, mentre se la richiesta viene fatta dal singolo utente sarà presente solo il proprio identificativo; il secondo parametro è invece l'identificativo del luogo.  
___

### 4.6.2.2 AdministratorController
![!AdministratorController](../Immagini/Backend/Classi/AdministratorApi.png)

L'`AdministratorController` si occupa di soddisfare le richieste ricevute dai client per ottenere informazioni sugli amministratori di un'organizzazione e per la gestione dei loro permessi, servendosi dell'`AdministratorService`. 

-`bindAdministratorToOrganization`: il metodo assegna ad una organizzazione un amministratore già registrato nel sistema, questo metodo può essere utilizzato solamente da un amministratore almeno gestore che si sia autenticato nel sistema; come parametro richiede una **AdministratorBindingRequest** che contiene tutte le informazioni necessarie, il metodo controlla che sia l'organizzazione che l'amministratore esistano e dunque chiama il metodo `bindAdministratorToOrganization` della classe **AdministratorService** e in caso di successo nella creazione ritorna l'oggetto **Permission** che rappresenta i permessi dell'amministratore nell'organizzazione.
-`createNewAdministratorInOrganization`: il metodo crea un nuovo amministratore in una organizzazione, il metodo riceve come parametro una **AdministratorBindingRequest** che contiene tutte le informazioni necessarie; il metodo controlla che l'amministratore che effettua la richiesta sia autenticato nel sistema, altrimenti ritorna unauthorized e sia owner dell'organizzazione nella quale vuole creare l'amministratore, altrimenti ritorna forbidden; in seguito chiama il metodo `createUserAccount` della classe **AuthenticationFacade** per creare un'utenza su Firebase e poi il metodo `createNewAdministratorInOrganization` della classe **AdministratorService** per creare l'amministratore nell'organizzazione.
-`getAdministratorListOfOrganization`: ritorna una **List<Permission>** che rappresenta tutti gli amministratori associati ad una determinata organizzazione identificata passando al metodo un **organizationId**; il metodo controlla che la richiesta sia stata fatta da un amministratore autenticato nel sistema e che sia owner dell'organizzazione per la quale vuole sapere la lista degli amministratori; per recuperare la lista chiama `getAdministratorListOfOrganization` della classe **AuthenticationFacade**.  
-`getPermissionList`: ritorna una **List<Permission>** che rappresenta le organizzazioni in cui è stato nominato; il metodo richiede un **administratorId**; l'amministratore che effettua la richiesta deve essere autenticato nel sistema e l'identificativo che viene inserito come parametro al metodo deve corrispondere all'identificativo dell'amministratore che effettua la richiesta, altrimenti viene ritornato forbidden; per ottenere la lista di permessi viene chiamato il metodo `getPermissionList` della classe **AdministratorService**.  
-`unbindAdministratorFromOrganization`: il metodo toglie i permessi di un amministratore in una organizzazione, richiede come parametro un oggetto **Permission** che contiene tutte le informazioni necessarie; l'amministratore che effettua la richiesta deve essere autenticato nel sistema e deve essere owner dell'organizzazione alla quale fa parte l'amministratore che deve essere rimosso; per compiere l'operazione viene chiamato il metodo `unbindAdministratorFromOrganization` della classe **AdministratorService**.  
-`updateAdministratorPermission`:il metodo aggiorna il livello di permessi di un amministratore all'interno di una specifica organizzazione; richiede un oggetto **Permission** come parametro, la richiesta deve essere effettuata da un'amministratore autenticato nel sistema e che sia owner dell'organizzazione nella quale cambiare i permessi dell'amministratore; per effettuare tale operazione si serve del metodo `updateAdministratorPermission` della classe **AdministratorService**. 
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