DATA_PATH = "/Users/davidcox/Box\ Sync/Tax\ Calculation/orders.csv"
require 'csv'
require 'geocoder'
require '/Users/davidcox/code/hash_csv.rb'

# ORDER_PATH = ENV['HOME'] + "/Box\ Sync/Tax\ Calculation/orders.csv"
# RATE_PATH = ENV['HOME'] + "/Box\ Sync/Tax\ Calculation/county-tax.csv"

# orders_csv = CSV.read(ORDER_PATH)
# orders = Hash_CSV.convert(orders_csv)

# rate_csv = CSV.read(RATE_PATH)
# rates = Hash_CSV.convert(rate_csv)
# puts rates


loaded_csv = CSV.read(DATA_PATH)
# loaded_csv = CSV.read("/Users/davidcox/Box\ Sync/Tax\ Calculation/orders.csv")
orders = Hash_CSV.convert(loaded_csv)
orders.each { |order|  order[:address_string] = [order["Shipping Address1"], order["Shipping City"], order["Shipping State or Province"]].join(' ') 
   geo_address = Geocoder.search(order[:address_string])
   order[:county] = geo_address.first.sub_state
   # geo_address_tax_rate =
 }
# CSV.open('/Users/davidcox/Box\ Sync/Tax\ Calculation/orders.csv', 'w',
#   :write_header => true,
#   :header => "County"
#   ) do |hdr|
#   data_out = [geo_address[:county].to_f]
#   hdr << data_out
# end
puts orders.inspect
# geo_address = Geocoder.search(orders[0][:address_string])
# puts geo_address.first.sub_state
# no_bs_address = geo_address.first.data["address_components"]
# no_bs_address.each do |item|
#   if item["types"][0] == "administrative_area_level_2" then
#     puts item["long_name"]
#   end
# end