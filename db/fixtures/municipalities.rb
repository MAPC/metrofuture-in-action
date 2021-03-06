require 'csv'

def municipalities
  munis = File.new(Rails.root + 'db/fixtures/geometries/municipalities/mf_munis.csv')
  
  CSV.parse(munis, headers: true).map {|row|
    row.headers.zip([row['muni_id'], row['name'], row['geom']])
  }.map {|obj| Hash[*obj.flatten]}
end

def muni_subtypes
  subtypes = File.new(Rails.root + 'db/fixtures/relations/muni_subtype.csv')

  CSV.foreach(subtypes, headers: true) do |row|
    m = Municipality.find_by_muni_id(row['muni_id'])
    m.community_subtype = CommunitySubtype.find(row['community_subtype_id'])
    m.save
  end
end

def update_geometries
  munis = File.new(Rails.root + 'db/fixtures/geometries/municipalities/mf_munis.csv')

  CSV.foreach(munis, headers: true) do |row|
    Municipality.find(row['muni_id']).update_attribute(:geom, row['geom'])
  end
end