require 'rails_helper'

RSpec.describe Fav, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:beach) }
  end

end