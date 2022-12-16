SELECT jobs.salary as "maximumSalaray", roles.name AS role FROM jobs JOIN roles ON jobs."id" = roles.id ORDER BY jobs.salary DESC;
