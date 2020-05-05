# Diagrammi dei package
Vengono presentati qui di seguito i diagrammi UML dei package relativi al backend.

## Generale
Nel seguente diagramma UML dei package vengono mostrate tutte le dipendenze che esistono tra i vari package.  
![!it.qbteam](/Immagini/Backend/Package/package-it.qbteam.png)
<figcaption align=center> <em> Diagramma dei package - Package generale </em> </figcaption>  
## Model
Nel seguente diagramma vengono rappresentate le classi che compongono il package del Modello.  
![!model](/Immagini/Backend/Package/package-model.png)
<figcaption align=center> <em> Diagramma dei package - Package del modello </em> </figcaption>

## API
Nel seguente diagramma vengono rappresentate le interfacce che compongono il package della API.  
![!api](/Immagini/Backend/Package/package-api.png)
<figcaption align=center> <em> Diagramma dei package - Package delle API</em> </figcaption>

## Controller
Nel seguente diagramma vengono rappresentate le classi che compongono il package del Controller.  
![!controller](/Immagini/Backend/Package/package-controller.png)
<figcaption align=center> <em> Diagramma dei package - Package del controller</em> </figcaption>

## Service
Nel seguente diagramma vengono rappresentate le interfacce che compongono il package dei Service.  
![!service](/Immagini/Backend/Package/package-service.png)
<figcaption align=center> <em> Diagramma dei package - Package dei service </em> </figcaption>

## Serviceimpl
Nel seguente diagramma vengono rappresentate le classi che implementano le interfacce del package Service e vanno a comporre il package ServiceImpl.  
![!serviceimpl](/Immagini/Backend/Package/package-serviceimpl.png)
<figcaption align=center> <em> Diagramma dei package - Package delle implementazioni dei service</em> </figcaption>

## Repository
Nel seguente diagramma vengono rappresentate le classi che compongono il package Repository, queste classi estendono CRUDRepository.  
![!repository](/Immagini/Backend/Package/package-repository.png)
<figcaption align=center> <em> Diagramma dei package - Package delle repository </em> </figcaption>

## Movement Tracker
Nel seguente diagramma vengono rappresentati i due package che compongono Movement Tracker, i due package interni contengono le classi che si occupano 
della implementazione nel sistema di **Redis** come *Message Broker*.  
![!movementtracker](/Immagini/Backend/Package/package-movementtracker.png)
<figcaption align=center> <em> Diagramma dei package - Package del sistema di tracciamento </em> </figcaption>

## Exception
Nel seguente diagramma viene rappresentata la classe che compone il package delle Exception.  
![!exception](/Immagini/Backend/Package/package-exception.png)
<figcaption align=center> <em> Diagramma dei package - Package delle eccezioni </em> </figcaption>

## Dipendenze esterne
Nel seguente diagramma vengono rappresentati tutti i package verso i quali il nostro package **it.qbteam** ha dipendenze.  
![!dipendenze esterne](/Immagini/Backend/Package/package-dependencies.png)
<figcaption align=center> <em> Diagramma dei package - Package delle dipendenze esterne </em> </figcaption>
