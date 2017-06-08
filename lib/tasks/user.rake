namespace :user do
  desc "Update all users"
  task update_all: :environment do
    users = User.all
    users.each do |user|
      UserUpdateJob.perform_later(user.id)
    end
  end
end
