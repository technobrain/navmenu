RSpec.describe Navmenu do
  it "has a version number" do
    expect(Navmenu::VERSION).not_to be nil
  end

  it "has a correct version number" do
    expect(Navmenu::VERSION).to eq("0.1.0")
  end
end
