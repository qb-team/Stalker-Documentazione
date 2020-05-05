# Requisiti e installazione
Per poter sviluppare sul proprio PC il webapp del sistema Stalker sono necessari i software e gli strumenti indicati in questa pagina.
I software da installare saranno divisi in base al loro scopo.

Per scaricare il codice sorgente del backend, è sufficiente andare nella pagina di GitHub che lo ospita, che si trova [qui](https://github.com/qb-team/Stalker-Admin), cliccare su `Clone or download` e successivamente premere su `Download ZIP`.

Un'alternativa più efficace a questo procedimento è scaricare il progetto tramite Git. Se non si dispone di Git è possibile scaricarlo seguendo quanto indicato in [Source Code Management](#source-code-management). Per scaricare il progetto in questo modo, invocare il seguente comando tramite un terminale o prompt dei comandi nel sistema in uso:
```bash
git clone https://github.com/qb-team/Stalker-Admin.git
```


Di seguito vengono elencati i requisiti minimi per lo sviluppo e la manutenzione della Web app.

## Prerequisiti hardware e software

Le tecnologie utilizzate per sviluppare l'applicazione web richiedono poche risorse, si consiglia comunque di soddisfare i seguenti requisiti minimi:

!!! info
        -   **Sistema operativo** 
            - Windows 10 (64-bit);
            - MacOS 15.04 Catalina;
            - Ubuntu 18.04 LTS.
        -   **Memoria RAM**
            - 8GB.
!!! attention
        È necessario avere una connessione Internet attiva.

## Linguaggi utilizzati 

Di seguito vengono illustrate quali linguaggi vengo utilizzati e come installarli.

### Typescript

L'applicazione web è stata sviluppata utilizzando il linguaggio di programmazione Typescript, in particolare la sua versione 3.7.5 .
!!!info
    per maggiori informazioni o per consultare la documentazione clicca [qui](https://www.typescriptlang.org/) .

Per installare Typescript sia per Windows, MacOS e Ubuntu si utilizza il seguente comando  
```bash
npm install -g typescript
```
!!! attention
        È necessario aver prima installato *npm*.
    

## Tecnologie utilizzate

Di seguito vengono illustrate quali tecnologie vengo utilizzate e come installarle.

### Node.js
Runtime di JavaScript open source multipiattaforma orientato agli eventi per l'esecuzione di codice JavaScript, viene utilizzato per avviare l'applicazione in locale.

L'installazione di Node.js su Windows e MacOS si può fare attraverso degli installer scaricabili presso il sito dello strumento, disponibile [qui](https://nodejs.org/en/download/).

Su sistemi Ubuntu, e al solito anche per distribuzioni derivate e distribuzioni derivate da Debian (con piccole differenze), si può installare con i seguenti comandi invocati da terminale:
```bash
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
```

Una volta installato Node.js, è possibile installare openapi-generator-cli, da terminale o prompt dei comandi, con il seguente 0comando:
```bash
npm install @openapitools/openapi-generator-cli -g
```
### npm

È un gestore di pacchetti per il linguaggio di programmazione JavaScript. È il gestore di pacchetti predefinito per l'ambiente di runtime JavaScript Node.js. Perciò viene utilizzato per gestire le dipendenze di pacchetti che ha l'applicazione web.

Verificare che npm è già stato installato precede installato con il seguente comando:

```bash
npm -v
```
se non è gia installato eseguire il seguente comando per farlo:
```bash
npm install npm@latest -g
```

### Angular 2+
Per sviluppare l'applicazione web è stato utilizzato il *framework* Angular 2+.

!!!info
    Per maggiori informazione consultare la documentazione di Angular 2+ [qui](https://angular.io/docs) .

Ora che è stato installato Node.js e npm è possibile installare Angular 2+ attraverso il comando:
```bash
npm install @angular/cli
```
### Bootstrap

È una raccolta di strumenti liberi per la creazione di siti e applicazioni per il Web.

!!!info
    Per maggiori informazione consultare la documentazione di Bootstrap [qui](https://getbootstrap.com/docs/4.0/getting-started/introduction/).

Per installare Bootstrap occorre utilizzare il comando:

```bash
npm install bootstrap
```
<br/>

!!!info 
    Viene utilizzato JSON come formato per lo scambio di dati tra WebApp e Backend.

## Creazione e configurazione dell'ambiente di sviluppo

Di seguito viene illustrato come creare e configurare l'ambiente di sviluppo in Angular.

Una volta installate tutte le tecnologie citate precedentemente, si apra il workspace del progetto, dopo di che per avviare un server locale dove poter vedere ciò che si è sviluppato, sarà necessario utilizzare il seguente comando:

```bash
ng serve 
```

Scrivere poi nella barra di navigazione del proprio browser `http://localhost::4200`.


## Test

Gli *unit test* sono stati codificati servendosi di *Jasmine*. Per installare Jasmine, sempre tramite *npm*, basterà lanciare il seguente comando:

    npm install --save-dev jasmine

Per eseguire i test si usa invece il comando:

    ng test

volendo si può usare l'opzione `--code-coverage` per visualizzare statistiche  in merito alla copertura del codice.  
L'esecuzione del comando precedente avvia *Karma* che aprirà una finestra del browser per visualizzare l'esito dei test. *Karma* aprirà il browser definito nel file `karma.conf.js`.

## Source code management

Per poter effettuare il versionamento del codice sorgente è richiesto di utilizzare *Git*.  
Per poterlo installare è necessario recarsi a [questa pagina](https://git-scm.com/downloads).  
Non è strettamente necessario, ma è consigliato per integrare le proprie modifiche nel repository.