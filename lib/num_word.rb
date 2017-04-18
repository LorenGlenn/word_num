class Num_word
  @@words_array = %w{one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty thirty fourty fifty sixty seventy eighty ninety one-hundred two-hundred three-hundred four-hundred five-hundred six-hundred seven-hundred eight-hundred nine-hundred one-thousand}
  @@num_array = [*1..20, 30, 40, 50, 60, 70, 80, 90, 100, 200, 300, 400, 500, 600, 700, 800, 900, 1000]

  def initialize(number)
    @number = number
  end

  def change_num
    new_string = []
    @@num_array.reverse.each_with_index do |num, i|
      if @number - num >= 0
        new_string.push(@@words_array.reverse[i])
        @number = @number - num
      end
    end
    new_string.join(" ")
  end
end
