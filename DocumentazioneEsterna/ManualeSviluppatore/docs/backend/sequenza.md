# 4.7 Diagrammi di Sequenza
Vengono presentati qui di seguito i diagrammi UML di sequenza relativi al backend.

## 4.7.1 POST /movement/track/place
![!diagramma di sequenza della ricezione di un movimento](/Immagini/Backend/Sequenza/tracciamento-sequenza.png)

Questo diagramma di sequenza rappresenta il comportamento del Backend quando si effettua una richiesta */movement/track/place*.  
Come si può vedere viene restituita una **unauthorized** nel caso in cui l'utente che ha effettuato la richiesta non sia autenticato su Firebase.
