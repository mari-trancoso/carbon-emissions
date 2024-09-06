class Entry < ApplicationRecord
  belongs_to :emission_source

  before_save :calculate_emissions

  private

  def calculate_emissions
    if self.emission_source_id == 1
      self.co2 = quantity*2.2564697
      self.co2_eq = self.co2/1000
    else
      self.co2_bio = quantity*1451.49378
      self.co2_eq = self.co2_bio/1000
    end
  end

  def carbon_emission
    self.co2_eq
  end
end
