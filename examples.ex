defmodule TN do

  #Start Tidy
  def st do 
    IO.puts(turnPancakes("---",Integer.to_string(0)))
    
  end

  def turnPancakes(pancake,pos) do
  
    if (String.to_integer(pos) < String.length(pancake) ) do
     if (String.at(pancake,String.to_integer(pos))=="-") do              
       "+" <>  turnPancakes(pancake,Integer.to_string(String.to_integer(pos)+1))             
     else 
        "-" <> turnPancakes(pancake,Integer.to_string(String.to_integer(pos)+1))
      end 
      else
      ""   
    end
  end
end