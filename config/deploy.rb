default_run_options[:pty] = true
  set :repository,  "git://github.com/it-yogini/igopal.git"
  set :scm, "git"
  set :branch, "master"
  set :deploy_via, :remote_cache

    set :application, "igopal"
  set :deploy_to, "/var/www/apps/#{application}"
  set :user, "igpstar"
  
  role :app, "igopal.com"
  role :web, "igopal.com"
  role :db,  "igopal.com", :primary => true

  namespace :deploy do
    desc "Restart Application"
    task :restart, :roles => :app do
      run "touch #{current_path}/tmp/restart.txt"
    end
    desc "Start Application -- not needed for Passenger"
    task :start, :roles => :app do
      # nothing -- need to override default cap start task when using Passenger
    end
  end