## Agregado extra en mi pc, que habría que emular en las otras:

Agregué un archivo .pgpass en el home (~) para
que no haya que poner la contraseña siempre que se ejecutan los archivos de conexion a la db

El archivo `~/.pgpass` tiene que tener dentro:

```
127.0.0.1:5432:postgres:postgres:postgres
```

Si no se pone lo anterior, recurrir a la contraseña como variable de entorno dentro del archivo .sh,
funciona igual, aunque no es recomendable
