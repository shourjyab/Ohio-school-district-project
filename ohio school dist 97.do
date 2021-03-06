import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr1997.xls", sheet("SD1CY97")

clonevar A_di=A
move A_di B

drop in 1/16
drop in 707/714

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
rename J avgamt
rename K avgrank

replace county_name=regexr(county_name, "\((.)+\)","")
replace county_name=subinstr(county_name,"COUNTY","",.)
replace county_name=subinstr(county_name," ","",.)

drop if real_value=="0"

destring  real_value rptaxc pu_tanvalue pu_tantaxl total_value total_taxes mrreal mrpu_tan, replace ignore ("NA", ",")
destring  avgamt, replace ignore ("NA", ",", "N.A.")
destring  avgrank, replace ignore ("NA", ",", "N.A.")

generate year=1997
move year county_name
format %50s county_name

save temp_97
clear



use exp_1
merge 1:m county_name using temp_97
replace county_name= subinstr(county_name," ","",.)
format %50s county_name
format %50s district_name
drop C
drop A

drop in 81
drop if county_name=="BRECKSVILLE-BROADVIEWHTS"
//correct the vanwert problem 

drop _merge

move district_name fips_cc
move year county_name
drop if district_name== ""
save schdist_97
clear

use data_consolidated
append using schdist_97
format %50s district_name
save, replace
clear













