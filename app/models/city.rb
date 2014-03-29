class City < ActiveRecord::Base
	belongs_to :epidemicdata
	has_many :department, dependent: :destroy
    accepts_nested_attributes_for :department, :allow_destroy => true
end
