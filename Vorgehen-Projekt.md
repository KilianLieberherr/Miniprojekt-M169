Als erstes wurde die VM ("LF-2.25" Firewall) und ("LP-22.04_LTS" Linux-Ubuntu) geöffnet.

Danach habe ich im Terminal von Ubuntu ein neues Verzeichnis erstellt und bin in dieses gewechselt:
"mkdir mini-projekt"
"cd mini-projekt"

Im Terminal wurde danach die Datei "index.html" mit dem Befehl "nano index.html" erstellt. Da drin wurde dann der Text der index.html Datei hinzugefügt und gespeichert.
Das gleiche wurde mit dem Dockerfile gemacht: "nano Dockerfile", Text einfügen und speichern.

Das Docker-Image muss dann gebaut werden und noch im gleichen Befehl kann man den Container starten: "docker build -t mein-apache .
docker run -d -p 8080:80 --name webserver -v $(pwd)/logs:/usr/local/apache2/logs mein-apache"

Danach kann man im Portainer schauen ob die Container "mein-container" & "webserver" laufen.

Zum Schluss kann man im Browser der VM testen ob man auf die Webseite gelangt: http://localhost:8080/

Wenn mann erfolgreich auf die Webseite gelangen konnte, wäre es nun möglich die Logs anzuschauen. Mehr dazu bei Logfiles.
