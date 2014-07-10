namespace :deploy do
  desc 'Deploy to staging'
  task :production do
    Paratrooper::Deploy.new('mrmicahcooper', tag: 'production').deploy
  end
  task :staging do
    Paratrooper::Deploy.new('mrmicahcooper-staging', tag: 'staging').deploy
  end
end
