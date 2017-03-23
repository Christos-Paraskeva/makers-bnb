require './app/models/request'

describe Request do

# let(:property) { double('property', :title => "Jabba's hut",
#                     :description     => "dark",
#                     :price_per_night => 30,
#                     :location        => "Tatooine",
#                     :available_from  => "12-12-2017",
#                     :available_to    => "16-12-2017",
#                     :image_url       => "double_url",
#                     :user_id         => "1")

  describe "Valid request" do
    it "returns true if requested start date is before end date" do
      subject.start_date = Date.new(2017, 12, 10)
      subject.end_date = Date.new(2017, 12, 14)
      expect(subject.valid_request?).to equal(true)
    end

    it "returns false if requested end date is after start date" do
      subject.start_date = Date.new(2017, 12, 14)
      subject.end_date = Date.new(2017, 12, 10)
      expect(subject.valid_request?).to equal(false)
    end
  end
end
