# Diagrammi delle classi
Vengono presentati qui di seguito i diagrammi UML delle classi relativi all'applicazione.  

#### Login
La classe LoginFragment, così come la classe LoginPresenter e Utente ad essa collegati, contengono tutti i metodi che permettono all'utente di autenticarsi.

La classe offre i seguenti metodi:

-   `onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState)`: Si occupa della creazione della parte grafica visualizzata dall'utente.

-   `onClick(View v)`: Attende un click dell'utente al pulsante "Login" per invocare il metodo `checkLoginDetails()`

-   `checkLoginDetails()`: Controlla se l'utente ha scritto le proprie credenziali e le invia al metodo `initLogin(String email, String password)`, altrimenti segnala l'utente dell'assenza di esse;



-   `initLogin(String email, String password)`: 
      * `login(Fragment fragment, String email, String password)` ---> `performFirebaseLogin(Fragment activity, String email, String password)` invoca i meotodi di Firebase per verificare che verificare l'email e la password, in caso positivo invoca il metodo...  `onLoginSuccess(String message)`, in caso negativo `onLoginFailure(FirebaseException e)`;

-   `onLoginSuccess(String message)`: L'autenticazione è andata a buon fine e l'utente sarà spostato nella HomePageActiviti.class e visualizza un messaggio che indica che si è autenticato correttamente;

-   `onLoginFailure(FirebaseException e)`: L'autenticazione è fallita e l'utente visualizza un messaggio che indica l'errore;

![!LoginFragment](/Immagini/App/Classi/LoginFragment.png)
___
####  Registrazione
![!SignUpFragment](/Immagini/App/Classi/SignUpFragment.png)


## Action Tab
![!ActionTabFragment](/Immagini/App/ActionTabClassDiagramm.PNG "Diagramma delle classi del Action Tab")
<figcaption> <em> Diagramma delle classi - Diagramma delle classi del Action Tab </em> </figcaption>

La classe ActionTabFragment contiene tutti i metodi necessari per gestire la barra principale al vertice dell'applicazione e i metodi per spostarsi nelle pagine HomeFragment e MyStalkerFragment.