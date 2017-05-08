RailsAdmin.config do |config|

  ### Popular gems integration
  #config.included_models = ['Restaurant','Restaurant::Translation']

  #config.included_models = ['Restaurant','Restaurant::Translation','Gallery', 'Comment']
  config.included_models = ['Restaurant','Restaurant::Translation', 'User']

  config.model 'Restaurant' do
  configure :translations, :globalize_tabs
  end

  config.model 'Restaurant::Translation' do
  visible false
  configure :locale, :hidden do
  help ''
  end
  include_fields :locale, :description
  end



  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  config.main_app_name = ["The Secret Order", ""]

  ## == Cancan ==
  config.authorize_with :cancan

  # config.model Restaurant do
  #   navigation_icon 'fa fa-money'
  #   configure :translations, :globalize_tabs
  #   create do
  #     field  :name
  #     field  :link
  #     field  :chosen
  #     field  :asset
  #     field  :description
  #   end
  #   edit do
  #     field  :name
  #     field  :link
  #     field  :chosen
  #     field  :asset
  #     field  :description
  #   end
  # end


  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true


  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
