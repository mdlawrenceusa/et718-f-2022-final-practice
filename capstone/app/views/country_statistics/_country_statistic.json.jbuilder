json.extract! country_statistic, :id, :name, :mobilephones, :mortalityunder5, :healthexpenditurepercapita, :healthexpenditureppercentGDP, :population, :populationurban, :birthrate, :lifeexpectancy, :GDP, :created_at, :updated_at
json.url country_statistic_url(country_statistic, format: :json)
