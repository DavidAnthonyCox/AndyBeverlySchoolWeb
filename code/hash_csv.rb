class Hash_CSV
  def self.convert(c)
    keys = c[0]
    c.delete_at(0)
    c.map { |item| Hash[keys.zip(item)]}
  end
end