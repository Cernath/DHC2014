class Department < ActiveRecord::Base
	belongs_to :city
	has_many :region, dependent: :destroy
    accepts_nested_attributes_for :region, :allow_destroy => true
end
