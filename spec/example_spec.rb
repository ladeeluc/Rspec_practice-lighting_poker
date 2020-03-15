RSpec.describe "color_enabled?" do
    context "when set with RSpec.configure" do
      before do
        # color is disabled for non-tty output, so stub the output stream
        # to say it is tty, even though we're running this with cucumber
        allow(RSpec.configuration.output_stream).to receive(:tty?) { true }
      end
  
      it "is true" do
        expect(RSpec.configuration).to be_color_enabled
      end
    end
  end

  RSpec.describe "formatter set in custom options file" do
    it "sets formatter" do
      expect(RSpec.configuration.formatters.first).
        to be_a(RSpec::Core::Formatters::DocumentationFormatter)
    end
  end

  RSpec.describe "custom options file" do
    it "causes .rspec to be ignored" do
      expect(RSpec.configuration.color).to be_falsey
    end
  end

  RSpec.describe "formatter" do
    it "is set to documentation" do
      expect(RSpec.configuration.formatters.first).
        to be_an(RSpec::Core::Formatters::DocumentationFormatter)
    end
  end