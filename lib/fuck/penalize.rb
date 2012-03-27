module Fuck
  module Penalize

    module ActionController
      @@seconds = 0.01

      def self.seconds
        @@seconds
      end

      def self.penalize(seconds)
        @@seconds = seconds
        require 'fuck/penalize/action_controller'
      end
    end

    module Map
      @@count = 100

      def self.count
        @@count
      end

      def self.penalize(count)
        @@count = count
        require 'fuck/penalize/map'
      end
    end

    module Sort
      @@count = 100

      def self.count
        @@count
      end

      def self.penalize(count)
        @@count = count
        require 'fuck/penalize/sort'
      end
    end

  end
end
