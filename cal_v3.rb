# -*- coding: utf-8 -*-

##leap method##############
def leap(y) 
	if !( y % 100 == 0 )&&( y % 4 == 0)
		l=1
	else
		l=0
	end
	return l
end

#################
####Cal Class####
#################

class Cal
	def initialize(mput,yput,lput)
		m = mput
		@m = mput
		@y = yput
		@l = lput
		@c = 1
	end

	def zeller
		d = 1
		m = @m
		y = @y

		#adjust jan,feb
		if m<=2
			m += 12
			y -= 1
		end

		##zeller function

		h = ((d+(26*(m+1))/10)+y%100+((y%100)/4)+(5*(y/100))+((y/100)/4))%7
		
		if h==0 
			h=7
		end

		return h
	end

	##daymax method###########
	def daymax
		m = @m
		l = @l
	  date = Array.new(10)
	  case m
	    when 2
		    if l==1 
		      for i in (1..29)
		        date[i]= i
		      end
		    end
	    
		    if l==0 
		      for i in (1..28)
		        date[i]= i
		      end  
		    end

	    when 4,6,9,11
	      for i in (1..30)
	        date[i]= i
	      end
	    

	    when 1,3,5,7,8,10,12
	      for i in (1..31)
	        date[i]= i
	      end
	    end
	 	
	 	return date
	end

	## put line methods  ########

	def putl1
		  ##color=>White
		printf "\e[37m============================" ##l1 28行
	end
	
	def putl2
		if @m >=10
			printf"month:#{@m}                    "	
		else
			printf"month:#{@m}                     " ##l2 21spaces
		end
	end	

	def putl3
		printf"\e[31m Sun\e[37m Mon Tue Wed Thu Fri\e[34m Sat\e[37m"
	end

	def putl4
		printf"----------------------------" ##l4
	end

	def putl5
		makel5(daymax, zeller)
	end

	def putl6
		makel6(daymax, zeller)
	end

	def putl7
		makel7(daymax, zeller)
	end

	def putl8
		makel8(daymax, zeller)
	end

	def putl9
		makel9(daymax, zeller)
	end

	def putl10
		makel10(daymax, zeller)
	end


	##Make Line Methods l5~l9 ####
	def makel5(date, h) 
	  l5 = Array.new(7)
	  k = 1
	  while k<h do 
	    l5[k] = "    " 
	    k += 1
	  end

	  while k <= 7 do
	    l5[k] = date[@c]
	    k+=1
	    @c += 1 
	  end
	  
	  for q in 1..7
	  	if q ==1
	  		printf("\e[31m%4s\e[37m",l5[q])
	  	elsif q==7
	  		printf("\e[34m%4s\e[37m",l5[q])
	  	else
    		printf("\e[37m%4s",l5[q])
    	end
  	  end	

	end

	def makel6(date, h)
	  l6 = Array.new(7)
	  k=1
	  while k <= 7
	    l6[k] = date[@c]
	    k+=1
	    @c += 1
	  end

	   for q in 1..7
	  	if q ==1
	  		printf("\e[31m%4s\e[37m",l6[q])
	  	elsif q==7
	  		printf("\e[34m%4s\e[37m",l6[q])
	  	else
    		printf("\e[37m%4s",l6[q])
    	end
  	  end	
	end

	def makel7(date, h)

	  l7 = Array.new(7)
	  k=1
	  while k <= 7
	    l7[k] = date[@c]
	    k+=1
	    @c += 1
	  end

	   for q in 1..7
	  	if q ==1
	  		printf("\e[31m%4s\e[37m",l7[q])
	  	elsif q==7
	  		printf("\e[34m%4s\e[37m",l7[q])
	  	else
    		printf("\e[37m%4s",l7[q])
    	end
  	  end		
	end


	def makel8(date, h)

	  l8 = Array.new(7)
	  k=1
	  while k <= 7
	    l8[k] = date[@c]
	    k+=1
	    @c += 1
	  end

	   for q in 1..7
	  	if q ==1
	  		printf("\e[31m%4s\e[37m",l8[q])
	  	elsif q==7
	  		printf("\e[34m%4s\e[37m",l8[q])
	  	else
    		printf("\e[37m%4s",l8[q])
    	end
  	  end		
	end


	def makel9(date, h)
	  l9 = Array.new(7)
	  k=1
	  while k <= 7
	    l9[k] = date[@c]
	    k+=1
	    @c += 1
	  end

	   for q in 1..7
	  	if q ==1
	  		printf("\e[31m%4s\e[37m",l9[q])
	  	elsif q==7
	  		printf("\e[34m%4s\e[37m",l9[q])
	  	else
    		printf("\e[37m%4s",l9[q])
    	end
  	  end	
	end

	def makel10(date, h)
	  l10 = Array.new(7)
	  k=1
	  while k <= 7
	    l10[k] = date[@c]
	    k+=1
	    @c += 1
	  end

	   for q in 1..7
	  	if q ==1
	  		printf("\e[31m%4s\e[37m",l10[q])
	  	elsif q==7
	  		printf("\e[34m%4s\e[37m",l10[q])
	  	else
    		printf("\e[37m%4s",l10[q])
    	end
  	  end	
	end
end



##main##

puts "input the year"
y = gets.to_i
l = leap(y)

jan = Cal.new(1,y,l)
feb = Cal.new(2,y,l)
mar = Cal.new(3,y,l)
apr = Cal.new(4,y,l)
may = Cal.new(5,y,l)
jun = Cal.new(6,y,l)
jul = Cal.new(7,y,l)
aug = Cal.new(8,y,l)
sep = Cal.new(9,y,l)
oct = Cal.new(10,y,l)
nov = Cal.new(11,y,l)
dec = Cal.new(12,y,l)



jan.putl1; printf"="; 
feb.putl1; printf"="; 
mar.putl1; printf"=";
puts
jan.putl2; printf"|";
feb.putl2; printf"|"; 
mar.putl2; printf"|";
puts
jan.putl3; printf"|";
feb.putl3; printf"|"; 
mar.putl3; printf"|";
puts
jan.putl4; printf"|";
feb.putl4; printf"|"; 
mar.putl4; printf"|";
puts
jan.putl5; printf"|";
feb.putl5; printf"|"; 
mar.putl5; printf"|";
puts
jan.putl6; printf"|";
feb.putl6; printf"|"; 
mar.putl6; printf"|";
puts
jan.putl7; printf"|";
feb.putl7; printf"|"; 
mar.putl7; printf"|";
puts
jan.putl8; printf"|";
feb.putl8; printf"|"; 
mar.putl8; printf"|";
puts
jan.putl9; printf"|";
feb.putl9; printf"|"; 
mar.putl9; printf"|";
puts
jan.putl10; printf"|";
feb.putl10; printf"|"; 
mar.putl10; printf"|";
puts



apr.putl1; printf"|"; 
may.putl1; printf"|"; 
jun.putl1; printf"|";
puts
apr.putl2; printf"|";
may.putl2; printf"|"; 
jun.putl2; printf"|";
puts
apr.putl3; printf"|";
may.putl3; printf"|"; 
jun.putl3; printf"|";
puts
apr.putl4; printf"|";
may.putl4; printf"|"; 
jun.putl4; printf"|";
puts
apr.putl5; printf"|";
may.putl5; printf"|"; 
jun.putl5; printf"|";
puts
apr.putl6; printf"|";
may.putl6; printf"|"; 
jun.putl6; printf"|";
puts
apr.putl7; printf"|";
may.putl7; printf"|"; 
jun.putl7; printf"|";
puts
apr.putl8; printf"|";
may.putl8; printf"|"; 
jun.putl8; printf"|";
puts
apr.putl9; printf"|";
may.putl9; printf"|"; 
jun.putl9; printf"|";
puts
apr.putl10; printf"|";
may.putl10; printf"|"; 
jun.putl10; printf"|";
puts



jul.putl1; printf"|"; 
aug.putl1; printf"|"; 
sep.putl1; printf"|";
puts
jul.putl2; printf"|";
aug.putl2; printf"|"; 
sep.putl2; printf"|";
puts
jul.putl3; printf"|";
aug.putl3; printf"|"; 
sep.putl3; printf"|";
puts
jul.putl4; printf"|";
aug.putl4; printf"|"; 
sep.putl4; printf"|";
puts
jul.putl5; printf"|";
aug.putl5; printf"|"; 
sep.putl5; printf"|";
puts
jul.putl6; printf"|";
aug.putl6; printf"|"; 
sep.putl6; printf"|";
puts
jul.putl7; printf"|";
aug.putl7; printf"|"; 
sep.putl7; printf"|";
puts
jul.putl8; printf"|";
aug.putl8; printf"|"; 
sep.putl8; printf"|";
puts
jul.putl9; printf"|";
aug.putl9; printf"|"; 
sep.putl9; printf"|";
puts
jul.putl10; printf"|";
aug.putl10; printf"|"; 
sep.putl10; printf"|";
puts





oct.putl1; printf"|"; 
nov.putl1; printf"|"; 
dec.putl1; printf"|";
puts
oct.putl2; printf"|";
nov.putl2; printf"|"; 
dec.putl2; printf"|";
puts
oct.putl3; printf"|";
nov.putl3; printf"|"; 
dec.putl3; printf"|";
puts
oct.putl4; printf"|";
nov.putl4; printf"|"; 
dec.putl4; printf"|";
puts
oct.putl5; printf"|";
nov.putl5; printf"|"; 
dec.putl5; printf"|";
puts
oct.putl6; printf"|";
nov.putl6; printf"|"; 
dec.putl6; printf"|";
puts
oct.putl7; printf"|";
nov.putl7; printf"|"; 
dec.putl7; printf"|";
puts
oct.putl8; printf"|";
nov.putl8; printf"|"; 
dec.putl8; printf"|";
puts
oct.putl9; printf"|";
nov.putl9; printf"|"; 
dec.putl9; printf"|";
puts
oct.putl10; printf"|";
nov.putl10; printf"|"; 
dec.putl10; printf"|";
puts

3.times{
	printf"\e[37m=============================\e[39m"
}
puts

