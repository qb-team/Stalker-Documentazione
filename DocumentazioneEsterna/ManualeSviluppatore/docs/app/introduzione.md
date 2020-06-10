# 2.1 Introduzione
Questa parte del prodotto è orientata all'uso da parte degli utenti che voglio essere tracciati dalle organizzazioni utilizzando l'applicazione Android.

## 2.1.1 Scopo del prodotto
L'applicazione Android offre all'utente le seguenti funzionalità:

- **Registrazione**: L'utente ha la possibilità di registrarsi inserendo un e-mail, password e accettando le condizioni d'uso;

- **Login**: L'utente ha la possibilità di autenticarsi inserendo la propria email e password;

- **Scaricamento della lista delle organizzazioni**: L'utente, per poter visualizzare la lista di tutte le organizzazioni disponibili in Stalker, deve prima scaricarla connettendosi al backend. Una volta richiesto lo scaricamento, se dovesse decidere di annullarlo o se venisse a mancare la connessione ad Internet, apparirebbe nella schermata principale un tasto per ritentare il download;

- **Aggiornamento della lista delle organizzazioni**: L'utente può aggiornare la lista delle organizzazioni eseguendo uno *swipe down* nella schermata principale;

- **Drawer**: L'utente può accedere ad una serie di funzionalità utilizzando l'*Hamburger button* riportato in alto a sinistra.
È possibile avviare il tracciamento tramite uno pulsante switch, disattivato di default. Alla prima attivazione del tracciamento compare sulla schermata dell'applicazione un pop-up che invita l'utente ad accettare i permessi necessari per permettere all'applicazione di utilizzare il GPS. Altre funzionalità in questo menu permettono attualmente il logout e l'ordinamento alfabetico della lista delle organizzazioni;

- **Ricerca**: In alto vi è la barra principale dell'applicazione in vi è una sezione di ricerca. Con essa è possibile eseguire delle ricerche testuali per filtrare e visualizzare la lista delle organizzazioni;

- **Visualizzazione pagina organizzazione**: L'utente può entrare nella pagina dedicata di un'organizzazione in due diversi modi: 
    - cliccando l'elemento della lista ad essa appartenente; 
    - tenendo premuto su un elemento della lista apparirà un pop-up che permetterà di cliccare sul pulsante 'Maggiori informazioni' e accedere così alla visualizzazione dell'organizzazione selezionata. 
    Al suo interno è possibile visualizzare il nome dell'organizzazione, una descrizione, l'immagine di anteprima e un pulsante che se premuto mostrerà l'ultimo accesso effettuato dall'utente all'interno dell'organizzazione. 
    Un'organizzazione che richiede un'autenticazione aziendale avrà in aggiunta il pulsante 'autenticazione' che, se cliccato, visualizzerà un pop-up per poter inserire le credenziali LDAP;
 
- **Aggiunta organizzazione nella lista MyStalker (lista preferiti)**: L'utente, tenendo premuto su un elemento della lista delle organizzazioni fa apparire un pop-up che permette di aggiungere l'organizzazione selezionata nella lista MyStalker, o più semplicemente visualizzarne il contenuto. Se l'organizzazione richiede un'autenticazione aziendale (tramite LDAP) allora con il pop-up è possibile solamente visualizzarne il contenuto. Una volta avuto accesso alla pagina dedicata dell'organizzazione bisogna autenticarsi tramite credenziali LDAP. Se l'autenticazione avviene con successo, tale organizzazione compare nella lista MyStalker;

- **Eliminazione organizzazione dalla lista MyStalker**: L'utente, tenendo premuto sull'elemento della lista delle organizzazioni MyStalker, fa comparire un pop-up che richiede se si intende rimuovere l'organizzazione da tale lista;

- **Tracciamento**: La funzionalità di tracciamento consente all'utente di tracciare gli ingressi e le uscite presso le organizzazioni e presso i loro luoghi, solamente di quelli presenti nella lista MyStalker. Se l'organizzazione ha richiesto l'autenticazione con credenziali aziendali (LDAP) allora è possibile cambiare, tramite uno switch presente nella pagina dell'organizzazione, la tipologia di tracciamento da anonimo (default) ad autenticato (e viceversa). La modalità autenticato permette alle organizzazioni di visualizzare a posteriori gli accessi (insieme di un ingresso e un'uscita da un'organizzazione o luogo) di coloro che le hanno aggiunte alla lista MyStalker.

- **Storico Accessi**: Nell'applicazione, oltre ad esserci una sezione dedicata alla lista di tutte le organizzazioni e una per le organizzazioni presenti nella lista MyStalker (lista preferiti), è presente una sezione (indicata nel tab da un orologio) per visualizzare lo storico degli accessi presso un'organizzazione o un luogo  da parte di un'utente.
Se l'utente entrerà in un'organizzazione e farà pure l'uscita, verrà aggiunta un riga in cui verranno visualizzate le seguenti informazioni:
-nome dell'organizzazione;
-la data dell'accesso;
-l'ora in cui l'utente ha effettuato l'accesso;
-l'ora in cui l'utente ha effettutato l'uscita.
E' presente anche un pulsante, contrassegnato dal simbolo di un cestino, che permette di eliminare tutte le informazioni sullo storico degli accessi (quindi verranno eliminate tutte le righe presenti in questa sezione).