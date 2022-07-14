class HomesController < ApplicationController
  def new 
    #debugger
    if params[:q].present?
  	@csv = Csv.search(params[:q])
  else 
      @csv =Csv.all
  end
  	# @csv_table = CSV.open("input1.csv", :headers => true).read
      respond_to do |format|
      format.html
      format.pdf do
        pdf = HomesPdf.new(@users)
        send_data pdf.render ,filename: ' homes.pdf', type: 'Application/pdf',disposition: " inline"
    end	  
  end
end

  def show


      @test1 =  Csv.select([:FirstName]).group(:FirstName).having("count(FirstName) > 1").all.size
      @test2 =  Csv.select([:LastName]).group(:LastName).having("count(LastName) > 1").all.size 
      @test3 =  Csv.select([:Phone]).group(:Phone).having("count(Phone) > 1").all.size
      @test4 =  Csv.select([:Email]).group(:Email).having("count(Email) > 1").all.size
      @test5 =  Csv.select([:Zip]).group(:Zip).having("count(Zip) > 1").all.size

  end



  def create
  	
   respond_to do |format|
      format.html
      format.pdf do
        render pdf: "file_name"   # Excluding ".pdf" extension.
      end
    end
    redirect_to root_path
  end

  def test
  end  
end
