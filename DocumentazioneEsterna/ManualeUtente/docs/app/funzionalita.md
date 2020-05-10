## Funzionalità dell'applicazione Android Stalker

L'applicazione Android offre all'utente le seguenti funzionalità:

## SignUp

<iframe width="720" src="https://www.youtube.com/embed/t_jtcHEzhFw" frameborder="0" style="height: 540px" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

L'utente ha la possibilità di registrarsi inserendo un e-mail, password e accettando le condizioni d'uso.

## Login e scaricamento delle organizzazioni post autenticazione

<iframe width="720" src="https://www.youtube.com/embed/YPHun6qWReo" frameborder="0" style="height: 540px" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

L'utente può autenticarsi inserendo la propria email e password.
Qualora fosse la sua prima volta nell'utilizzare l'applicazione Stalker allora post autenticazione appare un popup che richiede all'utente la possibilità di scaricare la lista delle organizzazioni dal server. Egli ha la facoltà di rifiutare o accettare tale proposta.

## Scaricamento della lista delle organizzazioni

![!Model](/Immagini/app/ScaricaListaOrg.png "Package del Model")
<figcaption align="center"> <em> Popup scaricamento lista organizzazione </em> </figcaption>

L'utente, per poter visualizzare la lista di tutte le organizzazioni disponibili in Stalker, deve prima scaricarla connettendosi al backend. Una volta richiesto lo scaricamento, se dovesse decidere di annullarlo o se venisse a mancare la connessione ad Internet, apparirebbe nella schermata principale un tasto per ritentare il download.

## Aggiornamento della lista delle organizzazioni 

<iframe width="720" src="https://www.youtube.com/embed/" frameborder="0" style="height: 540px" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

L'utente può aggiornare la lista delle organizzazioni eseguendo uno *swipe down* nella schermata principale;

## Drawer

L'utente può accedere ad una serie di funzionalità utilizzando l'*Hamburger button* riportato in alto a sinistra.
È possibile avviare il tracciamento tramite uno pulsante switch, disattivato di default. Alla prima attivazione del tracciamento compare sulla schermata dell'applicazione un pop-up che invita l'utente ad accettare i permessi necessari per permettere all'applicazione di utilizzare il GPS. Altre funzionalità in questo menu permettono attualmente il logout e l'ordinamento alfabetico della lista delle organizzazioni;

## Ricerca

In alto vi è la barra principale dell'applicazione in vi è una sezione di ricerca. Con essa è possibile eseguire delle ricerche testuali per filtrare e visualizzare la lista delle organizzazioni;

## Visualizzazione pagina organizzazione

L'utente può entrare nella pagina dedicata di un'organizzazione cliccando l'elemento della lista ad essa appartenente. Al suo interno è possibile visualizzare il nome dell'organizzazione, una descrizione, l'immagine di anteprima, ed un pulsante autenticati se l'organizzazione richiede un'autenticazione aziendale. Se l'organizzazione è aggiunta alla lista MyStalker (lista preferiti), viene visualizzato lo stato "Sei dentro/Sei fuori";
 
## Aggiunta organizzazione nella lista MyStalker (lista preferiti) 

<iframe width="720" src="https://www.youtube.com/embed/" frameborder="0" style="height: 540px" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

L'utente, tenendo premuto su di un elemento della lista delle organizzazione fa apparire un pop-up che permette di aggiungere l'organizzazione selezionata nella lista MyStalker, o più semplicemente visualizzarne il contenuto. Se l'organizzazione richiede un'autenticazione aziendale (tramite LDAP) allora con il pop-up è possibile solamente visualizzarne il contenuto. Una volta avuto accesso alla pagina dedicata dell'organizzazione bisogna autenticarsi tramite credenziali LDAP. Se l'autenticazione avviene con successo, tale organizzazione compare nella lista MyStalker;

## Eliminazione organizzazione dalla lista MyStalker

<iframe width="720" src="https://www.youtube.com/embed/" frameborder="0" style="height: 540px" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

L'utente, tenendo premuto sull'elemento della lista delle organizzazioni MyStalker, fa comparire un pop-up che richiede se si intende rimuovere l'organizzazione da tale lista;

## Attivazione tracciamento

<iframe width="720" src="https://www.youtube.com/embed/" frameborder="0" style="height: 540px" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Tracciamento

<iframe width="720" src="https://www.youtube.com/embed/YAfcW1RyUL8" frameborder="0" style="height: 540px" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

La funzionalità di tracciamento consente all'utente di tracciare gli ingressi e le uscite presso le organizzazioni e presso i loro luoghi, solamente di quelli presenti nella lista MyStalker. Se l'organizzazione ha richiesto l'autenticazione con credenziali aziendali (LDAP) allora è possibile cambiare, tramite uno switch presente nella pagina dell'organizzazione, la tipologia di tracciamento da anonimo (default) ad autenticato (e viceversa). La modalità autenticato permette alle organizzazioni di visualizzare a posteriori gli accessi (insieme di un ingresso e un'uscita da un'organizzazione o luogo) di coloro che le hanno aggiunte alla lista MyStalker.

