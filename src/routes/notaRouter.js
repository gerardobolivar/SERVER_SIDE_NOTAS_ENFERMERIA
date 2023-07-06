const express = require("express");
const router = express.Router();
const notaHandler = require("../controller/notaHandler");

router
  .get("/listarGeneral/:page", ((req, res, next) => {
    const notaHandlerInstance = new notaHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      notaHandlerInstance
        .listarNotasGeneral(connection, req.params.page)
        .then((notas) => {
          res.json(notas);
        })
        .catch((err) => {
          return next(err);
        });
    });
  }))
  .get("/listar/:cedula", ((req, res, next) => {
    const notaHandlerInstance = new notaHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      notaHandlerInstance
        .listarNotas(connection, req.params.cedula)
        .then((notas) => {
          res.json(notas);
        })
        .catch((err) => {
          return next(err);
        });
    });
  }))
  .get("/consultar/:cedula/:idnota", ((req, res, next) => {
    const notaHandlerInstance = new notaHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      notaHandlerInstance
        .consultarNota(connection, req.params.cedula, req.params.idnota)
        .then((notas) => {
          res.json(notas);
        })
        .catch((err) => {
          return next(err);
        });
    });
  }))
  .post("/insertar", ((req, res, next) => {
    const notaHandlerInstance = new notaHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      notaHandlerInstance
        .insertarNotas(connection, req.body)
        .then((notas) => {
          res.json(notas);
        })
        .catch((err) => {
          return next(err);
        });
    });
  }))
  .put("/modificar", ((req, res, next) => {
    const notaHandlerInstance = new notaHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      notaHandlerInstance
        .modificarNotas(connection, req.body)
        .then((notas) => {
          res.json(notas);
        })
        .catch((err) => {
          return next(err);
        });
    });
  }))
  .delete("/eliminar/:cedula/:idnotas", ((req, res, next) => {
    const notaHandlerInstance = new notaHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      notaHandlerInstance
        .eliminarNotas(connection, req.params.cedula, req.params.idnotas)
        .then((notas) => {
          res.json(notas);
        })
        .catch((err) => {
          return next(err);
        });
    });
  }))


module.exports = router;