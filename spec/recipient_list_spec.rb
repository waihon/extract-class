require 'spec_helper'

describe RecipientList, '#split' do
  it 'splits on commas' do
    recipients = 'one@example.com,two@example.com'
    list = ['one@example.com', 'two@example.com']
    expect(RecipientList.new(recipients).split).to eq(list)
  end

  it 'splits on semicolons' do
    recipients = 'one@example.com;two@example.com'
    list = ['one@example.com', 'two@example.com']
    expect(RecipientList.new(recipients).split).to eq(list)
  end

  it 'strips spaces' do
    recipients = '  one@example.com;  two@example.com  '
    list = ['one@example.com', 'two@example.com']
    expect(RecipientList.new(recipients).split).to eq(list)
  end
end