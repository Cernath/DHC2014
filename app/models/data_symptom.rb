class DataSymptom < ActiveRecord::Base
	belongs_to :epidemicdata
	belongs_to :symptom
end
