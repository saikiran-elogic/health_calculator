require "health_calculator/version"

module HealthCalculator
  # Your code goes here...
   ##BMI Caluclator 
 class BMI  # 

	   # convert weight into kilos 
	   # one pound  = 0.4535 (  1 lb = 453.59 gms)
	   # one kilo = 2.20462 lbs
	   def pound_to_kilo_converter(weight_lb)
	      @weight_kg = ( weight_lb * (0.453592)  ) #one pound = 0.453592 kilos
	   	  print @weight_kg      
	   end

	   #Kilo to Pound Converter
	   def kilo_to_pound_converter(weight_kg)
	   	  puts "#{weight_kg} Kilos"
	      @weight_lb =   ( (weight_kg)  * (0.453592)  ).to_f + "\s Pounds"
	   end


	   #Convert height Inches into Feet
	   def inch_to_feet_converter
	      
	   end


	  #Calucalte BMI with weight in Kilos(KGS) and Height in Meters  
	  def bmi_kg(weight_kg,height_mi)
	  	puts "Weight should be in Kilos and Height should be in meters"
	  	#puts "Weight = 10kgs ; height = 6 meters"
	    @bmi_calac_kg = (weight_kg / (height_mi * height_mi)).round(2)
	  end

	  #Calucalte BMI with weight in Pounds(LBS) and Height in Inches
	  ##If Mass in Pounds(lbs) 
	  def bmi_lb(weight_lb,height_in)
	 	puts "Weight should be in Pounds and Height in Inches "
	  	#puts "Weight = 10lbs ; height = 160 Inches , 1 Foot  = 12 Inches"
	   #@bmi_calac_lb = ( (weight_lb / (height_in * height_in)).round(2) ) * 703
	  	@bmi_calac_lb = ( (weight_lb) / (height_in * height_in).round(2) ) * 703.06957964
	  end

	  #For instance, a person with 
	  #BMI 34 has a BMI Prime of 34/25 = 1.36, 
	  #BMI PRIME  = BMIVALUE / 25 
	  def bmi_prime_kg(bmi_value)
	    if bmi_value > 25
	    @bmi_prime_kg = bmi_value / 25
		end	
	  end
		#########################  
		# Refernce From WIKIPEDIA
		#------------------------------
		#Category 	BMI range – kg/m2 	BMI Prime
		#############################
		# Very severely underweight 	less than 15 	less than 0.60
		# Severely underweight 	from 15.0 to 16.0 	from 0.60 to 0.64
		# Underweight 	from 16.0 to 18.5 	from 0.64 to 0.74
		# Normal (healthy weight) 	from 18.5 to 25 	from 0.74 to 1.0
		# Overweight 	from 25 to 30 	from 1.0 to 1.2
		# Obese Class I (Moderately obese) 	from 30 to 35 	from 1.2 to 1.4
		# Obese Class II (Severely obese) 	from 35 to 40 	from 1.4 to 1.6
		# Obese Class III (Very severely obese) 	over 40 	over 1.6
		 
		####RATING FOR BMI VALUE POUND BASED
		  def rating_lb(bmi_value)
			   result = case bmi_value
			      when 0..15 then "Very severely underweight less than 15"
			      when 15..16 then "Severely underweight 	from 15.0 to 16.0"
			      when 16..18.5 then "Underweight 		from 16.0 to 18.5"
			      when 18.5..25 then "Normal (healthy weight) 	from 18.25 to 25"
			      when 25..30 then "Overweight 	from 25 to 30"
			      when 30..35 then " Obese Class I (Moderately obese) 		from 30 to 35"
			      when 35..40 then "Obese Class II (Severely obese) 	 	from 35 to 40" 
			      when 40..100 then "Obese Class III (Very severely obese) 	over 40"
			      else "Invalid Score"
			    end
		  end
		 #########################################
		 
		 ####RATING FOR BMI VALUE MASS (KILO) BASED
		  def rating_kg(bmi_value)
			    result = case bmi_value
			      when 0..15 then "Very severely underweight less than 0.60"
			      when 15..16 then "Severely underweight 	from 0.60 to 0.64"
			      when 16..18.5 then "Underweight 		from 0.64 to 0.74"
			      when 18.5..25 then "Normal (healthy weight) 	from 0.74 to 1.0"
			      when 25..30 then "Overweight 	from 1.0 to 1.2"
			      when 30..35 then " Obese Class I (Moderately obese) 		from 1.2 to 1.4"
			      when 35..40 then "Obese Class II (Severely obese) 	 	from 1.4 to 1.6" 
			      when 40..100 then "Obese Class III (Very severely obese) 	over 1.6"
			      else "Invalid Score"
			    end
		  end
		 ##############################################

 end  # Class Ends here




end
