import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr1990.xls", sheet("A")

drop J

clonevar A_di=A
move A_di B

drop in 1/15
drop in 708/726

format %50s A
format %50s A_di


replace A= "" if strpos(A, "LSD")
replace A= "" if strpos(A, "CSD")
replace A= "" if strpos(A, "EVSD")
replace A=A[_n-1] if A==""


rename A county_name
rename A_di district_name
rename B real_value
rename C rptaxc
rename D pu_tanvalue
rename E pu_tantaxl 
rename F total_value
rename G total_taxes
rename H mrreal
rename I mrpu_tan
rename K avgamt
rename L avgrank

replace county_name=regexr(county_name, "\((.)+\)","")
replace county_name=subinstr(county_name,"COUNTY","",.)
replace county_name=subinstr(county_name," ","",.)

drop if real_value=="0"

destring  real_value rptaxc pu_tanvalue pu_tantaxl total_value total_taxes mrreal mrpu_tan, replace ignore ("NA", ",")
destring  avgamt, replace ignore ("NA", ",", "N.A.")
destring  avgrank, replace ignore ("NA", ",", "N.A.")

generate year=1990
move year county_name
format %50s county_name

save temp_90
clear

use exp_1
merge 1:m county_name using temp_90
replace county_name= subinstr(county_name," ","",.)
format %50s county_name
format %50s district_name
drop C
drop A

drop if county_name=="BRECKSVILLE-BROADVIEWHTS"
drop if county_name=="ELGIN"
drop if county_name=="BENJAMINLOGAN"
drop if county_name=="SPRINGBOROCOMMUNITYSD"

drop in 81

drop if county_name=="CLEVELANDHTS-UNIVERSITYHTS"


//correct the vanwert problem 

drop _merge

move district_name fips_cc
move year county_name
drop if district_name== ""
save schdist_90
clear

use data_consolidated
append using schdist_90
format %50s district_name
save, replace
clear








