ActiveAdmin.register City do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params(:name, :latitude, :longitude, photos: [])
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :latitude, :longitude]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form title: 'New City' do |f|
    inputs "Infos" do
      input :name, placeholder: 'New York, London, Tokyo, etc.'
    end
    inputs "Content" do
      input :photos, as: :file, input_html: { multiple: true }, label: "Photos"
    end
    actions
  end
end
