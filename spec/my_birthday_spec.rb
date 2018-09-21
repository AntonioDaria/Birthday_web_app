require 'my_birthday'

describe My_Birthday do
  let(:my_birthday) { described_class.new(end_date)}
  let(:end_date) {Date.new(2018,9,22)}

  describe "#calculate" do
    it "calculates the remaining days to your birthday" do
      expect(my_birthday.calculate(end_date)).to eq 1

     end
  end
end
