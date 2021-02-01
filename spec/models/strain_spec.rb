require 'rails_helper'

RSpec.describe Strain, type: :model do
    subject {
      described_class.new(name:"merlot")
      }
  describe "Validation" do

    before { described_class.create!(name: "merlot") }
    it "Validate that the name is unique" do
      expect(subject).to be_invalid

    end

    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a name Carmenere' do
      subject.name = "Carmenere"
      expect(subject).to be_valid
    end

    it 'is not valid without a name is empty' do
      subject.name = ""
      expect(subject).to_not be_valid
    end
  end
end
