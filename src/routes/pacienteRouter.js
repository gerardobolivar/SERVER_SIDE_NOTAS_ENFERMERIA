const express = require("express");
const router = express.Router();
const pacienteHandler = require("../controller/pacienteHandler");

router
  .get("/listar/:page", (req, res, next) => {
    const pacienteHandlerInstance = new pacienteHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      pacienteHandlerInstance
        .listarPacientes(connection, req.params.page)
        .then((pacientes) => {
          res.json(pacientes);
        })
        .catch((err) => {
          return next(err);
        });
    });
  })
  .get("/consultar/:cedula", (req, res, next) => {
    const pacienteHandlerInstance = new pacienteHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      pacienteHandlerInstance
        .consultarPaciente(connection, req.params.cedula)
        .then((pacientes) => {
          res.json(pacientes);
        })
        .catch((err) => {
          return next(err);
        });
    });
  })
  .post("/insertar", (req, res, next) => {
    const pacienteHandlerInstance = new pacienteHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      pacienteHandlerInstance
        .insertarPaciente(connection, req.body)
        .then((pacientes) => {
          res.json(pacientes);
        })
        .catch((err) => {
          return next(err);
        });
    })
  })
  .put("/modificar", (req, res, next) => {
    const pacienteHandlerInstance = new pacienteHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      pacienteHandlerInstance
        .modificarPaciente(connection, req.body)
        .then((pacientes) => {
          res.json(pacientes);
        })
        .catch((err) => {
          return next(err);
        })
    })
  })
  .delete('/eliminar/:cedula', (req, res, next) => {
    const pacienteHandlerInstance = new pacienteHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      pacienteHandlerInstance
        .eliminarPaciente(connection, req.params.cedula)
        .then((pacientes) => {
          res.json(pacientes);
        })
        .catch((err) => {
          return next(err);
        })
    })
  });


module.exports = router;