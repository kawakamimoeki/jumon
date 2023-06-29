RSpec.describe Jumon::Subject do
  describe "#set_subjects" do
    let(:base) do
      {
        subject: "Hello, {{name}}.",
        variables: [
          {
            name: "name",
            patterns: [
              "Alice",
              "Bob"
            ]
          }
        ]
      }
    end

    let(:subject) { described_class.new(base) }

    it "sets subjects" do
      subject.set_subjects
      expect(subject.subjects).to eq(
        [
          "Hello, Alice.",
          "Hello, Bob."
        ]
      )
    end
  end
end