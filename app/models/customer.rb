class Customer
  attr_accessor :id # read and write :id
  attr_reader :name, :address

  def self.csv_headers
    %i[id name address]
  end

  # Customer.new({})
  def initialize(attributes = {})
    # Set initial instance
    @id = attributes[:id]
    @name = attributes[:name]
    @address = attributes[:address]
  end

  def to_array
    [@id, @name, @address]
  end

  # In Ruby, most objects RESPOND to a .to_s call.
  # However, if you do not override the implementation
  # of this method, converting an instance of Customer
  # to String would look like this:
  #
  # #<Customer:0x00007ff4be01dc08>
  #
  # We want to teache our model to display its data as
  # a string so that we can use it in the View
  # (see BaseView for method call)
  def to_s
    "Name: #{name} | Address: #{address}"
  end
end