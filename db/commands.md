# Comandos
Para crear el esquema de la base de datos (sin información)
```
mysql -u <usuario> -p < schema.sql
```

Para importar los datos (sin el esquema)
```
mysql -u <usuario> -p < data.sql
```

Para crear base de datos con información (desde el directorio de db)
```
mysql -u <usuario> -p < *.sql
```
