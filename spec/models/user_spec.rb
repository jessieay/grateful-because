require 'spec_helper'

describe User, 'Associations' do
  it { should have_many(:entries) }
end
