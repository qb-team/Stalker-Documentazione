#Architettura 
Il framework Spring utilizza il pattern architetturale MVC, ovvero :
* Model: sono le classi che si occupano di accedere e rappresentare i dati utili per implementare la logica di business.
* View: si occupa di creare l’interfaccia con cui l’utente interagirà con il sistema.
* Controller: sono le classi che si occupano di implementare la logica di business, ricevono input ed elaborano dati.  

Nel nostro caso avendo sviluppato solamente un backend e non un applicazione comprendente anche una “View”, del pattern quest’ultima non è stata implementata, poiché il solo compito del backend è fornire end-point a cui permettere l’applicazione utenti e la applicazione web amministratori di interfacciarsi per inviare o ricevere dati.  
![!immagine servert engine](/Immagini/Backend/mvc.png)  
L’implementazione di Spring del pattern MVC è inotre fusa con il pattern Front Controller, che implementa una componente chiamata DispatcherServlet, che si occupa di gestire tutte le richieste provenienti dalla rete e inviate (to dispatch) alle classi Controller in grado di soddisfarle, ovvero quelle che sono mappate a un certo URI ricercato tramite un mapping effettuato da un’altra componente definita Handler Mapping.
Questo Handler sfrutta le annotation @RequestMapping per creare un’associazione tra URL e metodo Java da invocare che è stato scritto in una classe annotata @Controller.  
Non richiedendo particolari configurazioni e non conoscendo questo tipo di framework, si è deciso di utilizzare il modulo Spring Boot, che evita allo sviluppatore di occuparsi di tutta la configurazione fin qui accennata. Di ciò che è stato trattato fino ad ora si trova progettato e implementato all’interno del backend solamente i controller ed il modello.  
![!immagine servert engine](/Immagini/Backend/springboot.png)   
Sono stati progettati e implementati anche un service layer che si occupa di eseguire la business logic sui dati che sono rappresentati dalle classi del modello, e un persistence layer, a cui il service layer fa riferimento per effettuare operazioni CRUD (Create Read Update Delete) sui dati.  
 Le classi del service layer hanno una dipendenza con lo strato di persistenza, implementato con repository che si interfacciano con database SQL, classi che si interfacciano con database NoSQL (come Redis) e servizi esterni (come Firebase), mentre i controller hanno una dipendenza verso i service.  
La presenza del Service layer permette di ridurre l’accoppiamento che ci sarebbe fra i Controller, che con l’architettura in essere si devono occupare solamente di rispondere alle richieste dei client e lo strato di persistenza, che potrebbe cambiare natura o implementazione, ma così facendo non intacca l’elaborazione delle richieste.
Questo permette, inoltre, di guadagnare manutenibilità e testabilità.
