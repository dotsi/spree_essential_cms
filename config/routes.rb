Spree::Core::Engine.routes.prepend do

  namespace :admin do

    resources :pages, :constraints => { :id => /.*/ } do
      collection do
        post :update_positions
      end

      resources :contents do
        collection do
          post :update_positions
        end
      end

      resources :images, :controller => "page_images" do
        collection do
          post :update_positions
        end
      end
    end

  end
#
#  constraints(Spree::PossiblePage) do
#    get '(:page_path)', :to => 'pages#show', :page_path => /.*/, :as => :page
#  end

end
