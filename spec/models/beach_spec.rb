require 'rails_helper'

RSpec.describe Beach, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:location) }
    it { should validate_presence_of(:county) }
  end

  describe 'associations' do
    it { should have_many(:favs).dependent(:destroy) }
    it { should have_many(:users) }
  end
end
