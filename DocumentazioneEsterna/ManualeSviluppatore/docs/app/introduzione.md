Questa parte del prodotto è orientata all'uso da parte degli utenti che voglio essere tracciati dalle organizzazioni utilizzando l'*applicazione* android.

## **Scopo del prodotto**
L'applicazione android offre all'utente le seguenti funzionalità:

-   **Registrazione**:
    L'utente ha la possibilità di registrarsi inserendo un email, password e accettare le condizioni d'uso;

-   **Login**:  
    L'utente ha la possibilità di autenticarsi inserendo la propria email e password;

-   **Scaricare lista delle organizzazioni**:
    L'utente, per poter visualizzare la lista delle organizzazioni, può scaricare le organizzazioni presenti nel server appena dopo aver eseguito l'autenticazione.
    Se dovesse annullare lo scaricamento oppure per cause di mancata connessione apparirà nella schermata principale un tasto che rinvita l'utente al tentativo di scaricarla nuovamente;

-   **Aggiornare lista delle organizzazioni**:
    L'utente può aggiornare la lista delle organizzazioni eseguendo uno "swipe down" nella schermata principale;

-   **Menù ad "Hamburger"**:
    L'utente può accedere ad una serie di funzionalità utilizzando il "menù ad Hamburger" riportato in altro a sinistra.
    È possibile avviare il tracciamento tramite uno switch che è disattivato per default; qualora fosse la prima volta che lo si attiva comparirà sulla schermata
    un pop-up che invita l'utente ad accettare i permessi necessari per attivare il gps.
    Altre funzionalità sono il logout e l'ordinamento alfabetico della lista delle organizzazioni;

-   **Ricerca**:
    In alto vi è la barra principale dell'applicazione dove è presente una sezione di ricerca. Da essa è possibile eseguire delle ricerche testuali per filtrare e visualizzare 
    la lista delle organizzazioni;

-   **Visualizzazione pagina organizzazione**:
    L'utente può entrare nella pagina dedicata dell'organizzazione clickando l'elemento della lista ad essa appartenente. Al suo interno è possibile visualizzare il titolo, l'immagine, la descrizione, lo stato "sei dentro/sei fuori" ed un pulsante autenticati se l'organizzazione richiede credenziali LDAP;
 
-   **Aggiunta organizzazione nella lista MyStalker (lista preferiti)**:
    L'utente, tenendo premuto sull'elemento della lista compare un pop-up dove può aggiungere l'organizzazione nella lista MyStalker oppure visualizzare il suo contenuto.
    Se l'organizzazione richiede credenziali LDAP allora dal pop-up è possibile solamente visualizzare la pagina; una volta acceduti nella pagina dedicata all'organizzazione bisogna autenticarsi tramite credenziali LDAP. Se l'autenticazione è avvenuta con successo allora tale organizzazione comparirà nella lista MyStalker;

-   **Eliminazione organizzazione dalla lista MyStalker**:
    L'utente tenendo premuto sull'elemento della lista delle organizzazioni MyStalker compare un pop-up dove è possibile accettare o rifiutare l'eliminazione di tale organizzazione;

-   **Tracciamento**
    La funzionalità di tracciamento consente all'utente di farsi tracciare qualora dovesse essere vicino alle organizzazioni che sono presenti nella lista MyStalker.
    Se l'organizzazione dovesse essere privata (credenziali LDAP) allora è possibile cambiare, tramite uno switch presente nella pagina dell'organizzazione, la tipologia di tracciamento da anonimo a autenticato. Questa modalità riconosce l'identità dell'utente tracciato.
