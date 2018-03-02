import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr1986.xls", sheet("SD1CY86")


drop in 1/11
drop if C=="0"
replace A=A[_n-1] if A==""


drop in 617/903
drop L  

format %50s A
format %50s B

rename A county_name
rename B district_name
rename C real_value
rename D rptaxc
rename E pu_tanvalue
rename F pu_tantaxl 
rename G total_value
rename H total_taxes
rename I mrreal
rename J mrpu_tan
rename K avgamt

destring  real_value rptaxc pu_tanvalue pu_tantaxl total_value total_taxes mrreal mrpu_tan, replace ignore ("NA", ",")
destring  avgamt, replace ignore ("NA", ",", "N.A.")

generate year=1986
move year county_name
format %50s county_name

save temp_86
clear

//CHECK FOR ERRORS IN COUNTY NAME


use exp_1
merge 1:m county_name using temp_86
replace county_name= subinstr(county_name," ","",.)
format %50s county_name
format %50s district_name
drop C
drop A

drop _merge

move district_name fips_cc
move year county_name
drop if district_name== ""
save schdist_86
clear

use data_consolidated
append using schdist_86
format %50s district_name
save, replace
clear



