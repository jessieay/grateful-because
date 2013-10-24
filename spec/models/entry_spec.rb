require 'spec_helper'

describe Entry, 'Associations' do
  it { should belong_to(:user) }
end
