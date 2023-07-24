require "json"
#JSON stands for JavaScript Object Notation and is a way of serializing data so you can access it later. 
str = {"name": "cheems", "location": "Princeton"}
JSON.parse(str) #returns ruby object with everything parsed

#JSON.dump(some_hash) #JSON string representation of the hash

#load(<string or file>) 

