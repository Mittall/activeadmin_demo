ActiveAdmin.register Product do
  
  permit_params :category_id, :name, :price
  
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  form do |f|
    f.inputs "Product Details" do
      f.input :category_id, :label => "Select Category", :hint => "Select category from dropdown", as: :select, collection: Category.all.map{ |c| [c.name, c.id] }
      f.input :name, :label => "Product Name"
      f.input :price, :label => "Product Price"
    end
    f.actions
  end

  index do |f| 
    selectable_column
    id_column
    column :category_id
    column :name
    column :price
    f.actions
  end

end
