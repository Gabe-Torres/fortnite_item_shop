class CombinedItemShop
  attr_reader :final_price, :name, :image, :type, :id, :date, :vbuck_icon

  def initialize(item)
    # require 'pry'; binding.pry
    @date = item[:date]
    @vbuck_icon = item[:vbuckIcon]
    @final_price = item[:finalPrice]
    @name = item[:items][0][:name]
    @type = item[:items][0][:type]
    @image = item[:bundle] ? item[:bundle][:image] : item[:items][0][:images][:icon]
    @id = item[:items][0][:id]
  end
end