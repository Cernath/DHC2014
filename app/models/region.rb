class Region < ActiveRecord::Base
	belongs_to :region
	has_many :country, dependent: :destroy
    accepts_nested_attributes_for :country, :allow_destroy => true
end
