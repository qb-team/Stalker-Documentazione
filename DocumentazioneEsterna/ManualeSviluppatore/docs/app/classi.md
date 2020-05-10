# Diagrammi delle classi
Vengono presentati qui di seguito i diagrammi UML delle classi relativi all'applicazione.  


## Authentication 
![!AuthenticationFragment](../Immagini/App/Classi/Authentication.png "Diagramma delle classi di Authentication")
<figcaption align="center"> <em> Diagramma delle classi di Authentication </em> </figcaption>

La classe AuthenticationFragment fa parte della vista e mostra all'utente la pagina dove può scegliere se effettuare la registrazione oppure il login.

___
## Login
![!LoginFragment](../Immagini/App/Classi/LoginFragment.png "Diagramma delle classi del Login")
<figcaption align="center"> <em> Diagramma delle classi del Login </em> </figcaption>

La classe LoginFragment, così come LoginPresenter e LoginModel ad essa collegati, contengono tutti i metodi che permettono all'utente di autenticarsi.
L'utente per fare il Login deve inserire l'email e la password e successivamente cliccare sul pulsante "Login" per invocare i metodi di Firebase che verificano le credenziali e creano il collegamento.
In caso di successo l'utente sarà spostato nel HomePageActivity.class e visualizza un messaggio che indica il buon esito dell'autenticazione.
In caso di fallimento l'utente visualizza un messaggio di errore.

___
##  SignUp
![!SignUpFragment](../Immagini/App/Classi/SignUpFragment.png "Diagramma delle classi di SignUp")
<figcaption align="center"> <em> Diagramma delle classi del SignUp </em> </figcaption>

La classe SignUpFragment, così come SignUpPresenter e SignUpModel ad essa collegati, contengono tutti i metodi che permettono all'utente di registrarsi.
L'utente per registrarsi deve; inserire l'email, inserire la password, confermare la password, accettare le condizioni d'uso e infine cliccare il pulsante Registrati.
Una volta cliccato il pulsante vengono invocati i metodi della libreria Firebase che ti registrano nel sistema ed eseguono automaticamente il Login.


___
## Action Tab
![!ActionTabFragment](../Immagini/App/Classi/ActionTabClassDiagramm.PNG "Diagramma delle classi del Action Tab")
<figcaption align="center"> <em> Diagramma delle classi del Action Tab </em> </figcaption>

La classe ActionTabFragment contiene tutti i metodi necessari per gestire la barra principale al vertice dell'applicazione e i metodi per spostarsi nelle pagine HomeFragment e MyStalkerFragment.


___
## Home 
![!HomeFragment](../Immagini/App/Classi/HomeFragment.png "Diagramma delle classi di Home Fragment")
<figcaption align="center"> <em> Diagramma delle classi di Home</em> </figcaption>

Se l'utente risulta già autenticato e avvia l'applicazione oppure ha appena effettuato l'autenticazione allora gli viene mostrato automaticamente la classe view del HomeFragment. In questa classe compariranno tutte le organizzazioni presenti nel server. L'utente ha la possibilità di aggiornare la lista oppure di scaricarla se dovessero incombere dei problemi.

___
## My Stalkers List 
![!MyStalkersListFragment](../Immagini/App/Classi/MyStalkerListFragment.png "Diagramma delle classi di My Stalker List")
<figcaption align="center"> <em> Diagramma delle classi di My Stalkers List </em> </figcaption>

In questa classe compariranno tutte le organizzazioni abilitate nel tracciamento dell'utente in precedenza aggiunte sia localmente che sul server. È possibile la rimozione dell'organizzazione dalla lista MyStalkers non consentendone più il tracciamento. Queste funzioni possono essere eseguite direttamente nell'applicazione. In questa classe sono presenti i metodi di tracciamento i quali utilizzano tale lista per avviare tutte le svariate funzionalità di geolocalizzazione.

___
## Standard Organization
![!StandardOrganizationFragment](../Immagini/App/Classi/StandardOrganizationFragment.png "Diagramma delle classi del Standard Organization")
<figcaption align="center"> <em> Diagramma delle classi dello Standard Organization</em> </figcaption>

La classe StandardOrganizationFragment rappresenta la pagina dedicata alle organizzazioni pubbliche, cioè quelle che non richiedono credenziali di autenticazione LDAP. La vista contiene le informazioni riferite all'organizzazione.
Qualora l'organizzazione dovesse essere aggiunta nella lista MyStalkers allora comparirà al suo interno una sezione che mostra se l'utente è dentro o fuori l'organizzazione.

La classe offre i seguenti metodi:
-    `onCreate(saveInstanceState: Bundle)`:

-    `onCreateView(in inflater:LayoutInflater, in container:ViewGroup, in savedInstanceState:Bundle)`:

-    `onPrepareOptionsMenu(in menu:Menu)`: rende visibile al menù action tab dell'applicazione la sezione 'aggiungi ai preferiti' e nasconde il comando di ricerca; 

-    `onOptionsItemSelected(in item:MenuItem)`: aggiunge l'organizzazione nella lista dei preferiti.

___
## LDAP Organization
![!LDAPorganizationFragment](../Immagini/App/Classi/LDAPorganizationClassDiagramm.PNG "Diagramma delle classi del LDAP Organization")
<figcaption align="center"> <em> Diagramma delle classi del LDAP Organization </em> </figcaption>

La classe LDAPorganizationFragment rappresenta la pagina dedicata alle organizzazioni che richiedono credenziali LDAP. La vista contiene le informazioni riferite all'organizzazione e un pulsante che fa aprire un pop-up dove è possibile inserire i dati di autenticazione.
Un utente, per poter essere tracciato dall'organizzazione privata, ha bisogno prima di autenticarsi ed in seguito a ciò se l'esito fosse positivo allora l'organizzazione viene automaticamente inserita nella lista delle organizzazioni MyStalker (lista preferite). In seguito apparirà uno switch dove è possibile cambiare la tipologia di tracciamento. 
Le credenziali che ha digitato l'utente vengono spedite al modello che interrogherà il server dedicato al LDAP dell'organizzazione. L'esito di questa procedura verrà rimandata
alla vista e apparirà una notifica visibile sulla schermata per avvisare l'utente.

La classe offre i seguenti metodi:
-    `onCreate(saveInstanceState: Bundle)`:

-    `onCreateView(in inflater:LayoutInflater, in container:ViewGroup, in savedInstanceState:Bundle)`:



