## Introduzione

Vengono di seguito rappresentati dei diagrammi di sequenza per:

-   il login dell'amministratore nella Web app;
-   la ricerca degli accessi, in un preciso luogo di una data organizzazione, da parte di un utente autenticato;
-   la visualizzazione del contatore di presenze in tempo reale presso l'attuale organizzazione.


## Diagramma del login dell'amministratore

Nel seguente diagramma viene rappresentata la sequenza di interazione tra istanze di servizi e il LoginComponent per verificare il login dell'amministratore. Viene anche rappresentato come vengano caricate le organizzazioni e i relativi permessi a cui l'amministratore ha accesso.

Come messaggio iniziale abbiamo l'amministratore che inserisce e-mail e password e clicca sul pulsante di login. Il LoginComponent (lc) validerà dapprima che le informazioni inserite nel form grafico rispettino i requisiti minimi (p.e. che i campi mail e password non siano vuoti). Se le credenziali dovessero risultare valide, lc invoca il metodo signIn del servizio AuthenticationService (as), il quale si occupa di invocare metodi dalla libreria di FireBase, che comunicheranno con il database di FireBase per verificare la correttezza delle credenziali. Qualora le crdenziali inserite fossero corrette verrebbe ritornato un osservabile di un oggetto utente di firebase, al quale ci sottoscriveremo. A sottoscrizione avvenuta si riceverà il valore dell'oggetto utente, che useremo per recuperare il token d'accesso dell'amministratore, necessario per comunicare con il backend attraverso le rest API.

Ora che l'autenticazione è stata completata si ha la necessità di caricare i permessi dell'amministratore autenticato, che descrivono l'ID delle organizzazioni a cui ha accesso e i rispettivi gradi di permesso. Viene quindi invocato, sempre in as, il metodo configureTokenAndGetAdminOrganizations(), che provvederà prima a salvare il token dell'utente nello local storage di Angular e poi a fare una richiesta ad AdministratorPermissionDataService (aps) per reperire i permessi dell'amministratore. Il token ha la necessità di essere salvato nello local storage cosicché, successivamente, i servizi delle rest API possano ricavarlo per integrarlo nelle richieste che manderanno al backend. Per salvare il token nello local storage verra dunque invocato il metodo setItem di LocalStorage (ls) fornendo una key e il token (value).

È giunto il momento di caricare i permessi dell'amministratore, pertanto verrà invocato il metodo requireAdministratorPermissions, di aps, che attraverso l'AdministratorService (as) invierà una richiesta http al backend per ottenere la lista di permessi dell'amministratore identificato dall'uid passato come parametro. Il valore ritornato all'aps sarà un Observable di un array di permessi, al quale i component e gli altri servizi si sottoscriveranno in caso di necessità.

Infine as invocherà requireAdministratorOrganizations di AdministratorOrganizationService (aos) per caricare le organizzazioni, e le relative informazioni, a cui l'amministratore ha accesso, cosicché i component e gli altri servizi possano sottoscriversi all'osservabile ritornato per ottenere i valori delle organizzazioni di cui necessitano.

![!alt text](../Immagini/WebApp/login.PNG "diagramma di sequenza del login e del caricamento dei permessi e delle organizzazioni")
<figcaption> <em> Diagramma di sequenza del login e del caricamento dei suoi permessi e delle organizzazioni a lui pertinenti </em> </figcaption>
