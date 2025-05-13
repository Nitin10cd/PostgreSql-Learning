SELECT fname , salary , SUM(salary) OVER(ORDER BY salary) FROM employees;
SELECT fname , salary , AVG(salary) OVER(ORDER BY salary) FROM employees;

SELECT ROW_NUMBER() OVER() ,fname , salary  FROM employees;
SELECT ROW_NUMBER() OVER(PARTITION BY dept) ,fname ,dept, salary  FROM employees;




SELECT 
    fname,
    dept,
    salary,

    -- Cumulative sum and average over all employees ordered by salary
    SUM(salary) OVER (ORDER BY salary) AS cumulative_sum,
    AVG(salary) OVER (ORDER BY salary) AS cumulative_avg,

    -- Row numbers
    ROW_NUMBER() OVER () AS global_row_number,
    ROW_NUMBER() OVER (PARTITION BY dept ORDER BY salary DESC) AS dept_row_number,

    -- Ranking
    RANK() OVER (PARTITION BY dept ORDER BY salary DESC) AS dept_rank,
    DENSE_RANK() OVER (PARTITION BY dept ORDER BY salary DESC) AS dept_dense_rank,

    -- NTILE divides rows into buckets (here 3 groups)
    NTILE(3) OVER (ORDER BY salary DESC) AS salary_tile,

    -- LAG/LEAD to show previous and next employee salary
    LAG(salary) OVER (ORDER BY salary) AS previous_salary,
    LEAD(salary) OVER (ORDER BY salary) AS next_salary,

    -- First and last salary in each department
    FIRST_VALUE(salary) OVER (PARTITION BY dept ORDER BY salary DESC) AS dept_top_salary,
    LAST_VALUE(salary) OVER (PARTITION BY dept ORDER BY salary DESC 
                             ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS dept_lowest_salary

FROM employees;
