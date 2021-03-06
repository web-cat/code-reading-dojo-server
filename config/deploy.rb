set :application, 'code-reading-dojo'
set :repo_url, 'git://github.com/web-cat/code-reading-dojo-server.git'

# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

set :deploy_to, '/home/codereadingdojo/rails'
set :scm, :git

set :format, :pretty
set :log_level, :debug
set :pty, true

set :linked_files, %w{config/database.yml config/secrets.yml config/key.txt}
set :linked_dirs, %w{log tmp vendor/bundle}

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# set :keep_releases, 5

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

  after :finishing, 'deploy:cleanup'

  # Patch for missing assets manifest
  task :fix_absent_manifest_bug do
    on roles(:web) do
      within release_path do  execute :touch,
        release_path.join('public', fetch(:assets_prefix), 'manifest.tmp')
      end
    end
  end
  before :updated, 'deploy:fix_absent_manifest_bug'

end
