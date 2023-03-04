/*
Cleaning Data in SQL Queries
*/

SELECT *
FROM PortfolioProject..[Nashville Housing]

-- Populate Property Address data

SELECT *
FROM PortfolioProject..[Nashville Housing]
where PropertyAddress is null
order by ParcelID

SELECT a.ParcelID, a.PropertyAddress, b.ParcelID, b.PropertyAddress, ISNULL(a.PropertyAddress,b.PropertyAddress)
FROM PortfolioProject..[Nashville Housing] AS a
JOIN PortfolioProject..[Nashville Housing] AS b
ON a.ParcelID = b.ParcelID
AND a.UniqueID <> b.UniqueID
where a.PropertyAddress is null

UPDATE a
SET PropertyAddress = ISNULL(a.PropertyAddress,b.PropertyAddress)
FROM PortfolioProject..[Nashville Housing] AS a
JOIN PortfolioProject..[Nashville Housing] AS b
ON a.ParcelID = b.ParcelID
AND a.UniqueID <> b.UniqueID

-- Breaking out Address into Individual Columns (Address, City, State)

SELECT 
SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress) -1) AS Address,
SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress) +1, LEN(PropertyAddress)) AS City
FROM PortfolioProject..[Nashville Housing]

ALTER TABLE PortfolioProject..[Nashville Housing]
ADD PropertySplitAddress Nvarchar(255)

UPDATE PortfolioProject..[Nashville Housing]
SET PropertySplitAddress = SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress) -1)

ALTER TABLE PortfolioProject..[Nashville Housing]
ADD PropertySplitCity Nvarchar(255)

UPDATE PortfolioProject..[Nashville Housing]
SET PropertySplitCity = SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress) +1, LEN(PropertyAddress))

SELECT *
FROM PortfolioProject..[Nashville Housing]


SELECT
PARSENAME(REPLACE(OwnerAddress, ',', '.'), 3)
,PARSENAME(REPLACE(OwnerAddress, ',', '.'), 2)
,PARSENAME(REPLACE(OwnerAddress, ',', '.'), 1)
FROM PortfolioProject..[Nashville Housing]

ALTER TABLE PortfolioProject..[Nashville Housing]
ADD OwnerSplitAddress Nvarchar(255)

UPDATE PortfolioProject..[Nashville Housing]
SET OwnerSplitAddress = PARSENAME(REPLACE(OwnerAddress, ',', '.'), 3)

ALTER TABLE PortfolioProject..[Nashville Housing]
ADD OwnerSplitCity Nvarchar(255)

UPDATE PortfolioProject..[Nashville Housing]
SET OwnerSplitCity = PARSENAME(REPLACE(OwnerAddress, ',', '.'), 2)

ALTER TABLE PortfolioProject..[Nashville Housing]
ADD OwnerSplitState Nvarchar(255)

UPDATE PortfolioProject..[Nashville Housing]
SET OwnerSplitState = PARSENAME(REPLACE(OwnerAddress, ',', '.'), 1)

SELECT *
FROM PortfolioProject..[Nashville Housing]

ALTER TABLE PortfolioProject..[Nashville Housing]
Drop column OwnerSplitCountry 

--Remove Duplicates

WITH RowNumCTE AS(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY ParcelID,
			 PropertyAddress,
			 SaleDate,
			 SalePrice,
			 LegalReference
			 ORDER BY UniqueID
			 ) AS row_num
FROM PortfolioProject..[Nashville Housing]
--ORDER BY ParcelID
)
SELECT *
FROM RowNumCTE
WHERE row_num > 1
--order by PropertyAddress

--Delete unused columns

SELECT *
FROM PortfolioProject..[Nashville Housing]

ALTER TABLE PortfolioProject..[Nashville Housing]
DROP COLUMN OwnerAddress, TaxDistrict, PropertyAddress

ALTER TABLE PortfolioProject..[Nashville Housing]
DROP COLUMN SaleDate