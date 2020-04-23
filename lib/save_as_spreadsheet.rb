class SaveAsSpreadsheet
  attr_accessor :converted_file

  def initialize (data)
    @converted_file = export_to_database(data)
  end

  def export_to_database (data)
    session = GoogleDrive::Session.from_config("config.json")
    ws = session.spreadsheet_by_key("137Mc8zp0BJul2dd1188WBefjmsKsN68KWg1WuuKetI0").worksheets[0]
    i = 1
    data.each do |k, v|
      ws[i, 1] = k
      ws[i, 2] = v
      i += 1
    end
    ws.save
  end

end