class Array
  alias :real_map     :map
  alias :real_inject  :inject

  def map(*args, &block)
    Fuck::Penalize::Map.count.times {}
    real_map(*args, &block)
  end

  def inject(*args, &block)
    Fuck::Penalize::Map.count.times {}
    real_inject(*args, &block)
  end

end
