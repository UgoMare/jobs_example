class UserUpdateJob < ApplicationJob
  queue_as :default

  def perform(user_id)
    user = User.find(user_id)

    #user.update_profile
    sleep(3)
    puts 'Done!'
  end
end
