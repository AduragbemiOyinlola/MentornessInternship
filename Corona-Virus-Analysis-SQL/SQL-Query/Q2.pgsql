--Q2. If NULL values are present, update them with zeros for all columns.
UPDATE corona_data
SET province = 0,
    countryregion = 0,
    latitude = 0,
    longitude = 0,
    confirmed = 0,
    deaths = 0,
    recovered = 0
WHERE province IS NULL OR
    countryregion IS NULL OR
    latitude IS NULL OR
    longitude IS NULL OR
    confirmed IS NULL OR
    deaths IS NULL OR
    recovered IS NULL;