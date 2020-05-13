class Room

  attr_reader :category,
              :length,
              :width

  def initialize(category, length = 10, width)
    @category = category
    @length = length
    @width = width.to_i
    @paint_status = false
  end

  def area
    @length * @width
  end

  def is_painted?
    @paint_status == true
  end

   def paint
     @paint_status = true
   end

end
