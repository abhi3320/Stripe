class HomesPdf < Prawn::Document
 
  def initialize(users)
  	super()
  	 @users =Csv.order("id DESC").all
  	 csv_id
  	end

  	def csv_id
  		table csv_id_all  do 
  			row(0).font_style =:bold
  			columns(1..3).align = :right
  			self.row_colors = ["DDDDDD" , "FFFFFF"]
  			self.header =true
  		end
  	end

  	def csv_id_all
      
  		# [["id","FirstName" ,"LastName" , "Email" , "Phone" ,"Zip" ]] 



   
      @test1 =  Csv.select([:FirstName]).group(:FirstName).having("count(FirstName) > 1").all.size
      @test2 =  Csv.select([:LastName]).group(:LastName).having("count(LastName) > 1").all.size 
      @test3 =  Csv.select([:Phone]).group(:Phone).having("count(Phone) > 1").all.size
      @test4 =  Csv.select([:Email]).group(:Email).having("count(Email) > 1").all.size
      @test5 =  Csv.select([:Zip]).group(:Zip).having("count(Zip) > 1").all.size
    
    
    end

end