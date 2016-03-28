require 'rails_helper'

RSpec.describe School, type: :model do

  describe 'validations' do

    it { should validate_presence_of :name}

    it { should validate_presence_of :low_grade }

    it { should validate_presence_of :high_grade }

  end

end
