require "spec_helper"

describe SplitRecipients, "#call" do
  it "splits on commas" do
    recipients = "one@example.com,two@example.com"

    result = SplitRecipients.new(recipients).call

    expect(result).to eq(["one@example.com", "two@example.com"])
  end
end