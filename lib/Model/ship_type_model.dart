enum ShipType { 
  sky('sky', "https://www.ncl.com/cms-service/cruise-ships/SKY"), 
  bliss('bliss', "https://www.ncl.com/cms-service/cruise-ships/BLISS"), 
  escape('escape', "https://www.ncl.com/cms-service/cruise-ships/ESCAPE"); 
  
  final String name, url;
  const ShipType(this.name, this.url);
}
