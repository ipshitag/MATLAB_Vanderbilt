%{ 
A function to calculate fare, which is calculated as follows:
1st km = $5
every next = $2
every waiting minute = $0.25
once a km starts and minute starts it is taken as a whole number
}

function fare_calc = taxi_fare(d,t)
    d = ceil(d);
    t = ceil(t)
    fare_calc = 5 + (d-1)*2 + t*0.25;
end
