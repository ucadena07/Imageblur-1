class Subary
    attr_accessor :num1, :num2, :num3, :num4

    def initialize(sub_array1, sub_array2, sub_array3, sub_array4)
        self.num1 = sub_array1
        self.num2 = sub_array2
        self.num3 = sub_array3
        self.num4 = sub_array4
    end

    def output_subary
        puts "#{num1}#{num2}#{num3}#{num4}"
    end
end

#subary = Subary.new(0,0,1,0)
#puts subary.output_subary


class Image
  def initialize
    self.pictures = []
    self.sub_array1 = [0,0,0,0]
    self.sub_array2 = [1,1,1,1]
    self.sub_array3 = [2,2,2,2]
    self.sub_array4 = [3,3,3,3]
  end

  def output 
    self.sub_array1.each do |one|
       self.sub_array2.each do |two|
         self.sub_array3.each do |three|
           self.sub_array4.each do |four|
            self.pictures << Subary.new(sub_array1, sub_array2, sub_array3, sub_array4)
           end
         end
    end
  end

end 

image = Image.new
image.output