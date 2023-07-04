const express = require("express");
const app = express();
const mysql = require("mysql2");
const myConnection = require("express-myconnection");
const dbOptions = require("./config/dataBaseConfig");
const cityRouter = require("./routes/cityRouter");


app.use(express.json()); //This is the middleware that will handle the JSON requests
app.use(myConnection(mysql, dbOptions, "single")); //This is the middleware that will handle the connection to the database

app.use("/cities", cityRouter);



app.get("/", (req, res) => {
  res.send("Hello World!");
});

app.listen(3000, () => {
  console.log("Listening on port 3000");
  //Test the connection, this should be erased later
});