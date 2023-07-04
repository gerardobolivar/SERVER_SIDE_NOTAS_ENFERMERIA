const express = require("express");
const router = express.Router();
const cityHandler = require("../controller/cityHandler");

router.get("/", (req, res, next) => {
  const cityHandlerInstance = new cityHandler();
  req.getConnection((err, connection) => {
    if (err) return next(err);
    cityHandlerInstance
      .ConsultAllCities(connection)
      .then((cities) => {
        res.json(cities);
      })
      .catch((err) => {
        return next(err);
      });
  });
});

module.exports = router;
