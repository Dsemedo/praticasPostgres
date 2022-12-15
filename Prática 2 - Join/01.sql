SELECT users.name, users.id, cities.name
 FROM users 
 JOIN cities 
 ON users."cityId" = cities.id 
 WHERE cities.name = 'Rio de Janeiro';
