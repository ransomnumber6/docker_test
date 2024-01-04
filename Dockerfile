FROM httpd:latest

RUN useradd -r -u 1001 -g www-data myuser

RUN chown -R myuser:www-data /usr/local/apache2

# Copy Test Page
COPY html/index.html /usr/local/apache2/htdocs/

RUN chmod u+x /usr/local/apache2/htdocs/index.html

EXPOSE 8080

USER myuser

# # Start Apache
# CMD ["httpd-foreground"]