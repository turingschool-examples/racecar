class Palindrome
    # attr_reader :arr1, :arr2
  
    # def initialize(arr1, arr2)
    #   @arr1 = []
    #   @arr2 = []
    # end
      
    def make_array(x,y)
        x.sum + y.sum
    end
  
    def add(arr1, arr2)
    end
  end
  
  a = [1,2,3]
  b = [3,2,1]
  
  pal = Palindrome.new
  
  p pal.make_array(a,b)