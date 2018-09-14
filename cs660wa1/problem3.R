# initialize tables

eids <- sample.int(1000,10)
emp <- data.frame(eid = eids,
                  ename = c("Jones", "Montana", "Farve", "Manning", "Wilson",
                            "Elway", "Flacco", "Cutler", "Rodgers", "Manning"),
                  age = sample.int(60, 10) + 18,
                  salary = runif(10) * 1000000)

dids <- sample.int(10, 5)
works <- data.frame(eid = rep(eids,2),
                    did = rep(dids, 4),
                    pct_time = c(seq(5, 95, 10),
                                 seq(95, 5, -10))
                    )

# Dept(did: integer, dname: string, budget: real, managerid: integer)
dept <- data.frame(did = dids,
                   dname = c("Accounting", "Sales", "Human Resources",
                             "Customer Service", "Quality Control"),
                   budget = c(1000000.41, 30.41, 4990000.00,
                              400000.58, 10000.01),
                   managerid = sample(eids, 5))

write.table(emp, "Emp.csv",
            row.names = F,
            col.names = T)
write.table(works, "Works.csv",
            row.names = F,
            col.names = T)
write.table(dept, "Dept_p3.csv",
            row.names = F,
            col.names = T)