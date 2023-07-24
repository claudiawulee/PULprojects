#YAML = Yet another Markup Language 
#plain text format

require 'yaml'
my_hash = {name: "Claudia", email: "claudialee@princeton.edu"}
puts YAML.dump(my_hash) #returns string represenation 
# puts YAML.load_file("example.yml")
people = YAML.load_file("example.yml") #stores yml file
str = people.to_yaml
back_to_yaml = YA ML.load(str) #returns ruby object