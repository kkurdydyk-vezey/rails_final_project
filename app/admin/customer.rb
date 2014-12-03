ActiveAdmin.register Customer do

  permit_params :name, :telephone, :city, :address, :postal_code


end