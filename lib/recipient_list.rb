class RecipientList
  def initialize(recipients)
    @recipients = recipients
  end

  def split
    @recipient_list ||= @recipients.gsub(/\s+/, '').split(/[\n,;]+/)
  end
end