import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2001.xls", sheet("sd1cy01")

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
drop in 615/724

destring  real_value rptaxc pu_tanvalue pu_tantaxl total_value total_taxes mrreal mrpu_tan, replace ignore ("NA", ",")
destring  avgamt, replace ignore ("NA", ",")
destring  avgrank, replace ignore ("NA")
generate year=2001
move year county_name

drop in 1

replace county_name= regexr(county_name, "\((.)+\)", "")
replace county_name= subinstr(county_name," ","",.)

save temp_01
clear

use exp_1
merge 1:m county_name using temp_01
replace county_name= subinstr(county_name," ","",.)
format %50s county_name
format %50s district_name
drop C
drop A

drop in 81
//vanwert added manualy 

drop _merge

move district_name fips_cc
move year county_name
drop if district_name== ""
save schdist_01
clear

use data_consolidated
append using schdist_01
format %50s district_name
save, replace
clear

