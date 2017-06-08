class FakeJob < ApplicationJob
  queue_as :default

  def perform
   #UpdateService.new.run
  end
end
