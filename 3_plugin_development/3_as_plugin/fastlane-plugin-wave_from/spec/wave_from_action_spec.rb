describe Fastlane::Actions::WaveFromAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The wave_from plugin is working!")

      Fastlane::Actions::WaveFromAction.run(nil)
    end
  end
end
