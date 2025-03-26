**1.** Im Terminal von Ubuntu muss ein neues Verzeichnis erstellt werden und man soll auch gleich in dieses wechseln:
**"mkdir mini-projekt"**
**"cd mini-projekt"**

**2.** Im Terminal muss danach die Datei **"index.html"** mit dem Befehl **"nano index.html"** erstellt. Da drin wurde dann der Text der [index.html](index.html) Datei hinzugefügt und gespeichert.
Das gleiche wurde mit dem Dockerfile gemacht: **"nano Dockerfile"**, Text einfügen und speichern.

**3.** Das Docker-Image muss dann  mit dem [Dockerfile](Dockerfile) gebaut werden und noch im gleichen Befehl kann man den Container starten: **"docker build -t mein-apache** .
**docker run -d -p 8080:80 --name webserver -v $(pwd)/logs:/usr/local/apache2/logs mein-apache"**

**4.** Danach kann man im Portainer schauen ob die Container **"mein-container"** & **"webserver"** erstellt worden sind und funktionieren.

**5.** Zum Schluss kann man im Browser der VM testen ob man auf die Webseite gelangt: **http://localhost:8080/**

**6.** Wenn mann erfolgreich auf die Webseite gelangen konnte, wäre es nun möglich die Logs anzuschauen. [Mehr dazu bei Logfiles.](Logfiles)
