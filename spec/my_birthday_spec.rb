# frozen_string_literal: true

require 'my_birthday'
require 'date'
require 'timecop'

describe My_Birthday do
  let(:my_birthday) { described_class.new(end_date) }
  let(:end_date) { Date.new(2018, 9, 24) }

  describe '#calculate' do
    context 'When your birthday is today' do
      it 'calculates the remaining days to your birthday' do
        Timecop.freeze(Time.parse('24 September 2018')) do
          expect(my_birthday.calculate(end_date)).to eq 0
        end
      end
    end
  end

  describe '#calculate' do
    context 'When the birthday is in 364 days' do
      it 'calculates the remaining days to your birthday' do
        Timecop.freeze(Time.parse('25 September 2018')) do
          expect(my_birthday.calculate(end_date)).to eq 364
        end
      end
    end
  end

  describe '#calculate' do
    context 'When the birthday is in 1 day' do
      it 'calculates the remaining days to your birthday' do
        Timecop.freeze(Time.parse('23 September 2018')) do
          expect(my_birthday.calculate(end_date)).to eq 1
        end
      end
    end
  end

  describe '#isbirthday' do
    it 'returns true if today is your birthday' do
      Timecop.freeze(Time.parse('24 September 2018')) do
        expect(my_birthday.isbirthday).to eq true
      end
    end

    it 'returns false if today is not your birthday' do
      Timecop.freeze(Time.parse('25 September 2018')) do
        expect(my_birthday.isbirthday).to eq false
      end
    end
  end
end
