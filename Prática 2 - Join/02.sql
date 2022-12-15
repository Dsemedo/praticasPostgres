SELECT testimonials.id, usersW.name AS writer, usersR.name AS recipient, testimonials.message 
FROM testimonials 
JOIN users AS usersW 
ON testimonials."writerId" = usersW.id 
JOIN users AS usersR 
ON testimonials."recipientId" = usersR.id;

