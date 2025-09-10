SELECT 
    a.matricula_alumno,
    COUNT(*) FILTER (WHERE a.presente = FALSE) AS total_faltas
FROM asistencia a
GROUP BY a.matricula_alumno
ORDER BY total_faltas DESC;
