import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2004.xls", sheet("sd1cy04")

drop M

replace A=A[_n-1] if A==""

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
rename L avgrank

drop in 1/16 
drop if real_value=="0"
drop in 614/620

destring  real_value rptaxc pu_tanvalue pu_tantaxl total_value total_taxes mrreal mrpu_tan, replace ignore ("NA", ",")
destring  avgamt, replace ignore ("NA", ",")
destring  avgrank, replace ignore ("NA")
generate year=2004
move year county_name
drop in 614/849 

replace county_name= regexr(county_name, "\((.)+\)", "")

replace county_name= subinstr(county_name," ","",.) 
save temp_04
clear

use exp_1
merge 1:m county_name using temp_04
replace county_name= subinstr(county_name," ","",.)
format %50s county_name
drop C
drop A

drop in 81
//vanwert added manually 


drop _merge

move district_name fips_cc
move year county_name
drop if district_name== ""
save schdist_04
clear

use data_consolidated
append using schdist_04
format %50s district_name
save, replace
clear