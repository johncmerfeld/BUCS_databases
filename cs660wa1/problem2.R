# initialize all tables
sids <-  sample.int(100000, 30)
student = data.frame(sid = sids,
                       name = c("Art", "Bal", "Cal", "Delp", "Eore", "Flam", "Gum",
                                "Herl", "Iso", "JJ", "KK", "Lem", "Mel", "Nell",
                                "Oppa", "Phlor", "Quetz", "Rosto", "Stadd", "Tub",
                                "Ub", "Vub", "Wobbo", "Xanxa", "Yip", "Zop", "uno",
                                "doce", "Barack Obama", "McDonald"),
                       age = sample.int(80, 30) + 18,
                       year = rep(c("2000-01-01", "2001-01-01", "2002-01-01"), 10),
                       gpa = runif(30) * 4)

dept <- data.frame(dname = c("Mathematics", "Computer Science", "Recess"),
                   numphds = sample.int(20000, 3))

prof <- data.frame(pname = c("Smith", "Fitzrenaldo", "Venture", "Samson",
                             "Phantomos", "X"),
                   dname = rep(c("Mathematics", "Computer Science", "Recess"), 2))
      
cnos <- sample.int(10,9)            
course <- data.frame(cno = cnos,
                     cname = c("Heavy Lifting", "Learn to Draw", "History of...",
                               "America's Got Talent", "Bowling for Soup", "CS 1",
                               "Art for Kids", "Philosophy on Tuesday", "Outdoors"),
                     dname = rep(c("Mathematics", "Computer Science", "Recess"), 3))   

major <- data.frame(dname = rep(c("Mathematics", "Computer Science", "Recess"), 10),
                    sid = sids)

section <- data.frame(dname = rep(c("Mathematics", "Computer Science", "Recess"), 6),
                      cno = rep(cnos,2),
                      sectno = c(rep(1, 9), rep(2,9)),
                      pname = rep(c("Smith", "Fitzrenaldo", "Venture", "Samson",
                                    "Phantomos", "X"), 3))

enroll <- data.frame(sid = rep(sids, 3),
                     grade = runif(90) * 4,
                     dname = rep(c("Mathematics", "Computer Science", "Recess"), 30),
                     cno = rep(cnos,10),
                     sectno = c(rep(1, 45), rep(2,45))) 

write.table(student, "Student.csv",
            row.names = F,
            col.names = T)
write.table(dept, "Dept_p2.csv",
            row.names = F,
            col.names = T)
write.table(prof, "Prof.csv",
            row.names = F,
            col.names = T)
write.table(course, "Course.csv",
            row.names = F,
            col.names = T)
write.table(major, "Major.csv",
            sep = ",",
            row.names = F,
            col.names = T)
write.table(section, "Section.csv",
            sep = ",",
            row.names = F,
            col.names = T)
write.table(enroll, "Enroll.csv",
            sep = ",",
            row.names = F,
            col.names = T)

