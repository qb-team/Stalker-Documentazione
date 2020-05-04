# Requisiti
Per poter sviluppare sul proprio PC il backend del sistema Stalker sono necessari i software e gli strumenti indicati in questa pagina.
I software da installare saranno divisi in base al loro scopo.

Per scaricare il codice sorgente del backend, è sufficiente andare nella pagina di GitHub che lo ospita, che si trova [qui](https://github.com/qb-team/Stalker-Backend), cliccare su `Clone or download` e successivamente premere su `Download ZIP`.

Un'alternativa più efficace a questo procedimento è scaricare il progetto tramite Git. Se non si dispone di Git è possibile scaricarlo seguendo quanto indicato in [Source Code Management](#source-code-management). Per scaricare il progetto in questo modo, invocare il seguente comando tramite un terminale o prompt dei comandi nel sistema in uso:
```bash
git clone https://github.com/qb-team/Stalker-Backend.git
```

## Prerequisiti hardware e software
Le tecnologie utilizzate per sviluppare il backend richiedono, nell'esecuzione contemporanea, parecchie risorse. Si consiglia quindi di avere un computer con processore almeno quad-core e RAM almeno 8 GB.

Per gli utenti Windows, è richiesto di avere il sistema Windows 10 Pro, nella versione a 64 bit. La versione Windows 10 Home non supporta la virtualizzazione e ciò impedisce di eseguire il backend, seppur sia possibile svilupparne e anche compilare il codice sorgente.

## Linguaggi utilizzati
### Java
Il backend è stato sviluppato utilizzando in linguaggio di programmazione Java, in particolare la sua versione 8 (conosciuta come Java 8).

#### Installazione di Java su Windows
È possibile installare Java su Windows visitando il sito ufficiale dell'azienda che lo produce, Oracle. Il link per la pagina da cui si può scaricare Java si trova cliccando [qui](https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html). Il link porta alla pagina del sito Oracle per scaricare il Java Development Kit (JDK) 8. Esso include al suo interno anche il Java Runtime Environment (JRE) 8 per l'esecuzione.
Il pacchetto da scaricare una volta all'interno del sito web è quello sotto la voce *Windows x64*.

#### Installazione di Java su MacOS
L'installazione per MacOS è identica a quella per Windows, ad eccezione del fatto che il pacchetto da scaricare è sotto la voce *macOS x64*.

#### Installazione di Java su sistemi Linux
È possibile installare Java su sistemi Linux invocando i seguenti comandi sul terminale del sistema:
```bash
sudo apt-get update
sudo apt-get install openjdk-8-jre openjdk-8-jdk
```

## XML
Come verrà successivamente illustrato, la configurazione del progetto e la dichiarazione delle dipendenze è gestita tramite un file denominato **pom.xml**, che richiede la conoscenza almeno minima della struttura di XML, in caso si renda necessario effettuare alcune modifiche.

## YAML
Il backend permette all'app e alla web-app di funzionare tramite REST API. La definizione delle API è stata fatta sfruttando la specifica OpenAPI e gli strumenti offerti da Swagger (per maggiori informazioni, visita la sezione [REST API](/restapi/introduzione/)). Grazie a questi due strumenti è stato possibile generare in maniera semi-automatica:

- Le interfacce per il controller (visita la sezione [Architettura](/restapi/architettura/) per una spiegazione migliore di cosa si intende per Controller) del backend e le classi del modello;
- il Software Development Kit (SDK) per interrogare le REST API fornite dal backend e il modello sia per l'app Android che per la web-app;
- La documentazione in formato HTML e Markdown delle REST API.

La specifica delle API si presenta sotto forma di un file .yaml chiamato all'interno del progetto *stalker.yaml*.

<a name="source-code-management"></a>
## Source code management
Per poter effettuare il versionamento del codice sorgente è richiesto di utilizzare Git.
Per poterlo installare è necessario recarsi a [questa pagina](https://git-scm.com/downloads).  
Non è strettamente necessario, ma è consigliato per integrare le proprie modifiche nel repository.

## Build automation
La build automation (ovvero la gestione del processo di build) è affidata a Maven. Maven è installabile scaricandolo dal seguente [link](https://maven.apache.org/download.cgi).
Tramite Maven il progetto del backend viene compilato, rilasciato sotto forma di pacchetto .jar (formato di Java per i file eseguibili), testato e, volendo, eseguito.