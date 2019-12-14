# Regole per l'uso del repository *Stalker-Documentazione*
In questo file vengono descritte le regole da rispettare da ogni membro del gruppo *qbteam* affinché la documentazione pubblicata resti coerente e in ordine.

## Primo utilizzo
### Struttura del repository
Se è la prima volta che lavori nel repository, sappi che esso ha una struttura, che è la seguente:
1. *DocumentazioneEsterna/* : al suo interno vi è la documentazione da fornire a committenti e proponenti, oltre che i verbali redatti durante gli incontri con quest'ultimi.
    1. *VerbaliEsterni/* : dentro a questa cartella sono presenti i verbali degli incontri fra i membri del gruppo e i proponenti del progetto. Per ogni incontro è stato redatto un verbale e questo è presente in un'unica cartella. Ciascuna di queste cartelle ha il proprio nome rispettante il seguente formato: *YYYY_MM_DD*, con *YYYY*, *MM*, *DD* rispettivamente l'anno, il mese e ilgiorno in cui si è tenuto l'incontro.
2. *DocumentazioneInterna/* : al suo interno vi è la documentazione ad uso e consumo da parte dei membri del gruppo *qbteam* 
    1. *VerbaliInterni/* : dentro a questa cartella sono presenti i verbali degli incontri fra i membri del gruppo. Per ogni incontro è stato redatto un verbale e questo è presente in un'unica cartella. Ciascuna di queste cartelle ha il proprio nome rispettante il seguente formato: **YYYY_MM_DD**, con *YYYY*, *MM*, *DD* rispettivamente l'anno, il mese e ilgiorno in cui si è tenuto l'incontro.
        1. *YYYY_MM_DD/* : dentro a questa cartella ci sono i file che compongono il verbale del giorno indicato (dal nome della cartella). È presente al suo interno un file *YYYY_MM_DD.tex* corrispondente al file da compilare per generare il documento del verbale (per sapere come svolgere la compilazione dei documenti LaTeX vedi [qui](#Compilazione-documenti-LaTeX)) e una cartella *sezioni/* contenente i file *RegistroModifiche.tex*, relativo allo storico delle modifiche del file, e *Comandi.tex*, contenente invece comandi utili per la stesura del documento.
3. *Glossario* : al suo interno ci sono i file che permettono di comporre il documento contenente il glossario di progetto.
4. *Template* : al suo interno vi sono i file e le immagini comuni contente le componenti, gli stili e i comandi comuni a tutti i documenti da realizzare in LaTeX.
    - *Immagini* : dentro a questa cartella sono presenti le immagini comuni a più file.
### Operazioni preliminari
Quando hai scaricato questo repository (possibilmente mediante il comando `git clone https://github.com/qb-team/Stalker-Documentazione`) hai accesso a tutti i branch disponibili a quel momento. Non hai però attiva una funzionalità: il [*git flow*](https://danielkummer.github.io/git-flow-cheatsheet/index.it_IT.html), fondamentale da utilizzare in questo repository per distribuirci il lavoro correttamente.
Per abilitarla usa il comando `git flow init` e accetta la configurazione di default.
Una volta svolta questa operazione, verrai spostato nel branch *develop* e da lì potrai lavorare.

## Compilazione documenti LaTeX
Per "compilazione di un documento LaTeX" si intende la generazione di un file corrispondente con le regole, gli stili e i contenuti presenti nel file *.tex* che viene compilato e quelli che questo include a sua volta.
Per compilare un documento LaTeX è sufficiente assicurarsi di avere il software [MiKTeX](https://miktex.org/) ed eseguire il seguente comando:
- *pdflatex path_al_file/file_da_compilare.tex*, dove *path_al_file* è il percorso da fare per raggiungere il file da compilare (che può essere vuoto se ci si trova nella stessa cartella di *file_da_compilare.tex*) e *file_da_compilare.tex* è appunto il sorgente da cui iniziare la compilazione e successiva generazione del file *.pdf*.