# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Newsfeed, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:content) }

  it { is_expected.to validate_length_of(:title).is_at_most(25) }
  it { is_expected.to validate_length_of(:content).is_at_least(4) }
end
