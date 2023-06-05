--4th part

--4.1
SELECT stop_name
FROM Routes JOIN Trips ON Routes.routes_id = Trips.route_id_trips  
            JOIN Stop_times ON Trips.trips_id = Stop_times.trip_id_stop_t
            JOIN Stops ON Stop_times.stop_id_times = Stops.stop_id
WHERE routes_id = 3 AND trips_id = 101010;

--4.2
SELECT departure_time
FROM Trips JOIN Routes ON Trips.route_id_trips = Routes.routes_id
           JOIN Service ON Trips.trips_id = Service.trips_id_service
           JOIN Calendar ON Service.service_id = calendar.service_days_id
           JOIN Stop_times ON Trips.trips_id = Stop_times.trip_id_stop_t
WHERE trips_id = 101010
AND routes_id = 3
AND days = 'Kiriakes/Argies'
AND stop_id_times = 005;

--4.3
SELECT COUNT (stop_name) AS Number_of_Stops, trips_id, routes_id
FROM Routes JOIN Trips ON Routes.routes_id = Trips.route_id_trips  
            JOIN Stop_times ON Trips.trips_id = Stop_times.trip_id_stop_t
            JOIN Stops ON Stop_times.stop_id_times = Stops.stop_id
GROUP BY routes_id, trips_id; 

--4.4
SELECT stop_name, trips_id, routes_id
FROM Trips JOIN Stop_times ON Trips.trips_id = Stop_times.trip_id_stop_t
           JOIN Stops ON Stop_times.stop_id_times = Stops.stop_id
           JOIN Routes ON Trips.route_id_trips = Routes.routes_id
           JOIN Service ON Trips.trips_id = Service.trips_id_service
           JOIN Calendar ON Service.service_id = calendar.service_days_id
WHERE stop_name = 'Stop011' 
AND days = 'Kiriakes/Argies';

--4.5
SELECT  trips_short_name, agency_id
FROM Routes JOIN Agency ON Routes.agency_id_route = Agency.agency_id
            JOIN Trips ON Routes.routes_id = Trips.route_id_trips
WHERE trips_short_name = 'Kifisia - Neo Irakleio';             

