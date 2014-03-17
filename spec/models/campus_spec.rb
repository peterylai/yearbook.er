require 'spec_helper'

describe Campus do
    it { should validate_presence_of(:location) }
end
