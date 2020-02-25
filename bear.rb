class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def eat_fish(river)
    if river.fishes.length == 0
      @stomach.push(Fish.new('Just for eating'))
    else
      @stomach.push(river.get_fish)
    end
  end


end
