covid_19_data <- read.csv("C:/Users/vinee/OneDrive/Desktop/corona/covid_19_data.csv")
attach(covid_19_data)
View(covid_19_data)
summary(covid_19_data)

country <- aggregate(Confirmed, by=list(Country.Region, ObservationDate), FUN = sum)
View(country)
write.csv(country, 'country.csv')
attach(country)

survived <- aggregate(Recovered, by=list(Country.Region, ObservationDate), FUN = sum)
View(survived)

total_country <- subset(country, Group.2 == "03/22/2020")
View(total_country)
write.csv(total_country, 'total_cases.csv')

colnames(country)
colnames(covid_19_data)

china <- subset(country, Group.1 == "Mainland China")
View(china)
attach(china)

