install.packages("sqldf")
library("sqldf")
employees=read.csv(file.choose(),sep=',')
View(employees)
orders=read.csv(file.choose(),sep=',')
View(orders)

# select all emplyees info.

details=sqldf("Select * from employees")
View(details)

#select all employee that are male

emp_male=sqldf("Select * from employees where gender='m'")
View(emp_male)


#get a coount by frst name

emp_count_firstname=sqldf("Select firstname, Count(firstname) from employees group by firstname" )
View(emp_count_firstname)

emp_count_firstname=sqldf("Select firstname, Count(firstname) as times from employees group by firstname" )
View(emp_count_firstname)

emp_count_firstname=sqldf("Select firstname, Count(firstname) as times from employees where firstname!='drew' group by firstname" )
View(emp_count_firstname)

#orderby clause by default ascending order

emp_count_firstname=sqldf("Select firstname, Count(firstname) as times from employees where firstname!='drew' group by firstname order by times desc" )
View(emp_count_firstname)

emp_count_firstname=sqldf("Select firstname, Count(firstname) as times from employees where firstname!='drew' group by firstname order by count(firstname)" )
View(emp_count_firstname)

#adding new column

add_col=sqldf("select firstname,lastname,id*1000 as sal from employees")
View(add_col)

add_col=sqldf("select firstname,lastname,id+gender as Newsal from employees")
View(add_col)

add_col=sqldf("select firstname,lastname,(id*0.5) as Newsal from employees")
View(add_col)


add_col=sqldf("select firstname,lastname,ceil(id*0.5) as Newsal from employees")
View(add_col)



emp_cali=sqldf("Select * ,CASE
               WHEN lower(firstname)='stewart' THEN 1
               WHEN lower(firstname)='hila' THEN 1
              WHEN lower(firstname)='jon' THEN 1
              WHEN lower(firstname)='solon' THEN 1
              ELSE 0
              END as cali_emp
              from employees
               " )
View(emp_cali)

#sort
emp_cali=sqldf("Select * ,CASE
               WHEN lower(firstname)='stewart' THEN 1
               WHEN lower(firstname)='hila' THEN 1
              WHEN lower(firstname)='jon' THEN 1
              WHEN lower(firstname)='solon' THEN 1
              ELSE 0
              END as cali_emp
              from employees Order by cali_emp DESC,firstname
               " )
View(emp_cali)

#multiple table data reading

left_join=sqldf("select * from employees a LEFT JOIN orders b ON a.id=b.id ")
View(left_join)


left_join=sqldf("select * from employees a LEFT JOIN orders b ON a.id=b.id where forstname!='rudi'")
View(left_join)


# left_join=sqldf("select * from employees a RIGHT JOIN orders b ON a.id=b.id ")
# View(left_join)

#the above code will give error as right join is not supported on sqldf so to overcome it we can switch the name of table in left join

left_join=sqldf("select * from  orders b LEFT JOIN employees a ON a.id=b.id ")
View(left_join)

#instead of ON if u ri8 where then natural join

left_join=sqldf("select * from  orders b LEFT JOIN employees a WHERE a.id=b.id ")
View(left_join)

left_join=sqldf("select * from  orders b , employees ") #cross join
View(left_join)


inner_join=sqldf("select * from employees a, orders b where a.id=b.id") #we can use inner join but we have to use on 

#items less than 10 dollars, sorted by lowest cost

inexpensive_items=sqldf("Select * from orders a left join employees b ON a.id=b.id WHERE 
                        item_cost<10 order by item_cost")
View(inexpensive_items)

inexpensive_items=sqldf("Select * from orders a , employees b ON a.id=b.id WHERE 
                        item_cost<10 order by item_cost")
View(inexpensive_items)



#figure out who spent less than 20$ on any type of food

inexpensive_line_items=sqldf("select * ,(item_cost*quantity_ordered) as item_level_cost from orders a left join 
                             employees b ON a.id=b.id WHERE item_level_cost>20
                             order by item_level_cost")
View(inexpensive_line_items)


# Group by to get total and having instead of where clause

launch_under_30=sqldf("Select a.id,lastname,firstname,SUM(item_cost*quantity_ordered) as launch_cost from orders a left join 
                      employees b ON a.id=b.id Group by a.id  having launch_cost<0")

# if we use where then gives error as sum is used as aggregate sum 
#group by works with having clause
# correlated and simple= 1st ineer then outer and viseversa for correlated


citation("sqldf")












































