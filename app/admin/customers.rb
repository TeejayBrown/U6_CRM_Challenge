ActiveAdmin.register Customer do

  permit_params :full_name, :phone_number, :email_address,:notes

  form do |f|
    f.inputs do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes, as: :text
      f.input :image, as: :file, input_html: { multiple: false }
    end
    f.actions
  end

end
