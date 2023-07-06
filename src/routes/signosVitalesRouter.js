const express = require("express");
const router = express.Router();
const signosVitalesHandler = require("../controller/signosVitalesHandler");

router
  .get("/listar/:page", (req, res, next) => {
    const signosVitalesHandlerInstance = new signosVitalesHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      signosVitalesHandlerInstance
        .listarSignosVitales(connection, req.params.page)
        .then((signosVitales) => {
          res.json(signosVitales);
        })
        .catch((err) => {
          return next(err);
        });
    });
  })
  .get("/consultar/:cedula", (req, res, next) => {
    const signosVitalesHandlerInstance = new signosVitalesHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      signosVitalesHandlerInstance
        .consultarSignosVitales(connection, req.params.cedula)
        .then((signosVitales) => {
          res.json(signosVitales);
        })
        .catch((err) => {
          return next(err);
        });
    });
  })
  .get("/consultar/:cedula/:idsignos", (req, res, next) => {
    const signosVitalesHandlerInstance = new signosVitalesHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      signosVitalesHandlerInstance
        .consultarSignosVitalesUnico(
          connection,
          req.params.cedula,
          req.params.idsignos
        )
        .then((signosVitales) => {
          res.json(signosVitales);
        })
        .catch((err) => {
          return next(err);
        });
    });
  })
  .post("/insertar", (req, res, next) => {
    const signosVitalesHandlerInstance = new signosVitalesHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      signosVitalesHandlerInstance
        .insertarSignosVitales(connection, req.body)
        .then((signosVitales) => {
          res.json(signosVitales);
        })
        .catch((err) => {
          return next(err);
        });
    });
  })
  .put("/actualizar", (req, res, next) => {
    const signosVitalesHandlerInstance = new signosVitalesHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      signosVitalesHandlerInstance
        .actualizarSignosVitales(connection, req.body)
        .then((signosVitales) => {
          res.json(signosVitales);
        })
        .catch((err) => {
          return next(err);
        });
    });
  }).delete("/eliminar/:cedula/:idsignos", (req, res, next) => {
    const signosVitalesHandlerInstance = new signosVitalesHandler();
    req.getConnection((err, connection) => {
      if (err) return next(err);
      signosVitalesHandlerInstance
        .eliminarSignosVitales(connection, req.params.cedula, req.params.idsignos)
        .then((signosVitales) => {
          res.json(signosVitales);
        })
        .catch((err) => {
          return next(err);
        });
    });
  });
  

module.exports = router;
