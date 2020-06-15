# 4.3 Estendibilità

<a name="sostituire-firebase"></a>
## 4.3.1 Sostituire Firebase
Il backend attualmente fornisce Firebase come sistema di autenticazione, ma è possibile sostituirlo con un qualsiasi altro sistema di autenticazione che abbia le seguenti caratteristiche:

- Permetta la registrazione e l'autenticazione con almeno un indirizzo e-mail e una password;
- Permetta il reset della password se dimenticata;
- Una volta autenticati, restituisca un JWT (acronimo di JSON Web Token) utilizzabile come access token per verificare l'autenticazione;
- Permetta di verificare se un access token è valido, invalido o scaduto;
- Permetta, dato un access token, di ottenere un identificativo dell'utente sotto forma di stringa alfanumerica;
- Permetta, dato un access token, di ottenere l'indirizzo e-mail dell'account annesso.

Se si dispone di un sistema di autenticazione con queste caratteristiche è possibile sostituire Firebase. Ovviamente va sostituito anche nell'applicazione utenti e nella web-app il riferimento a Firebase, poiché non potranno più autenticarsi con Firebase e successivamente inoltrare l'access token al backend: non verrebbe accettato.

I passi per la sostituzione sono i seguenti:

- Eliminazione della classe `FirebaseAdminConfig` appartenente al package `it.qbteam.config`;
- Eliminazione (o rimozione del contenuto) della classe `AdministratorServiceImpl` appartenente al package `it.qbteam.serviceimpl` poiché implementa l'interfaccia `AdministratorService` del package `it.qbteam.service` con le interfacce e le classi della libreria `firebase-admin` di Firebase.

!!! info
    È opzionale, ma è consigliato per una rimozione completa di Firebase, rimuovere il file di configurazione di Firebase (con estensione .json) indicato in [§4.2.10 Firebase Authentication](/backend/requisiti/#firebase-authentication) e [§4.2.11.1 Contenuto della cartella Stalker-Backend](/backend/requisiti/#contenuto-cartella), oltre alle due variabili d'ambiente **FIREBASE_DATABASE_URL** e **GOOGLE_APPLICATION_CREDENTIALS**.

Fatti questi due passaggi è possibile implementare nuovamente l'interfaccia `AdministratorService` in `AdministratorServiceImpl` con le specifiche del nuovo sistema di autenticazione. Se è necessario aggiungere della configurazione, come nel caso di Firebase, inserire la classe di configurazione all'interno del package `it.qbteam.config`.

<a name="rimuovere-https"></a>
## 4.3.2 Rimuovere HTTPS
Il backend così come è stato implementato richiede un certificato HTTPS sotto forma di un file con estensione .jks o .p12, così come spiegato in [Requisiti e installazione](../requisiti).
Può risultare più comodo, specialmente se non si ha a disposizione un certificato HTTPS, disabilitarlo. Per fare ciò è sufficiente rimuovere (o commentare), nel file `application.properties` presente in `src/main/resources` della cartella `Stalker-Backend` scaricata, le righe seguenti:
```yaml
server.ssl.key-alias=${SSL_ALIAS}
server.ssl.key-password=${SSL_PSW}
server.ssl.key-store=classpath:${SSL_KEYSTORE}
server.ssl.key-store-password=${SSL_PSW}
server.ssl.key-store-type=PKCS12
```

<a name="sostituire-ldap"></a>
## 4.3.3 Sostituire LDAP
Il backend attualmente fornisce LDAP come sistema di autenticazione per le organizzazioni, ma è possibile sostituirlo con un qualsiasi altro sistema di autenticazione che abbia le seguenti caratteristiche:

- Permetta la registrazione e l'autenticazione con almeno un identificativo (nome utente o e-mail) e una password;
- Permetta l'apertura e la chiusura di una connessione;
- Permetta di cercare utenti attraverso un identificativo univoco o richiedere la lista intera degli utenti.

Se si dispone di un sistema di autenticazione con queste caratteristiche è possibile sostituire LDAP. Ovviamente va sostituito anche nell'applicazione utenti e nella web-app il riferimento a LDAP, poiché non potranno più autenticarsi con LDAP e successivamente inoltrare l'identificativo al backend: non verrebbe compreso e si genererebbero errori a runtime.

I passi per la sostituzione sono i seguenti:

- Modifica della classe `AuthenticationServerConfig` appartenente al package `it.qbteam.config`, ritornando con il metodo `authenticationServerConnector()` la nuova implementazione di `AuthenticationServerConnector`, attualmente implementato da `LDAPServerConnectorAdapter`, che può quindi essere rimosso;
- Modifica, se necessaria, della classe `AuthenticationServerServiceImpl` appartenente al package `it.qbteam.serviceimpl` poiché implementa l'interfaccia `AuthenticationServerService` del package `it.qbteam.service`;
- Implementazione di `AuthenticationServerConnector` in una classe che sfrutta librerie o metodologie per connettersi e permettere l'autenticazione attraverso il nuovo sistema di autenticazione.
<a name="movement di keep-alive"></a>
## 4.3.4 Inserire un keep alive 
Il Backend attualmente permette due tipi di movimenti: entrata (1) e uscita(-1), nell'eventualità che un utente compia un movimento di entrata e per qualsiasi motivo non effettui l'uscita dal luogo o dall'organizzazione dove è entrato il Backend mantiene la sua presenza sul contatore delle presenze su Redis finché l'utente non effettua l'uscita o un'altra entrata.  
Per garantire che non si verifichi questa eventualità si può implementare un keep-alive sfruttando un nuovo movementType=0 che l'utente invia dopo un movemntType=1 e che rappresenta la permanenza nello stesso luogo o organizzazione in cui si è entrati in precedenza.
Quindi quando un utente invia un movimento con movementType=1 viene registrato in una nuova struttura dati contenente il suo exitToken e il timeStamp dell'entrata nel luogo o organizzazione, dopo x minuti (da decidere in fase di implementazione) l'utente invierà un movimento con movementType=0 e stesso exitToken e questo segnalerà al Backend che l'utente si trova ancora all'interno dello stesso luogo o organizzazione in cui è entrato, il Backend ricevuta questa richiesta aggiorna la struttura dati accedendo al record con l'exitToken dell'utente e mettendo il timeStamp della nuova richiesta.
Quando l'utente esce dal luogo o dall'organizzazione nella quale è entrato e  manda il movimento con movementType=-1 il Backend cancella il record con il corrispondente exitToken nella struttura dedicata al keep-alive.
Sarà presente un microservizio che avrà il compito di controllare, ogni y minuti ( da decidere in fase di implementazione), la struttura dati contente gli exitToken e i timeStamp verificando che  i timeStamp salvati non siano più vecchi di x (tempo dopo il quale l'utente invia il keep-alive) + z ( tempo di scarto da decidere in fase di implementazione per tolleranza di possibili ritardi lato utente e rete nell'invio e ricezione del keep-alive); se il microservizio trova un timeStamp più vecchio di x + z genera un movimento di uscita con l'exitToken corrispondente e il timeStamp associato e cancella il record dalla struttura dati del keep-alive; questo significa che viene generato un exitToken con l'ultimo timeStamp noto, che sicuramente è veritiero.