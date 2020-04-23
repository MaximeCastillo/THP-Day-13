class SaveAsCSV
  attr_accessor :converted_file

  def initialize (data)
    @converted_file = export_to_database(data)
  end

  def export_to_database (data)
    CSV.open("db/emails.csv", "w") {|csv| data.each {|elem| csv << elem} }
  end

end