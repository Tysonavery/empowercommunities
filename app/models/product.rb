class Product < ActiveRecord::Base
<<<<<<< HEAD
=======

  has_many :area_products
  accepts_nested_attributes_for :area_products, :allow_destroy => true, :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

>>>>>>> 586ac0c2770e732e2e09eac8825e95d8de361fb8

 validates_inclusion_of :first_production,
    :in => Date.civil(2004,1,1) .. Date.today,
	:message => "Must be a valid production date!"

  has_many :area_products
  accepts_nested_attributes_for :area_products, :allow_destroy => true, :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

<<<<<<< HEAD
  belongs_to :product_type
=======
>>>>>>> 586ac0c2770e732e2e09eac8825e95d8de361fb8
end
