# Diagrammi delle classi
Vengono presentati qui di seguito i diagrammi UML delle classi relativi all'applicazione.  


## Authentication 
![!AuthenticationFragment](../Immagini/App/Classi/Authentication.png "Diagramma delle classi di Authentication")
<figcaption align="center"> <em> Diagramma delle classi di Authentication </em> </figcaption>

La classe AuthenticationFragment fa parte della vista e mostra all'utente la pagina dove può scegliere se effettuare la registrazione oppure il login.

La classe AuthenticationFragment offre i seguenti metodi:

-   `onCreate(Bundle savedInstanceState)`:  Si occupa della creazione del fragment in quanto componente;

-   `onCreateView(LayoutInflater inflater,  ViewGroup container,  Bundle savedInstanceState)`: Si occupa della creazione della parte grafica visualizzata dall'utente e sta in attesa di un click da parte dell'utente in caso selezioni il pulsante "Login" o "Registrati" per aprire i rispettivi fragment.


___
## Login
![!LoginFragment](../Immagini/App/Classi/LoginFragment.png "Diagramma delle classi del Login")
<figcaption align="center"> <em> Diagramma delle classi del Login </em> </figcaption>

La classe LoginFragment, così come LoginPresenter e LoginModel ad essa collegati, contengono tutti i metodi che permettono all'utente di autenticarsi.
L'utente per fare il Login deve inserire l'email e la password e successivamente cliccare sul pulsante "Login" per invocare i metodi di Firebase che verificano le credenziali e creano il collegamento.
In caso di successo l'utente sarà spostato nel HomePageActivity.class e visualizza un messaggio che indica il buon esito dell'autenticazione.
In caso di fallimento l'utente visualizza un messaggio di errore.

La classe LoginFragment offre i seguenti metodi:

-   `onCreate(Bundle savedInstanceState)`:  Si occupa della creazione del fragment in quanto componente;

-   `onCreateView(LayoutInflater inflater,  ViewGroup container,  Bundle savedInstanceState)`: Si occupa della creazione della parte grafica visualizzata dall'utente;

-   `onClick(View v)`: Attende un click dell'utente al pulsante "Login" per invocare il metodo `checkLoginDetails()`;

-   `checkLoginDetails()`: Controlla se l'utente ha scritto le proprie credenziali e le invia al metodo `initLogin(String email, String password)`, altrimenti segnala l'utente dell'assenza di esse;

-   `initLogin(String email, String password)`: Tramite l' MVP invoca i meotodi di Firebase per verificare l'email e la password, in caso positivo invoca il metodo `onLoginSuccess(String message)`, in caso negativo `onLoginFailure(FirebaseException e)`;

-   `onLoginSuccess(String message)`: L'autenticazione è andata a buon fine, l'utente sarà spostato nella HomePageActivity.class e visualizza un messaggio che indica che si è autenticato correttamente;

-   `onLoginFailure(FirebaseException e)`: L'autenticazione è fallita e l'utente visualizza un messaggio che indica l'errorel.


___
##  SignUp
![!SignUpFragment](../Immagini/App/Classi/SignUpFragment.png "Diagramma delle classi di SignUp")
<figcaption align="center"> <em> Diagramma delle classi del SignUp </em> </figcaption>

La classe SignUpFragment, così come SignUpPresenter e SignUpModel ad essa collegati, contengono tutti i metodi che permettono all'utente di registrarsi.
L'utente per registrarsi deve; inserire l'email, inserire la password, confermare la password, accettare le condizioni d'uso e infine cliccare il pulsante Registrati.
Una volta cliccato il pulsante vengono invocati i metodi della libreria Firebase che ti registrano nel sistema ed eseguono automaticamente il Login.

La classe SignUpFragment offre i seguenti metodi:

-   `onCreate(Bundle savedInstanceState)`:  Si occupa della creazione del fragment in quanto componente;

-   `onCreateView(LayoutInflater inflater,  ViewGroup container,  Bundle savedInstanceState)`: Si occupa della creazione della parte grafica visualizzata dall'utente;

-   `onClick(View v)`: Attende un click dell'utente al pulsante "Sign Up" ("Registrati") per invocare il metodo `checkSignUpDetails()`, oppure un click a "Leggi le condizioni d'uso" per invocare il metodo `showTermsofUse()`;

-   `showTermsofUse()`: Apre un pop-up che mostra le condizioni d'uso che l'utente dovrà accettare;

-   `checkSignUpDetails()`: Controlla se l'utente ha scritto le proprie credenziali, confermato la password e accettato le condizioni d'uso, in caso positivo le invia al metodo `checkSignUp(String email, String password)`, altrimenti segnala l'utente dell'assenza di esse;

-   `checkSignUp(String email, String password)`: Tramite l' MVP invoca i meotodi di Firebase per registrare l'email e la password, in caso di riuscita invoca il metodo `onSignUpSuccess(String message)`, in caso di fallimento `onSignUpFailure(FirebaseException e)`;

-   `onSignUpSuccess(String message)`: La registrazione è andata a buon fine, l'utente sarà spostato nella HomePageActivity.class e visualizza un messaggio che indica che si è autenticato correttamente;

-   `onSignUpFailure(FirebaseException e)`: La registrazione è fallita e l'utente visualizza un messaggio che indica l'errore;

-   `calculate(String password)`: Calcola la complessità della password per verificarne la sicurezza.

___
## Action Tab
![!ActionTabFragment](../Immagini/App/Classi/ActionTabClassDiagramm.PNG "Diagramma delle classi del Action Tab")
<figcaption align="center"> <em> Diagramma delle classi del Action Tab </em> </figcaption>

La classe ActionTabFragment gestisce la view page principale dell'applicazione la quale contiene le due view pricipali ovvero: HomeFragment e MyStalkerFragment.
Si occupa inoltre di gestire il menu bar principale che permette all'utente di navigare tra le pagine dell'applicazione.

La classe ActionTabFragment offre i seguenti metodi:

-   `onCreate(Bundle savedInstanceState)`:  Si occupa della creazione del fragment in quanto componente;

-   `onCreateView(LayoutInflater inflater,  ViewGroup container,  Bundle savedInstanceState)`: Si occupa della creazione della parte grafica visualizzata dall'utente;

-   `public void onActivityCreated(Bundle savedInstanceState)`: Segnala che la creazione dell’Activity è stata completata;

-   `onBackPressed()`: Si occupa di recuperare il fragment appartenente all'Action Tab attualmete visibile per poi propagare la sua callBack agli altri fragment.

___
## Home 
![!HomeFragment](../Immagini/App/Classi/HomeFragment.png "Diagramma delle classi di Home Fragment")
<figcaption align="center"> <em> Diagramma delle classi di Home</em> </figcaption>

Se l'utente risulta già autenticato e avvia l'applicazione oppure ha appena effettuato l'autenticazione allora gli viene mostrato automaticamente la classe view del HomeFragment. In questa classe compariranno tutte le organizzazioni presenti nel server. L'utente ha la possibilità di aggiornare la lista oppure di scaricarla se dovessero incombere dei problemi.

La classe HomeFragment offre i seguenti metodi:

-   `onCreate( Bundle savedInstanceState)`:  Si occupa della creazione del fragment in quanto componente;

-   `onCreateView(LayoutInflater inflater,  ViewGroup container,  Bundle savedInstanceState)`: Si occupa della creazione della parte grafica visualizzata dall'utente;

-   `checkFile()`: Si occupa di andare a caricare la lista delle organizzazioni andandole a caricare direttamente da FileSyste;

-   `onFailureCheckFile(String message)`: Si occupa di gestire un eventuale errore durante la lettura da FileSystem, fa visualizzare all'utente l`errore durante il caricamento;

-   `downloadList()`: Si occupa di scaricare la lista dal Server e in caso affermativo la salva su FileSystem;

-   `onSuccessDownloadList(String message)`: Si occupa di notificare all'utente il corretto scarimento della lista dal Server;

-   `onFailureDownloadList(String message)`: Si occupa di notificare all'utente il fallimento dello scaricamento della lista dal Server;

-   `organizationClick(int position)`: Si occupa di inializzare e far visualizzare all'utente il fragment della organizzazione in seguito ad un rapido click;

-   `organizationLongClick(int position)`: Notifica all'utente un dialog contenente informazioni aggiuntive dell'organizzazione selezionata dall'utente in seguito ad un click prolungato;

-   `alphabeticalOrder()`: Si occupa di ordinare la lista presente nella view Home Fragment in ordine alfabetico;

-   `onPrepareOptionsMenu( Menu menu)`: Nasconde al menù action tab dell'applicazione l'opzione 'aggiungi ai preferiti' e rende visibile il comando di ricerca; 

-   `onQueryTextChange(String newText)`: Si occupa di visualizzare a schermo la lista delle organizzazioni in seguito agli input inseriti dall'utente nel menu di ricerca;

-   `onBackPressed()`: Si occupa di fa ritornare l'utente alla precendente Activity/Fragment.


___
## My Stalkers List 
![!MyStalkersListFragment](../Immagini/App/Classi/MyStalkerListFragment.png "Diagramma delle classi di My Stalker List")
<figcaption align="center"> <em> Diagramma delle classi di My Stalkers List </em> </figcaption>

In questa classe compariranno tutte le organizzazioni abilitate nel tracciamento dell'utente in precedenza aggiunte sia localmente che sul server. È possibile la rimozione dell'organizzazione dalla lista MyStalkers non consentendone più il tracciamento. Queste funzioni possono essere eseguite direttamente nell'applicazione. 

La classe MyStalkerListFragment offre i seguenti metodi:

-   `onServiceConnected(ComponentName name, IBinder service)`: Metodo della classe interna ServiceConnection che permette di stabile una connesione con il Bind Service;

-   `onServiceDisconnected(ComponentName name)`: Metodo della classe interna ServiceConnection che permette di disconnettere la connesione con il Bind Service;

-   `onCreate( Bundle savedInstanceState)`: Si occupa della creazione del fragment in quanto componente;

-   `onCreateView(LayoutInflater inflater,  ViewGroup container,  Bundle savedInstanceState)`: Si occupa di creare il layout del fragment;

-   `organizationClick(int position)`: Si occupa di inializzare e far visualizzare all'utente il fragment della organizzazione in seguito ad un rapido click;

-   `organizationLongClick(int position)`: Notifica all'utente un dialog contenente la possibilità di eliminare l'organizzazione selezionata dall'utente in seguito ad un click prolungato;

-   `onPrepareOptionsMenu(Menu menu)`: Nasconde al menù action tab dell'applicazione l'opzione 'aggiungi ai preferiti' e rende visibile il comando di ricerca; 

-   `onQueryTextChange(String newText)`: Si occupa di visualizzare a schermo la lista delle organizzazioni in seguito agli input inseriti dall'utente nel menu di ricerca;

-   `addOrganization(Organization organization)`: Si occupa di aggiungere l'organizzazione ricevuta in input sia sul FileSystem sia sul Server;

-   `onSuccessAddOrganization(ArrayList<Organization> list, String message)`: Notifica all'utente il successo dell'operazione di aggiunta dell'organizzazione;

-   `onFailureAddOrganization(String message)`: Notifica all'utente l'insuccesso dell'operazione di aggiunta dell'organizzazione;

-   `removeOrganization(int position)`: Si occupa di rimuovere un'organizzaione sia dal FileSystem sia dal Server;

-   `onSuccessRemoveOrganization(ArrayList<Organization> list)`: Notifica all'utente il successo dell'operazione di rimozione di una organizzazione;

-   `loadMyStalkerList(String UID, String userToken)`: Si occupa di scaricare dal Serve la lista delle organizzazioni aggiunte dall'utente in precedenza;

-   `checkForUpdate()`: Si occupa di tenere traccia delle ventuali modifiche apportate dall'utente della sua lista delle organizzazioni presenti nella view MyStalkerListFragment;

-   `onSuccessLoadMyStalkerList(List<Organization> list)`: Notifica all'utente il successo dello scaricamneto della lua lista delle organizzazioni iserite in MyStalkerList e le mostra a schermo;

-   `onPause()`: Metodo che viene invocato quando l'Activity principale viene è in pausa e ci si aspetta un suo ritorno in breve tempo;

-   `onStop()`: Metodo che viene invocato quando l'Activity principale non è più visibile all'utente, ovvero quando quest'ultimo ha deciso di chiudere l'applicazione;

-   `onSharedPreferenceChanged(SharedPreferences sharedPreferences, String s)`: Metodo che viene chiamato quando una risorsa condivisa (tra due view) viene modificata, aggiunta o rimossa;

-   `startTracking()`: Metodo per gestire l'inizio del tracciamento facendo riferimento alle organizzazioni scelte ed inserite dall`utente nella view MyStalkerList;

-   `stopTracking()`: Metodo per gestire la terminazione del tracciamento facendo riferimento alle organizzazioni scelte ed inserite dall'utente nella view MyStalkerList;

-   `onBackPressed()`: Si occupa di fa ritornare l'utente alla precendente Activity/Fragment.
___
## Standard Organization
![!StandardOrganizationFragment](../Immagini/App/Classi/StandardOrganizationFragment.png "Diagramma delle classi del Standard Organization")
<figcaption align="center"> <em> Diagramma delle classi dello Standard Organization</em> </figcaption>

La classe StandardOrganizationFragment rappresenta la pagina dedicata alle organizzazioni pubbliche, cioè quelle che non richiedono credenziali di autenticazione LDAP. La vista contiene le informazioni riferite all'organizzazione.
Qualora l'organizzazione dovesse essere aggiunta nella lista MyStalkers allora comparirà al suo interno una sezione che mostra se l'utente è dentro o fuori l'organizzazione.

La classe StandardOrganizationFragment offre i seguenti metodi:

-   `onCreate(Bundle savedInstanceState)`: Si occupa della creazione del fragment in quanto componente;

-   `onCreateView(LayoutInflater inflater,  ViewGroup container,  Bundle savedInstanceState)`: Si occupa della creazione della parte grafica visualizzata dall'utente;

-   `onPrepareOptionsMenu(menu:Menu)`: Rende visibile al menù action tab dell'applicazione l'opzione 'aggiungi ai preferiti' e nasconde il comando di ricerca; 

-   `onOptionsItemSelected(item:MenuItem)`: Aggiunge l'organizzazione nella lista dei preferiti.

___
## LDAP Organization
![!LDAPorganizationFragment](../Immagini/App/Classi/LDAPorganizationClassDiagramm.PNG "Diagramma delle classi del LDAP Organization")
<figcaption align="center"> <em> Diagramma delle classi del LDAP Organization </em> </figcaption>

La classe LDAPorganizationFragment rappresenta la pagina dedicata alle organizzazioni che richiedono credenziali LDAP. La vista contiene le informazioni riferite all'organizzazione e un pulsante che fa aprire un pop-up dove è possibile inserire i dati di autenticazione.
Un utente, per poter essere tracciato dall'organizzazione privata, ha bisogno prima di autenticarsi ed in seguito a ciò se l'esito fosse positivo allora l'organizzazione viene automaticamente inserita nella lista delle organizzazioni MyStalker (lista preferite). In seguito apparirà uno switch dove è possibile cambiare la tipologia di tracciamento. 
Le credenziali che ha digitato l'utente vengono spedite al modello che interrogherà il server dedicato al LDAP dell'organizzazione. L'esito di questa procedura verrà rimandata
alla vista e apparirà una notifica visibile sulla schermata per avvisare l'utente.

La classe LDAPorganizationFragment offre i seguenti metodi:

-   `onCreate(saveInstanceState: Bundle)`: Si occupa della creazione del fragment in quanto componente;

-   `onCreateView(LayoutInflater inflater,  ViewGroup container,  Bundle savedInstanceState)`: Si occupa della creazione della parte grafica visualizzata dall'utente.



