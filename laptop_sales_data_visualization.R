laptop.df<-read.csv("LaptopSales.csv", header=TRUE)
dim(laptop.df)
summary(laptop.df)#data types for each variable are what I expected. I did learn that numeric has decimals and integers a whole numbers
#finding any missing data
anyNA(laptop.df$Date, recursive = FALSE)
anyNA(laptop.df$Configuration, recursive = FALSE)
anyNA(laptop.df$Customer.Postcode, recursive = FALSE)
anyNA(laptop.df$Store.Postcode, recursive = FALSE)
anyNA(laptop.df$Retail.Price, recursive = FALSE)
anyNA(laptop.df$Screen.Size..Inches., recursive = FALSE)
anyNA(laptop.df$Battery.Life..Hours., recursive = FALSE)
anyNA(laptop.df$RAM..GB., recursive = FALSE)
anyNA(laptop.df$Processor.Speeds..GHz., recursive = FALSE)
anyNA(laptop.df$Integrated.Wireless., recursive = FALSE)
anyNA(laptop.df$HD.Size..GB., recursive = FALSE)
anyNA(laptop.df$Bundled.Applications., recursive = FALSE)
anyNA(laptop.df$customer.X, recursive = FALSE)
anyNA(laptop.df$customer.Y, recursive = FALSE)
anyNA(laptop.df$store.X, recursive = FALSE)
anyNA(laptop.df$store.Y, recursive = FALSE)
#It looks like there is a missing values in retail price, store.X and store.Y
summary(laptop.df$Retail.Price)
#shows the means as distribution and that there are 13443 records with NAs
View(laptop.df)
#The retail prices don't seem to vary much from store to store. However, store CR& 8LE seems to bethe most costly
#it doesn't appear the prices vary much depending on if it has integrated wireless
plot(laptop.df$Retail.Price~laptop.df$Screen.Size..Inches., xlab="Retail Price", ylab="Screen Size")
plot(laptop.df$Retail.Price ~ laptop.df$Battery.Life..Hours., xlab="Retail Price", ylab="Battery Life")
plot(laptop.df$Retail.Price ~ laptop.df$RAM..GB., xlab="Retail Price", ylab="RAM")
plot(laptop.df$Retail.Price ~ laptop.df$Processor.Speeds..GHz., xlab="Retail Price", ylab="Processor Speed")
plot(laptop.df$Retail.Price ~ laptop.df$HD.Size..GB., xlab="Retail Price", ylab="HD Size")
plot(laptop.df$Retail.Price ~ laptop.df$Configuration, xlab="Retail Price", ylab="Configuration")
#based on these scatterplots I think configuration makes the biggest difference in retail price
