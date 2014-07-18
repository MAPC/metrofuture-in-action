require 'csv'

def muni_counties
  CSV.foreach('db/fixtures/relations/muni_counties.csv', headers: true) do |row|
    muni_id   = row['municipality_id']
    county_id = row['county_id']

    Municipality.find(muni_id).update_attribute(:county_id, county_id)

    muni = Municipality.find(muni_id)
    muni.county = County.find_by_fips("0#{county_id}")
    muni.save
  end
end
