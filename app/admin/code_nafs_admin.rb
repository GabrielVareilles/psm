Trestle.resource(:naf_jobs) do
  menu do
    item 'CODES NAF', icon: "fa fa-star"
  end

  search do |query|
    if query
      NafJob.search_full_text(query)
    else
      NafJob.all
    end
  end
  # Customize the table columns shown on the index view.
  #
  table do |record|
    column 'NAF' do |record|
      record.naf_code
    end
    column :description
    column :lvl5_desc
    # column :lvl4
    column :lvl4_desc
    # column :lvl3
    column :lvl3_desc
    # column :lvl2
    column :lvl2_desc
    # column :lvl1
    column :lvl1_desc
  end

  # Customize the form fields shown on the new/edit views.
  #
  # form do |code_naf|
  #   text_field :name
  #
  #   row do
  #     col(xs: 6) { datetime_field :updated_at }
  #     col(xs: 6) { datetime_field :created_at }
  #   end
  # end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:code_naf).permit(:name, ...)
  # end
end
