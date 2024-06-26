ActiveAdmin.register Button do
  # Specify parameters which should be permitted for assignment
  permit_params :clicked, :clicked_at, :raise_validation_error

  # or consider:
  #
  # permit_params do
  #   permitted = [:clicked, :clicked_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  # For security, limit the actions that should be available
  actions :all, except: []

  # Add or remove filters to toggle their visibility
  filter :id
  filter :clicked
  filter :clicked_at
  filter :created_at
  filter :updated_at

  # Add or remove columns to toggle their visiblity in the index action
  index do
    selectable_column
    id_column
    column :clicked
    column :clicked_at
    column :created_at
    column :updated_at
    actions
  end

  # Add or remove rows to toggle their visiblity in the show action
  show do
    attributes_table_for(resource) do
      row :id
      row :clicked
      row :clicked_at
      row :created_at
      row :updated_at
    end
  end

  # Add or remove fields to toggle their visibility in the form
  form do |f|
    f.semantic_errors(*f.object.errors.attribute_names)
    f.inputs do
      f.input :clicked
      f.input :clicked_at
      f.input :raise_validation_error, as: :boolean
    end
    f.actions
  end
end
