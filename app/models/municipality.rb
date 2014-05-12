class Municipality < ActiveRecord::Base
  attr_accessible :muni_id, :name, :geom

  GEOFACTORY = RGeo::Geographic.simple_mercator_factory
  set_rgeo_factory_for_column(:geom, GEOFACTORY.projection_factory)
  
  belongs_to :community_subtype
  belongs_to :county
  belongs_to :state

  has_and_belongs_to_many :regions
  has_and_belongs_to_many :subregions
  
  validates :name, presence: true, length: { minimum: 3, maximum: 70 }

  def region
    regions.first
  end

  def community_type
    community_subtype.community_type unless community_subtype.nil?
  end

  def subregion_name
    subregions.pluck(:name).first || nil
  end
end