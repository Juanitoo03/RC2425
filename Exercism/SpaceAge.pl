round(X,Y,D) :- Z is X * 10^D, round(Z, ZA), Y is ZA / 10^D.
   
space_age("Earth", Seconds, R):-
 Year is Seconds / (60*60*24*365.25), round(Year, R, 2).

space_age("Venus", Seconds, R):-
 Year is Seconds / (60*60*24*365.25*0.61519726),   round(Year, R, 2).

space_age("Mercury", Seconds, R):-
 Year is Seconds / (60*60*24*365.25*0.2408467),   round(Year, R, 2). 

space_age("Mars", Seconds, R):-
 Year is Seconds / (60*60*24*365.25*1.8808158),   round(Year, R, 2). 

space_age("Jupiter", Seconds, R):-
 Year is Seconds / (60*60*24*365.25*11.862615),   round(Year, R, 2). 

space_age("Saturn", Seconds, R):-
 Year is Seconds / (60*60*24*365.25*29.447498),   round(Year, R, 2). 

space_age("Uranus", Seconds, R):-
 Year is Seconds / (60*60*24*365.25*84.016846),   round(Year, R, 2). 

space_age("Neptune", Seconds, R):-
 Year is Seconds / (60*60*24*365.25*164.79132),   round(Year, R, 2). 
