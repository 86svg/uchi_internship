require 'rails_helper'

RSpec.describe School, type: :model do
  subject(:school) { create(:school) }

  describe 'DB validations' do
    it { is_expected.to have_db_column(:id).of_type(:integer).with_options(primary: true, null: false) }
    it { is_expected.to have_db_column(:name).of_type(:string).with_options(null: true) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }

    it 'does not have unvalidated columns' do
      expect(described_class.column_names.count).to eq(4)
    end
  end

  describe 'ActiveRecord associations' do
    it { is_expected.to have_many(:class_books).dependent(:destroy) }
  end
end
