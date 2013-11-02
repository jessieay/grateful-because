require 'spec_helper'

describe Item, 'Validations' do
  it { should validate_presence_of(:description) }
end

describe Item, 'Associations' do
  it { should belong_to(:entry) }
end
