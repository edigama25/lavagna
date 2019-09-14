java -Ddatasource.dialect=MYSQL \
-Ddatasource.url=jdbc:mysql://sqlsrv:3306/lavagna \
-Ddatasource.username=root \
-Ddatasource.password=root \
-Dspring.profile.active=dev \
-jar ./target/lavagna-jetty-console.war
