ActiveAdmin.register Category do
  permit_params :name

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
    #f.semantic_errors *f.object.errors.keys
    f.inputs "Category Details" do
      f.input :name, :label => "Category Name : "
    end
    f.actions
  end

end
