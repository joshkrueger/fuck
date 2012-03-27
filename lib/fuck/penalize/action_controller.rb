class ActionController::Base
  class_exec do
    before_filter :slow_down

    def slow_down
      sleep Fuck::Penalize::ActionController.seconds
    end
  end
end
