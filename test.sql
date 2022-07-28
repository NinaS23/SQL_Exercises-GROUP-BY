--- exercise 1 

query(`
SELECT 
    COUNT(e."endDate") AS currentExperiences
FROM experiences e ;

`)

--exercise 2
query(`
SELECT 
    e."userId" AS id,
    COUNT(e."userId") AS experiences
FROM experiences e
    GROUP BY e."userId"
`)