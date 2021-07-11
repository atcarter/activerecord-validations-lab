class ClickbaitValidator < ActiveModel::EachValidator
  def validates_each(record, attribute, value)
    if record.title.include?("Won't Believe") || record.title.include?("Secret") || record.title.include?("Top") || record.title.include?("Guess") 
      
    else
      record.errors.add(:title, "needs to be click bait")
    end
  end

end