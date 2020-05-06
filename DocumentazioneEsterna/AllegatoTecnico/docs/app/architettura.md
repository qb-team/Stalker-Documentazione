## Model View Presenter

È stato scelto di utilizzare come modello architetturale il Model View Presenter che è fortemente consigliato per chi sviluppa delle applicazioni per Android.
Fornisce un modo semplice per mostrare la struttura del prodotto garantendo modularità, testabilità e in generale una base di codice più pulita e gestibile.
Ne deriva quindi l'applicazione del paradigma *separation of concerns*, che separa la responsabilità tra le differenti parti del pattern.
La comunicazione tra le varie componenti è asincrona.

![!MVP](/Immagini/App/MVP.png "MVP Pattern")
<figcaption> <em> Schema del pattern architetturale MVP </em> </figcaption>

### Model

Il Model è la parte che ha la responsabilità di gestione dei dati. La maggior parte delle operazioni e dei controlli vengono svolti al suo interno.
Contiene pure i metodi che avviano le connessioni alle API ed interagiscono con esse eseguendo svariate funzionalità. Ad esempio vi sono i metodi che
consentono la comunicazione con il Backend; per scaricare la lista delle organizzazioni bisogna prima avviare una connessione al server e poi scaricare i dati in
formato JSON e salvarli in seguito localmente.

### View

La View ha la responsabilità di passare i dati al Presenter. Essa è implementata dalle attività (activity), frammenti (fragment) e qualsiasi altra forma grafica visiva all'utente
come ad esempio: ProgressBar, TextView, RecyclerView, ecc. In altre parole la View è la user interface.

### Presenter

Il Presenter funge da livello intermedio tra la View e il Model. Tutta la logica di presentazione appartiene ad esso ed è responsabile per l'interrogazione del modello e l'aggiornamento della vista, reagendo in base alle interazioni che compie l'utente nella UI.

### Contract

Quando si ha intenzione di scrivere una nuova funzionalità, è buona norma scrivere un contratto al primo passaggio. Il contratto descrive la comunicazione tra View-Presenter e
Model-Presenter, esso consente una progettazione più pulita e diminuire le dipendenze tra le componenti.
Il Contract è un'interfaccia utilizzata per ogni fragment presente nell'applicazione e contiene le altre interfacce della View, Presenter e Model per garantire le varie comunicazioni.
