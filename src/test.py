import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import plotly.express as px


pd.set_option('display.max_columns', None)  # or 1000
pd.set_option('display.max_rows', None)  # or 1000
pd.set_option('display.max_colwidth', -1)


total_cases = pd.read_csv("total_cases.csv")
#print(covid_19.columns)
total_cases = total_cases.sort_values(by = ["x"], ascending = False)
#print(covid_19)

#bar chart of top 10 countries with cases of corona virus
#fig = px.bar(total_cases[:10], x= "Group.1", y ="x")
#fig.show()

country_df = pd.read_csv("country.csv")
#print(country_df.columns)

#line graph to show rate of infection in countries
fig = px.line(country_df, x = "Group.2", y = "x", color = "Group.1")
fig.show()

covid_19 = pd.read_csv("covid_19_data.csv")
#print(covid_19.columns)
#test = covid_19.groupby(["Country/Region"]).Confirmed.sum().reset_index()
#print(test)

no_cases = 400964
deaths = 17480
recovered = 103750
not_closed = no_cases - deaths - recovered

#print(not_closed)

stats = pd.read_csv("Book1.csv")
stats = stats[1:4]
fig = px.pie(stats, values = "number", color = "title", names = "title", width = 800, height = 800)
fig.show()
