namespace :deploy do
  desc 'Deploy to staging'
  task :production do
    Paratrooper::Deploy.new('mrmicahcooper', tag: 'production').deploy
  end
end
