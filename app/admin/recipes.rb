ActiveAdmin.register Recipe do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#  permitted = [:permitted, :attributes]
#  permitted << :other if params[:action] == 'create' && current_user.admin?
#  permitted
# end

permit_params :title, :category, :body, :user, :created_at
  actions :all

  index do
    selectable_column
    column :title
    column :category
    column :body
    column :user
    column :created_at, null: false
    actions
end



end
