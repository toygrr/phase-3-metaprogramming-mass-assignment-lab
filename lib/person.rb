class Person
  def initialize(attributes)
    # iterating over hash to create a person class for each
    attributes.each do |key, value|
      # for each hash, creating a class method (attr_accessor) and applying it to that person class
      self.class.attr_accessor(key)
      # sending the data to fill in key/value pairs in our new person class
      self.send("#{key}=", value)
    end
  end
end
