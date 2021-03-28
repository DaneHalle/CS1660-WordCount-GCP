FROM httpd:2.4
COPY ./public-html/ /usr/local/apache2/htdocs/
WORKDIR /usr/src/myapp
RUN javac *.java
CMD ["java", "WordCount"]