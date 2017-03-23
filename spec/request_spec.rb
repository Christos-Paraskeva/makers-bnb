require './app/models/request'

describe Request do
# let(:property) { double('property', :title => "Jabba's hut",
#                     :description     => "dark",
#                     :price_per_night => 30,
#                     :location        => "Tatooine",
#                     :available_from  => "12-12-2017",
#                     :available_to    => "16-12-2017",
#                     :image_url       => "double_url",
#                     :user_id         => "1")}
    it"checks if a request's end date is after the start date" do
    expect(subject.valid_request?("12-12-2017", "13-12-2017")).to_be(true)
  end
end
