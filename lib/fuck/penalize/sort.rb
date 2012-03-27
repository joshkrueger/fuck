class Array

  alias :real_sort :sort

  def sort(*args)
    Fuck::Penalize::Sort.count.times { }
    real_sort(*args)
  end


end
