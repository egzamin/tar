class B
  def initialize(type)
    @type = type
  end

  # def charge(discount)
  def xcharge
    case @type
    when 'gold'
      2
    else
      7
    end
  end
end
