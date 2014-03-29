class Epidemicdata < ActiveRecord::Base
	has_many :city, dependent: :destroy
    accepts_nested_attributes_for :city, :allow_destroy => true
    has_many :symptom, dependent: :destroy
    accepts_nested_attributes_for :symptom, :allow_destroy => true
    has_many :disease, dependent: :destroy
    accepts_nested_attributes_for :disease, :allow_destroy => true
  
end
