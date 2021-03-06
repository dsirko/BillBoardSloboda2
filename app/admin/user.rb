ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :admin, :name

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :sign_in_count
    column :created_at
    column :admin
    actions
  end
  filter :email
  filter :sign_in_count
  filter :created_at
  
  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :admin
    end
    f.actions
  end


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


end
