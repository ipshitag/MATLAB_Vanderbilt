%to check whether the given year,month and date makes up a valid date or not and return logical true or false accordingly.

function valid = valid_date(year,month,day)
valid = false;
if( isscalar(year) && isscalar(month) && isscalar(day))
    %JANUARY
    if(month == 1)
        if(day>=1 && day <=31)
            valid = true;
            return
        end
        
    %FEBRUARY    
    elseif(month == 2)
        if( (~rem(year,4) && rem(year,100)) || (~rem(year,400)) )
            if(day>=1 && day <= 29)
               valid = true;
               return
             end
        else
            if(day >= 1 && day <= 28)
                valid = true;
                return
            end
        end
     
        
    %MARCH    
    elseif(month == 3)
        if(day>=1 && day <=31)
            valid = true;
            return
        end
        
    %APRIL    
    elseif(month == 4)
        if(day>=1 && day <=30)
            valid = true;
            return
        end
        
    %MAY    
    elseif(month == 5)
        if(day>=1 && day <=31)
            valid = true;
            return
        end
        
    %JUNE    
    elseif(month == 6)
        if(day>=1 && day <=30)
            valid = true;
            return
        end
        
    %JULY    
    elseif(month == 7)
        if(day>=1 && day <=31)
            valid = true;
            return
        end
        
    %AUGUST    
    elseif(month == 8)
        if(day>=1 && day <=31)
            valid = true;
            return
        end
        
    %SEPTEMBER    
    elseif(month == 9)
        if(day>=1 && day <=30)
            valid = true;
            return
        end
        
    %OCTOBER    
    elseif(month == 10)
        if(day>=1 && day <=31)
            valid = true;
            return
        end
        
    %N0VEMBER    
    elseif(month == 11)
        if(day>=1 && day <=30)
            valid = true;
            return
        end
        
    %DECEMBER    
    elseif(month == 12)
        if(day>=1 && day <=31)
            valid = true;
            return
        end
    end
end
        
