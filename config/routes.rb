ActionController::Routing::Routes.draw do |map|
  map.connect 'episodes/download/:fileurl', :controller => 'episodes', :action => 'download', :url =>:fileurl
  
 map.connect 'getfile1/:file', :controller => 'downloads', :action =>'download'

 map.with_options :controller => 'info' do |info|
    info.about 'about', :action => 'about'
    info.contest 'contest', :action => 'contest'
    info.feeds 'feeds', :action => 'feeds'
  end
  
  map.login 'login', :controller => 'sessions', :action => 'new'
  map.logout 'logout', :controller => 'sessions', :action => 'destroy'

  
  map.resources :downloads
  map.resources :sponsors
  map.resources :comments
  map.resources :tags
  map.resources :episodes, :collection => { :archive => :get }
  map.resources :sessions
  
  map.root :episodes
 map.connect ':controller/:action/'
end
