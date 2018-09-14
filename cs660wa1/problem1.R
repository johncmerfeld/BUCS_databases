# initialize supplier table
sids <-  sample.int(10000, 5)
suppliers = data.frame(sid = sids,
                       sname = c("Laura's Part Store",
                                 "Parts R Us",
                                 "Partazon.com",
                                 "eParts",
                                 "Sammy's Discount Parts"),
                       address = c("First & Main",
                                   "Just off I-94",
                                   "www.partazon.com",
                                   "www.eparts.com/parts",
                                   "Out past the old Hawkins house"))
                       ))

# initialize parts table
pids = sample.int(100,14)
parts <- data.frame(pid = pids,
                    pname = c("Wrench", "Big Wrench", "Really Big Wrench",
                              "Sprocket", "Car Horn", "One Headlight",
                              "Brake Pads", "Cushions", "Cup Holder",
                              "Boot", "Nuts", "Bolts",
                              "All Four Shocks", "One Tail Fin"),
                    color = c("red", "green", "blue", "yellow",
                              "red", "green", "blue", "yellow",
                              "red", "green", "pink", "blue",
                              "yellow", "pink"))

# initalize random links
csid <- c()
cpid <- c()
cprice <- c()

# randomly link suppliers with parts
for (i in 1:50) {
  csid[i] <- sample(sids, 1)
  cpid[i] <- sample(pids, 1)
  cprice[i] <- runif(1) * 10 * runif(1) * 10 * runif(1) * 10
}

catalog <- data.frame(sid = csid,
                      pid = cpid,
                      price = cprice)

# write tables Suppliers, Parts, Catalog to CSV

write.table(suppliers, "Suppliers.csv",
            row.names = F,
            col.names = T)

write.table(parts, "Parts.csv",
            row.names = F,
            col.names = T)

write.table(catalog, "Catalog.csv",
            row.names = F,
            col.names = T)