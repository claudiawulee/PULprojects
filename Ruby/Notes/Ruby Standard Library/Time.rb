time = Time.new
puts time.hour
puts time.month
puts time.hour
puts time.min
puts time.sec
puts time.monday?
puts time.month
puts time.day

time1 = Time.new(2014,7,1,12,0,0,"-04:00")
time2 = Time.new(2014,7,1,11,0,0,"-05:00")
puts time1 == time2 #same time in different timezones

#there is also daylight savings methind 
time.utc


