var express = require('express');
var app = express();
app.use(express.static(__dirname + "/HTML"))
app.use('/CSS',express.static(__dirname + "/CSS"))
app.use('/images',express.static(__dirname + "/images"))
app.listen(5000,function()
{
	console.log("site_web server is running")
});