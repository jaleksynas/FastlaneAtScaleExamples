module Fastlane
  module Actions
    class WaveFromAction < Action
      def self.run(params)
        UI.message "👋 from #{params[:phrase]}"
        UI.important "Yellow Things"
        UI.error "Red Things"
      end

      def self.description
        "Wave 'from' a phrase"
      end

      def self.authors
        ["Jacob Aleksynas"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "An inline action definition"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :phrase,
                                   env_name: "WAVE_FROM_PHRASE",
                                description: "A phrase to print",
                                   optional: true,
                                       type: String)
        ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end