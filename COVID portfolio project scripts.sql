/*
Covid 19 Data Exploration 
Skills used: Joins, CTE's, Temp Tables, Windows Functions, Aggregate Functions, Creating Views, Converting Data Types
*/

SELECT *
FROM PortfolioProject..CovidDeaths
Where continent is not null 
ORDER BY 3,4

UPDATE PortfolioProject..CovidDeaths SET iso_code = NULL WHERE iso_code=''
UPDATE PortfolioProject..CovidDeaths SET continent = NULL WHERE continent=''
UPDATE PortfolioProject..CovidDeaths SET location = NULL WHERE location=''
UPDATE PortfolioProject..CovidDeaths SET date = NULL WHERE date=''
UPDATE PortfolioProject..CovidDeaths SET population = NULL WHERE population=''
--UPDATE PortfolioProject..CovidDeaths SET total_cases = NULL WHERE total_cases=''
--UPDATE PortfolioProject..CovidDeaths SET new_cases = NULL WHERE new_cases=''
--UPDATE PortfolioProject..CovidDeaths SET new_cases_smoothed = NULL WHERE new_cases_smoothed=''
--UPDATE PortfolioProject..CovidDeaths SET total_deaths = NULL WHERE total_deaths=''
--UPDATE PortfolioProject..CovidDeaths SET new_deaths = NULL WHERE new_deaths=''
--UPDATE PortfolioProject..CovidDeaths SET new_deaths_smoothed = NULL WHERE new_deaths_smoothed=''
--UPDATE PortfolioProject..CovidDeaths SET total_cases_per_million = NULL WHERE total_cases_per_million=''
--UPDATE PortfolioProject..CovidDeaths SET new_cases_per_million = NULL WHERE new_cases_per_million=''
--UPDATE PortfolioProject..CovidDeaths SET new_cases_smoothed_per_million = NULL WHERE new_cases_smoothed_per_million=''
--UPDATE PortfolioProject..CovidDeaths SET total_deaths_per_million = NULL WHERE total_deaths_per_million=''
--UPDATE PortfolioProject..CovidDeaths SET new_deaths_per_million = NULL WHERE new_deaths_per_million=''
--UPDATE PortfolioProject..CovidDeaths SET new_deaths_smoothed_per_million = NULL WHERE new_deaths_smoothed_per_million=''
--UPDATE PortfolioProject..CovidDeaths SET reproduction_rate = NULL WHERE reproduction_rate=''
--UPDATE PortfolioProject..CovidDeaths SET icu_patients = NULL WHERE icu_patients=''
--UPDATE PortfolioProject..CovidDeaths SET icu_patients_per_million = NULL WHERE icu_patients_per_million=''
--UPDATE PortfolioProject..CovidDeaths SET hosp_patients = NULL WHERE hosp_patients=''
--UPDATE PortfolioProject..CovidDeaths SET hosp_patients_per_million = NULL WHERE hosp_patients_per_million=''
--UPDATE PortfolioProject..CovidDeaths SET weekly_hosp_admissions = NULL WHERE weekly_hosp_admissions=''
--UPDATE PortfolioProject..CovidDeaths SET weekly_icu_admissions = NULL WHERE weekly_icu_admissions=''
--UPDATE PortfolioProject..CovidDeaths SET weekly_icu_admissions_per_million = NULL WHERE weekly_icu_admissions_per_million=''
--UPDATE PortfolioProject..CovidDeaths SET weekly_hosp_admissions_per_million = NULL WHERE weekly_hosp_admissions_per_million=''

SELECT *
FROM PortfolioProject.dbo.CovidVaccinations
order by 3,4

--UPDATE PortfolioProject..CovidVaccinations SET total_deaths_per_million = NULL WHERE total_deaths_per_million=''
--UPDATE PortfolioProject..CovidVaccinations SET new_deaths_per_million = NULL WHERE new_deaths_per_million=''
--UPDATE PortfolioProject..CovidVaccinations SET total_tests = NULL WHERE total_tests=''
--UPDATE PortfolioProject..CovidVaccinations SET new_tests = NULL WHERE new_tests=''
--UPDATE PortfolioProject..CovidVaccinations SET total_tests_per_thousand = NULL WHERE total_tests_per_thousand=''
--UPDATE PortfolioProject..CovidVaccinations SET new_tests_per_thousand = NULL WHERE new_tests_per_thousand=''
--UPDATE PortfolioProject..CovidVaccinations SET new_tests_smoothed = NULL WHERE new_tests_smoothed=''
--UPDATE PortfolioProject..CovidVaccinations SET new_tests_smoothed_per_thousand = NULL WHERE new_tests_smoothed_per_thousand=''
--UPDATE PortfolioProject..CovidVaccinations SET positive_rate = NULL WHERE positive_rate=''
--UPDATE PortfolioProject..CovidVaccinations SET tests_per_case= NULL WHERE tests_per_case=''
--UPDATE PortfolioProject..CovidVaccinations SET tests_units = NULL WHERE tests_units=''
--UPDATE PortfolioProject..CovidVaccinations SET total_vaccinations = NULL WHERE total_vaccinations=''
--UPDATE PortfolioProject..CovidVaccinations SET people_vaccinated = NULL WHERE people_vaccinated=''
--UPDATE PortfolioProject..CovidVaccinations SET people_fully_vaccinated = NULL WHERE people_vaccinated=''
--UPDATE PortfolioProject..CovidVaccinations SET total_boosters = NULL WHERE total_boosters=''
--UPDATE PortfolioProject..CovidVaccinations SET new_vaccinations = NULL WHERE new_vaccinations=''
--UPDATE PortfolioProject..CovidVaccinations SET new_vaccinations_smoothed = NULL WHERE new_vaccinations_smoothed=''
--UPDATE PortfolioProject..CovidVaccinations SET total_vaccinations_per_hundred = NULL WHERE total_vaccinations_per_hundred=''
--UPDATE PortfolioProject..CovidVaccinations SET people_vaccinated_per_hundred = NULL WHERE people_vaccinated_per_hundred=''
--UPDATE PortfolioProject..CovidVaccinations SET people_fully_vaccinated_per_hundred = NULL WHERE people_fully_vaccinated_per_hundred=''
--UPDATE PortfolioProject..CovidVaccinations SET total_boosters_per_hundred = NULL WHERE total_boosters_per_hundred =''
--UPDATE PortfolioProject..CovidVaccinations SET new_vaccinations_smoothed_per_million = NULL WHERE new_vaccinations_smoothed_per_million=''
--UPDATE PortfolioProject..CovidVaccinations SET new_people_vaccinated_smoothed = NULL WHERE new_people_vaccinated_smoothed=''
--UPDATE PortfolioProject..CovidVaccinations SET new_people_vaccinated_smoothed_per_hundred = NULL WHERE new_people_vaccinated_smoothed_per_hundred=''
--UPDATE PortfolioProject..CovidVaccinations SET stringency_index = NULL WHERE stringency_index=''
--UPDATE PortfolioProject..CovidVaccinations SET population_density = NULL WHERE population_density=''
--UPDATE PortfolioProject..CovidVaccinations SET median_age = NULL WHERE median_age=''
--UPDATE PortfolioProject..CovidVaccinations SET aged_65_older = NULL WHERE aged_65_older=''
--UPDATE PortfolioProject..CovidVaccinations SET aged_70_older = NULL WHERE aged_70_older=''
--UPDATE PortfolioProject..CovidVaccinations SET gdp_per_capita = NULL WHERE gdp_per_capita=''
--UPDATE PortfolioProject..CovidVaccinations SET extreme_poverty = NULL WHERE extreme_poverty=''
--UPDATE PortfolioProject..CovidVaccinations SET cardiovasc_death_rate = NULL WHERE cardiovasc_death_rate=''
--UPDATE PortfolioProject..CovidVaccinations SET diabetes_prevalence = NULL WHERE diabetes_prevalence=''
--UPDATE PortfolioProject..CovidVaccinations SET female_smokers = NULL WHERE female_smokers=''
--UPDATE PortfolioProject..CovidVaccinations SET male_smokers = NULL WHERE male_smokers=''
--UPDATE PortfolioProject..CovidVaccinations SET handwashing_facilities = NULL WHERE handwashing_facilities=''
--UPDATE PortfolioProject..CovidVaccinations SET hospital_beds_per_thousand = NULL WHERE hospital_beds_per_thousand=''
--UPDATE PortfolioProject..CovidVaccinations SET life_expectancy = NULL WHERE life_expectancy=''
--UPDATE PortfolioProject..CovidVaccinations SET human_development_index = NULL WHERE human_development_index =''
--UPDATE PortfolioProject..CovidVaccinations SET excess_mortality_cumulative_absolute = NULL WHERE excess_mortality_cumulative_absolute=''
--UPDATE PortfolioProject..CovidVaccinations SET excess_mortality_cumulative = NULL WHERE excess_mortality_cumulative =''
--UPDATE PortfolioProject..CovidVaccinations SET excess_mortality = NULL WHERE excess_mortality=''
--UPDATE PortfolioProject..CovidVaccinations SET excess_mortality_cumulative_per_million = NULL WHERE excess_mortality_cumulative_per_million =''


-- Select Data that we are going to be starting with
SELECT location, date,total_cases, new_cases, total_deaths, population
FROM PortfolioProject..CovidDeaths
Where continent is not null 
ORDER BY 1

-- Total Cases vs Total Deaths
-- Shows likelihood of dying if you contract covid in your country
Select Location, date, total_cases,total_deaths, (cast(total_deaths as decimal)/cast(total_cases as decimal))*100 as DeathPercentage
From PortfolioProject..CovidDeaths
Where location like '%states%'
and continent is not null 
order by 1,2

-- Countries with Highest Infection Rate compared to Population

Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((cast(total_cases as decimal)/cast(population as decimal)))*100 as PercentPopulationInfected
FROM PortfolioProject..CovidDeaths
--Where location like '%states%'
Group by Location, Population
order by PercentPopulationInfected desc

-- Countries with Highest Death Count per population
Select location, MAX(cast(Total_deaths as int)) as TotalDeathCount
From PortfolioProject..CovidDeaths
--Where location like '%states%'
WHERE continent is not null
Group by location
order by TotalDeathCount desc

-- BREAKING THINGS DOWN BY CONTINENT
Select continent, MAX(cast(Total_deaths as int)) as TotalDeathCount
From PortfolioProject..CovidDeaths
--Where location like '%states%'
WHERE continent is not null
Group by continent
order by TotalDeathCount desc

--GLOBAL NUMBERS
Select  SUM(cast(new_cases as int)) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as decimal))/SUM(cast(new_cases as decimal))*100 as DeathPercentage
From PortfolioProject..CovidDeaths
--Where location like '%states%'
where continent is not null 
--group by date
order by 1,2

--Total Population vs Vaccinations
-- Shows Percentage of Population that has recieved at least one Covid Vaccine

SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM(cast(vac.new_vaccinations as decimal) ) OVER (PARTITION BY dea.location order by dea.location, dea.date) as RollingPeopleVaccinated
--, (RollingPeopleVaccinated/population)*100
FROM PortfolioProject..CovidDeaths as dea
join PortfolioProject..CovidVaccinations as vac
on dea.location = vac.location
and dea.date = vac.date
where dea.continent is not null
order by 2,3

-- Using CTE to perform Calculation on Partition By in previous query
WITH PopvsVac( Continent, Loctaion, Date, Population, New_vaccinations, RollingPeopleVaccinated)
AS
(
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM(cast(vac.new_vaccinations as decimal) ) OVER (PARTITION BY dea.location order by dea.location, dea.date) as RollingPeopleVaccinated
--, (RollingPeopleVaccinated/population)*100
FROM PortfolioProject..CovidDeaths as dea
join PortfolioProject..CovidVaccinations as vac
on dea.location = vac.location
and dea.date = vac.date
where dea.continent is not null
)
SELECT *, (RollingPeopleVaccinated/Population)*100
FROM PopvsVac

-- Creating View to store data for later visualizations
DROP VIEW IF EXISTS Popvacc
GO
CREATE VIEW Popvacc 
AS
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM(cast(vac.new_vaccinations as decimal) ) OVER (PARTITION BY dea.location order by dea.location, dea.date) as RollingPeopleVaccinated
--, (RollingPeopleVaccinated/population)*100
FROM PortfolioProject..CovidDeaths as dea
join PortfolioProject..CovidVaccinations as vac
on dea.location = vac.location
and dea.date = vac.date
where dea.continent is not null
GO

SELECT *
FROM Popvacc