require 'date'

class FinancialCalc

    def self.hi(language)
      translator = Translator.new(language)
      translator.hi
    end
    
    def self.ACCRINT(issue,first,settle,annual_rate, par, frequency, days_basis)
      
    
      first = Date.strptime(first,'%m/%d/%Y')
      issue = Date.strptime(issue,'%m/%d/%Y')
      settle = Date.strptime(settle,'%m/%d/%Y')
      
      puts ""
      puts ""
      puts first
      
      time_passed = settle - issue
      puts time_passed
      time_passed = time_passed.to_i
      puts time_passed
      
      puts ""
      puts "before variables"
      puts par
      puts annual_rate
      puts frequency
      puts time_passed
      
      puts ""
      puts "issue - first"
      puts issue
      puts settle
      puts (settle - issue).to_i
      
      if(settle.year - issue.year >= 1)
        
        puts "seperate years!"
        puts ""
        
          date = Date.new(issue.year+1, 1, 1)
          time_passed_first = date - issue
          time_passed_first = time_passed_first.to_i
        
          date = Date.new(settle.year, 1, 1)
          time_passed_second = settle - date
          time_passed_second = time_passed_second.to_i
        
          puts "time_passed"
          puts time_passed_first
          puts time_passed_second
        
          puts ""
          puts "accumulated_interest"
          accumulated_interest = Interest_For_Year(time_passed_first, issue, par, annual_rate, frequency, days_basis)
          puts accumulated_interest
          sv = accumulated_interest
          accumulated_interest = accumulated_interest + Interest_For_Year(time_passed_second, settle, par, annual_rate, frequency, days_basis)
          puts accumulated_interest - sv
          puts accumulated_interest
        
        else

          accumulated_interest = Interest_For_Year(time_passed, first, par, annual_rate, frequency, days_basis)
          puts accumulated_interest
      end
      
      print "END_RESULT:"
      return accumulated_interest
      
    end
      
    
 require 'FinancialCalc/translator'
 
    private
     
    def self.Interest_For_Year(time_passed, date, par, annual_rate, frequency, days_basis)
      
      if(days_basis == 1)
        
        puts "Is leap year setting on? 1:3"
        puts days_basis
        number_of_days = date.leap? ? 366.0 : 365.0  
        
      else
        
          dpy = 0
          dpm = 0
        
        case days_basis
          
        when 0
          number_of_days = 360.0
          dpm = 30
        when 1
          dpy = -1
          dpm = -1
        when 2
          number_of_days = 360.0
          dpm = -1
        when 3
          number_of_days = 365.0
          dpm = -1
        when 4
          number_of_days = 360.0
          dpm = 30
        else
          number_of_days = 360.0
          dpm = 30
        end
        
      end
      
      puts "number_of_days AGAIN"
      puts number_of_days
      puts time_passed
      
 
      
      # accumulated_interest = (par*annual_rate)/frequency*(time_passed/((number_of_days/frequency/number_of_days)))
      accumulated_interest = (par*annual_rate)*time_passed/number_of_days
      
      return accumulated_interest
      
    end

end

