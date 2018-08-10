require_relative '../lib/doc_server'

# BAD – IO provides print, write and more methods which prints to console
#   our test will break after refactoring which uses write, for example
RSpec.describe DocServer do
  context 'display Ruby methods for Array/max' do
    it 'printed with two IO#puts (use the implementation detail)' do
      result = get('Array/max')
      expect(result).to have_received(:puts).with('----')
      expect(result).to have_received(:puts).with('[:max, :max_by]')
    end
  end

  def get(path)
    output = object_spy($stdout)
    DocServer.new(output: output).process_request(path)
    output
  end
end

require 'stringio'

# OK – expectation is set on the contents of the response
#   this approach results in less brittle tests
RSpec.describe DocServer do
  context 'display Ruby methods for Array/max' do
    it 'check the response (use the StringIO library)' do
      result = get('Array/max')
      expect(result.split("\n")).to include('[:max, :max_by]')
    end
  end

  def get(path)
    output = StringIO.new
    DocServer.new(output: output).process_request(path)
    output.string
  end
end
