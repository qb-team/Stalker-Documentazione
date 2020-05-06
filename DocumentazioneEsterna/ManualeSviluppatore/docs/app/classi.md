# Diagrammi delle classi
Vengono presentati qui di seguito i diagrammi UML delle classi relativi all'applicazione.  

## Login

![!LoginFragment](/Immagini/App/Classi/LoginFragment.png)

La classe LoginFragment, così come LoginPresenter e LoginModel ad essa collegati, contengono tutti i metodi che permettono all'utente di autenticarsi.
L'utente per fare il Login deve inserire l'email e la password e successivamente cliccare sul pulsante "Login" per invocare i metodi di Firebase che verificano le credenziali e creano il collegamento.
In caso di successo l'utente sarà spostato nel HomePageActivity.class e visualizza un messaggio che indica il buon esito dell'autenticazione.
In caso di fallimento l'utente visualizza un messaggio di errore.


___
##  Registrazione

![!SignUpFragment](/Immagini/App/Classi/SignUpFragment.png)

La classe SignUpFragment, così come SignUpPresenter e SignUpModel ad essa collegati, contengono tutti i metodi che permettono all'utente di registrarsi.
L'utente per registrarsi deve; inserire l'email, inserire la password, confermare la password, accettare le condizioni d'uso e infine cliccare il pulsante Registrati.
Una volta cliccato il pulsante vengono invocati i metodi della libreria Firebase che ti registrano nel sistema ed eseguono automaticamente il Login.


___
## Action Tab
![!ActionTabFragment](/Immagini/App/ActionTabClassDiagramm.PNG "Diagramma delle classi del Action Tab")
<figcaption> <em> Diagramma delle classi del Action Tab </em> </figcaption>

La classe ActionTabFragment contiene tutti i metodi necessari per gestire la barra principale al vertice dell'applicazione e i metodi per spostarsi nelle pagine HomeFragment e MyStalkerFragment.