require 'pry'

class String

  def sentence?
    self[-1] == "." ? true : false
  end

  def question?
    self[-1] == "?" ? true : false
  end

  def exclamation?
    self[-1] == "!" ? true : false
  end

  def count_sentences
    #new_array = self.split("/[\.|\!|\?/]")
    new_array = self.split("/\.+/" || "/\!+/" || "/\?+/")
    new_array.size
  end
end