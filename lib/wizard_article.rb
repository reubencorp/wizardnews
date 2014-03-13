class WizardArticle

  attr_reader :title, :description, :contents

  def initialize(title, description, contents='nil')
    @title       = title
    @description = description
    @contents    = contents
  end

###### writing the WizardArticle object into the csv
  def write_to_csv
    CSV.open("articles.csv", "ab") do |row|
      row << [@title, @description, @contents]
    end
  end

end