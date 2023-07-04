class city {
  constructor(cityId, cityName, countryCode, district, population) {
    this.cityId = cityId;
    this.cityName = cityName;
    this.countryCode = countryCode;
    this.district = district;
    this.population = population;
  }
}

module.exports = city;

//This is sample on how model classes should be created