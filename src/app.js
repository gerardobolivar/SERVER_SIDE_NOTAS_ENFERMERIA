const express = require("express");
const app = express();
const mysql = require("mysql2");
const myConnection = require("express-myconnection");
const dbOptions = require("./config/dataBaseConfig");
const cityRouter = require("./routes/cityRouter");
const personaRouter = require("./routes/personaRouter");
const pacienteRouter = require("./routes/pacienteRouter");
const notaRouter = require("./routes/notaRouter");
const signosVitalesRouter = require("./routes/signosVitalesRouter");


app.use(express.json()); //This is the middleware that will handle the JSON requests
app.use(myConnection(mysql, dbOptions, "single")); //This is the middleware that will handle the connection to the database

app.use("/cities", cityRouter);
app.use("/persona", personaRouter);
app.use("/paciente", pacienteRouter);
app.use("/nota", notaRouter);
app.use("/signos", signosVitalesRouter);



app.get("/", (req, res) => {
  res.send("Hello World!");
});

app.listen(3001, () => {
  console.log("Listening on port 3001");
  //Test the connection, this should be erased later
});