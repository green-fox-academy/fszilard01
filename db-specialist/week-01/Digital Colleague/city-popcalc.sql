SELECT
    COUNT(*) AS cnt_all,
    COUNT(LatestRecordedPopulation) AS cnt_pop,
    MAX(LatestRecordedPopulation) AS max_pop,
    MIN(LatestRecordedPopulation) AS min_pop,
    SUM(LatestRecordedPopulation) AS sum_pop,
    AVG(LatestRecordedPopulation) AS avg_pop
FROM Application.Cities;
