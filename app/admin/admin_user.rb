ActiveAdmin.register AdminUser do
  config.per_page = 1
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column 
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions do 
      #link_to "Preview" , admin_book_path(book), :class => "member_link"
  end
end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count, :as => :check_boxes
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
