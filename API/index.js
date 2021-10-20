const express = require('express');
const mysql = require('mysql')
const app = express();

app.use(express.json());

const connection = mysql.createConnection({
    host: /* :D */,
    user: /* :D */,
    password: /* :D */,
    database: /* :D */
});
connection.connect();

// Regresa una lista de todas las distintas categorías de servicios
app.get('/categorias', (req, res) => {
    connection.query('SELECT categoria, COUNT(categoria) FROM `dif_huixquilucan`.`servicios` GROUP BY(categoria)', function (err, results, fields) {
        if (err) {
            res.status(500).send('No se puede establecer conexion con base de datos');
        }
        else {
            res.send(results);
        }
    })
});

// Regresa todos los servicios de una categoría
app.get('/categorias/:categoria', (req, res) => {
    connection.query('SELECT * FROM `dif_huixquilucan`.`servicios` WHERE categoria = ?', [req.params.categoria], (err, results, fields) => {
        if (err) {
            res.status(500).send('No se puede establecer conexion con base de datos');
        }
        else {
            res.send(results);
        }
    })
});

// Regresa una lista de todos los servicios
// app.get('/servicios', (req, res) => {
//     connection.query('SELECT idServicio, nombre, descripcion FROM `dif_huixquilucan`.`servicios`', function (err, results, fields) {
//         if (err) {
//             res.status(500).send('No se puede establecer conexion con base de datos');
//         }
//         else {
//             res.send(results);
//         }
//     })
// });

// Regresa la información de un servicio
app.get('/servicios/:id', (req, res) => {
    connection.query('SELECT * FROM `dif_huixquilucan`.`servicios` WHERE idServicio = ?', [req.params.id], function (err, results, fields) {
        if (err) {
            res.status(500).send('No se puede establecer conexion con base de datos o ID solicitado no se encuentra');
        }
        else {
            res.send(results);
        }
    })
});

// Regresa la información de todas las ubicaciones asociadas a un servicio
app.get('/ubicaciones/:id', (req, res) => {
    connection.query(`
        SELECT ubicaciones.* 
        FROM ubicaciones
        JOIN serviciosUbicaciones USING (idUbicacion)
        WHERE serviciosUbicaciones.idServicio = ?
    `, [req.params.id], function (err, results, fields) {
        if (err) {
            res.status(500).send('No se puede establecer conexion con base de datos o ID solicitado no se encuentra');
        }
        else {
            res.send(results);
        
}
console.log(results);
    })
});

// Regresa la información de todos los horarios disponibles para un servicio
app.get('/horarios/:id', (req, res) => {
    connection.query('SELECT * FROM `horariosServicios` WHERE idServicio = ?', [req.params.id], function (err, results, fields) {
        if (err) {
            res.status(500).send('No se puede establecer conexion con base de datos o ID solicitado no se encuentra');
        }
        else {
            res.send(results);
        }
    })
});

// Inserta una nueva reservación
app.post('/reservacion', (req, res) => {
    const nombre = req.body.nombre;
    const edad = req.body.edad;
    const correo = req.body.correo;
    const telefono = req.body.telefono;
    const fecha = req.body.fecha;
    const idServicio = req.body.idServicio;
    
    connection.query('INSERT INTO `reservaciones` SET ?', {nombre, edad, correo, telefono, fecha, idServicio}, function (err, results, fields) {
        if (err) {
            console.log(err);
            res.status(500).send('No se puede establecer conexion con base de datos');
        }
        else {
            res.send(results);
        }
    })
})

// PORT
const port = 3000;
const host = "0.0.0.0"
app.listen(port, host, () => console.log(`Listening on port ${port}...`));
