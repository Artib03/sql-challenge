--question 7 (employees in the sales and development departments)


--question 8 (frequency counts of the employees)
select "Employees".last_name
, count("Employees".emp_no) as "lastname_count"
FROM "Employees"
GROUP by "Employees".last_name
order by "lastname_count" desc

