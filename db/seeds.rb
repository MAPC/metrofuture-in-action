# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'fixtures/community_types'
require 'fixtures/community_subtypes'
require 'fixtures/departments'
require 'fixtures/funding_sources'
require 'fixtures/strategies'
require 'fixtures/substrategies'

require 'fixtures/municipalities'
require 'fixtures/subregions'
require 'fixtures/regions'
require 'fixtures/counties'

require 'fixtures/muni_counties'

models = %w(  CommunityType
              CommunitySubtype
              Department
              FundingSource
              Municipality
              Strategy
              SubStrategy
              Subregion
              Region
              County
              State             )

models.each do |class_name|
  model = Module.const_get class_name
  model.destroy_all
  model.reset_pk_sequence
end


community_types.each    { |e| CommunityType.create_or_update    e }
community_subtypes.each { |e| CommunitySubtype.create_or_update e }
departments.each        { |e| Department.create_or_update       e }
funding_sources.each    { |e| FundingSource.create_or_update    e }
strategies.each         { |e| Strategy.create_or_update         e }
substrategies.each      { |e| SubStrategy.create_or_update      e }

municipalities.each     { |e| Municipality.create_or_update     e }
muni_subtypes

subregions.each { |e| Subregion.create_or_update e }
counties.each   { |e| County.create_or_update    e }
muni_counties

regions.each    { |e| Region.create_or_update    e }
copy_filedata("#{Rails.root}/db/fixtures/relations/municipalities_regions.csv", :municipalities_regions)

ma = State.create(name: 'Massachusetts', abbr: 'MA', fips: '25')
ma.municipalities << Municipality.all



