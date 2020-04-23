class SaveAsJSON
  attr_accessor :converted_file

  def initialize (data)
    @converted_file = export_to_database(data)
  end

  def export_to_database (data)
    File.open("db/emails.json","w") do |f|
      f.write(data.to_json)
    end
  end

end