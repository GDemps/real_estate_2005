class House

  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = price.gsub(/\$/, "").to_i
    @address = address
    @rooms = []
  end

  def add_room(room_num)
    @rooms << room_num
  end

  def above_market_average?
    price > 500000
  end

  def rooms_from_category(category)
    @rooms.find_all do |room|
      room.category == category
    end
  end

  def area
    @rooms.sum do |room|
      room.area.to_f
    end
  end

  def details
    { "price" => @price, "address" => @address}
  end

  def price_per_square_foot
    (price/area).round(2)
  end

  def rooms_sorted_by_area
    sorted = @rooms.sort_by { |room| room.area }
    sorted.reverse
  end

end
