require 'rails_helper'

RSpec.describe Line, type: :model do
  context 'on creation' do
    line = Line.new
    it 'should not be valid without arguments' do
      expect(line.valid?).to eq(false)
    end
    it 'should save with valid argument' do
      line.name = "test_name"
      expect(line.valid?).to eq(true)
    end
  end
end
