# This code reads awkwardly
RSpec.describe 'A kettle of water' do
  describe 'when boiling' do
    it 'can make tea'
    it 'can make coffee'
  end
end

# This code reads better
RSpec.describe 'A kettle of water' do
  context 'when boiling' do
    it 'can make tea'
    it 'can make coffee'
  end
end

class PhoneNumbersParser ; end

# This code reads awkwardly
RSpec.describe PhoneNumbersParser, 'parses phone numbers' do
  it 'in xxx-xxx-xxx form'
  it 'in (xxx) xxx-xxx-xxx form'
end

# This code reads better
RSpec.describe PhoneNumbersParser, 'parses phone numbers' do
  example 'in xxx-xxx-xxx form'
  example 'in (xxx) xxx-xxx-xxx form'
end

# or try this
RSpec.describe 'Deprecations' do
  specify 'MyGem.config is deprecated in favor of MyGem.configure'
  specify 'MyGem.run is deprecated in favor of MyGem.start'
end
