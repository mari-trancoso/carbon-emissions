class Entry < ApplicationRecord
  belongs_to :emission_source

  before_save :calculate_emissions

  validates :user_name, :quantity, :start_date, :end_date, :emission_source_id, presence: true

  def duration
    (end_date - start_date).to_i
  end

  private

  def calculate_emissions
    if self.emission_source_id == 1
      self.co2 = quantity*2.2564697
      self.co2_eq = self.co2/1000
    else
      self.co2_bio = quantity*2.2564697
      self.co2_eq = self.co2
    end
  end
end
