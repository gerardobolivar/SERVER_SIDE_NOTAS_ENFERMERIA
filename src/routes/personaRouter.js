const express = require("express");
const router = express.Router();
const personaHandler = require("../controller/personaHandler");

//The route should indicate the current page
router
  .get("/listar/:page", (req, res, next) => {
    const personaHandlerInstance = new personaHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      personaHandlerInstance
        .listarPersonas(connection, req.params.page)
        .then((personas) => {
          res.json(personas);
        })
        .catch((err) => {
          return next(err);
        });
    });
  })
  .get("/consultar/:cedula", (req, res, next) => {
    const personaHandlerInstance = new personaHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      personaHandlerInstance
        .consultarPersona(connection, req.params.cedula)
        .then((personas) => {
          res.json(personas);
        })
        .catch((err) => {
          return next(err);
        });
    });
  })
  .post("/insertar", (req, res, next) => {
    const personaHandlerInstance = new personaHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      personaHandlerInstance
        .insertarPersona(connection, req.body)
        .then((personas) => {
          res.json(personas);
        })
        .catch((err) => {
          return next(err);
        });
    });
  })
  .put("/actualizar", (req, res, next) => {
    const personaHandlerInstance = new personaHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      personaHandlerInstance
        .actualizarPersona(connection, req.body)
        .then((personas) => {
          res.json(personas);
        })
        .catch((err) => {
          return next(err);
        });
    });
  })
  .delete("/eliminar/:cedula", (req, res, next) => {
    const personaHandlerInstance = new personaHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      personaHandlerInstance
        .eliminarPersona(connection, req.params.cedula)
        .then((personas) => {
          res.json(personas);
        })
        .catch((err) => {
          return next(err);
        });
    });
  });

module.exports = router;
