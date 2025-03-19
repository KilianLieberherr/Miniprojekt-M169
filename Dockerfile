FROM httpd:latest

# Kopiere den Inhalt der Webseite in das Standard-Webverzeichnis von Apache
COPY index.html /usr/local/apache2/htdocs/

# Erstelle ein Verzeichnis für Logs
RUN mkdir -p /usr/local/apache2/logs

# Exponiere den Port 8080
EXPOSE 8080

# Starte Apache im Vordergrund
CMD ["httpd", "-D", "FOREGROUND"]
