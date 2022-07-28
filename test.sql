--- exercise 1 

query(`
SELECT 
    COUNT(e."endDate") AS currentExperiences
FROM experiences e;

`)

--exercise 2
query(`
SELECT 
    e."userId" AS id,
    COUNT(e."userId") AS educations
FROM educations e
    GROUP BY e."userId";
`)

--exercise 3 
query(`
SELECT 
   u.name AS writer,
   COUNT(t."recipientId") AS testimonailCount
FROM testimonials t
    JOIN users u ON u.id = t."writerId"
    WHERE u.id=435
    GROUP BY u.name
`)

--exercise 4
query(`
SELECT 
    MAX(salary) AS maximumSalary,
    r.name AS role
FROM  jobs j
    JOIN role r ON r.id = j."roleId"
    WHERE j.active = true
    GROUP BY r.id
    ORDER BY maximumSalary ASC;
`)