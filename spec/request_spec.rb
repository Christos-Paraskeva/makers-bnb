require './app/models/request'

describe Request do

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
