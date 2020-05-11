# 1 Introduzione

<p align = "center">

<img src = "/Immagini/qbteam.png" alt = "Logo qbteam" />

</p>

## 1.1 Scopo documento
Lo scopo di questo documento è quello spiegare attraverso una raccolta di video, supportati da una corrispondente parte testuale, come utilizza il sistema *Stalker*. 

## 1.2 Composizione prodotto

Il prodotto **Stalker** è formato dalle parti:

-   [App utenti](/app/architettura/)
-   [Web-app amministratori](/webapp/architettura/);
-   [Backend](/backend/architettura/).

## 1.3 Scopo del prodotto 

Il prodotto garantirà le seguenti funzionalità:

-   **Amministratori**: gli amministratori dovranno essere in grado,
    attraverso la web-app, di gestire la propria organizzazione,
    visualizzare gli accessi dei dipendenti e nominare altri
    amministratori per assisterli nella gestione e monitoraggio.
    L’amministratore avrà accesso alle seguenti funzionalità:

    -   **Modifica ai parametri dell’organizzazione**: L’amministratore
        può ridefinire il nome, la descrizione, l’immagine e l’indirizzo
        dell’organizzazione selezionata;

    -   **Modifica delle superfici geografiche di tracciamento dell’organizzazione**: 
		Può modificare il perimetro di
        tracciamento dell’organizzazione e quello degli specifici
        luoghi, inserendo un numero a piacere di coordinate per
        delimitarne la superficie di tracciamento (manualmente o tramite
        Google Maps API);

    -   **Gestione degli amministratori**: È possibile nominare e/o
        eliminare amministratori e modificarne i privilegi;

    -   **Monitoraggio degli utenti tracciati**: L’amministratore può
        sapere, in tempo reale, quanti utenti si trovano all’interno dei
        vari luoghi dell’organizzazione, o dell’organizzazione in
        generale. Qualora l’organizzazione monitorata fosse gestita con
        tracciamento riconosciuto, l’amministratore è anche in grado di
        sapere l’identità dei vari utenti tracciati;

    -   **Visualizzazione degli accessi effettuati**: L’amministratore
        ha la possibilità di visualizzare lo storico degli accessi degli
        utenti che hanno effettuato l’accesso all’organizzazione,
        qualora quest’ultima fosse monitorata con tracciamento
        riconosciuto. Per ogni accesso di uno specifico utente viene
        mostrato: il timestamp di ingresso, quello di uscita e il suo
        tempo di permanenza presso l’organizzazione.

    -   **Estrapolazione di report tabellari riguardanti gli accessi dei dipendenti e gli accesi ai vari luoghi dell’organizzazione**:
	
        L’amministratore può ricavare tabelle dei seguenti tipi:

        -   Ore di entrata e uscita da un luogo per uno specifico
            utente;

        -   Totale di ore spese in ogni luogo per uno specifico utente;

        -   Il numero di dipendenti e il totale delle ore da loro
            trascorse in ogni luogo dell’organizzazione.

-   **Utenti:** gli utenti necessiteranno della possibilità, con
    l’applicazione, di registrarsi e autenticarsi nell'app, di venire
    tracciati nelle organizzazioni e autenticarsi presso le
    organizzazioni che lo richiedono. Agli utenti saranno fornite le
    seguenti funzionalità:

    -   **Funzionalità di registrazione e autenticazione**: L’utente può
        registrarsi con delle nuove credenziali o, alternativamente,
        effettuare l’accesso con un account già registrato nel sistema.
        Qualora l’utente avesse smarrito la password, avrebbe comunque
        la possibilità di effettuarne il reset;

    -   **Possibilità di scaricare e aggiornare la lista delle organizzazioni**: 
        L’utente ha la possibilità di scaricare la
        lista delle organizzazioni, sia quelle con tracciamento
        autenticato che quelle senza. Può inoltre effettuare
        l’aggiornamento della lista in maniera manuale, tramite un
        pulsante o temporizzata;

    -   **Venire tracciati nelle organizzazioni desiderate**: L’utente
        verrà tracciato qualora effettuasse un movimento all’interno
        dell’organizzazione;

    -   **Gestione delle organizzazioni preferite**: L’utente può
        selezionare un’organizzazione e renderla preferita, così facendo
        essa sarà visualizzata nelle prime righe della lista delle
        organizzazioni;

    -   **Visualizzare gli accessi effettuati presso le varie organizzazioni e i relativi luoghi**: 
		L’utente ha a disposizione un registro degli accessi in cui sarà visualizzato l’orario di
        entrata e uscita da una determinata organizzazione, o luogo, e
        il tempo trascorso al suo interno;

    -   **Passare in tracciabilità anonima e non presso organizzazioni private**: 
		Un utente riconosciuto potrà decidere di passare
        all’anonimato, cioè di diventare un utente anonimo, selezionando
        l’apposita funzionalità.
