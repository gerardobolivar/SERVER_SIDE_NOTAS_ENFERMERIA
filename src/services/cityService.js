class cityService {
  ConsultAllCities(connection) {
    return new Promise((resolve, reject) => {
      connection.query("SELECT * FROM city where name = 'San José'", (err, result) => { //Must be a stored procedure
        if (err) reject(err);
        resolve(result);
      });
    });
  }
}

module.exports = cityService;
