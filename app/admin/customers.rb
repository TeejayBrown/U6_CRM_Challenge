ActiveAdmin.register Customer do

  permit_params :full_name, :phone_number, :email_address,:notes, :image

  form do |f|
    f.inputs do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes, as: :text
      f.input :image, as: :file, hint: f.object.image.present? ? image_tag(f.object.image) : "" #input_html: { multiple: false }
    end
    f.actions
  end

  # show do
  #   attributes_table do
  #     row :full_name
  #     row :phone_number
  #     row :email_address
  #     row :notes
  #     row :image do |ad|
  #       image_tag url_for(ad.image)
  #     end
  #   end
  # end

end
