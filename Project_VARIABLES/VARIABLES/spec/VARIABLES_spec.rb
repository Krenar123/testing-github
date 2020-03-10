RSpec.describe VARIABLES do
  let(:cat) { VARIABLES::Cat.new(2,12) }
  
  it "has a version number" do
    expect(VARIABLES::VERSION).not_to be nil
  end

  it ' has to return 10 for speed' do
    expect(cat.speed).to eq(10)
  end

end
