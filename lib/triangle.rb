require 'pry'

class Triangle

      attr_accessor :length1, :length2, :length3

      def initialize(length1, length2, length3)
        @length1 = length1
        @length2 = length2
        @length3 = length3
      end

      def kind


          if self.valid_triangle? == false
            output_error
          else
              self.triangle_type
          end

      end #end kind method

      def valid_triangle?
        #  binding.pry
          if (@length1 <= 0 && @length2 <= 0 && @length3 <= 0)
          #  binding.pry
            output_error
          else
            #binding.pry
              if ( (@length1 + @length2 <= @length3) || (@length2 + @length3 <= @length1) || (@length1 + @length3 <= @length2) )
            #    binding.pry
              output_error
              end
          end
          #binding.pry
      end

      def triangle_type
          if @length1 == @length2 && @length2 == @length3
            :equilateral
          elsif @length1 == @length2 || @length2 == @length3 || @length1 == @length3
            :isosceles
          else
            :scalene
          end
      end

      class TriangleError < StandardError
          def message
              "You must provide the dimensions of a mathematically possible triangle."
          end
      end #end class

      def output_error
        begin
            raise TriangleError

        end
      end


end #end class
