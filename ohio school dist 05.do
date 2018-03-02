use data_consolidated
replace  county_name= subinstr(county_name," ","",.)
save, replace
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2005.xls", sheet("sd1cy05")

keep A D E F G H I J K L M N 
replace A=A[_n-1] if A==""

rename A county_name
rename D district_name
rename E real_value
rename F rptaxc
rename G pu_tanvalue
rename H pu_tantaxl 
rename I total_value
rename J total_taxes
rename K mrreal
rename L mrpu_tan
rename M avgamt
rename N avgrank

drop in 1/16 
drop if real_value=="0"
drop in 617/849

destring  real_value rptaxc pu_tanvalue pu_tantaxl total_value total_taxes mrreal mrpu_tan, replace ignore ("NA", ",")
destring  avgamt, replace ignore ("NA", ",")
destring  avgrank, replace ignore ("NA")
generate year=2005
move year county_name

replace county_name= regexr(county_name, "\((.)+\)", "")

replace county_name= subinstr(county_name," ","",.) 
save temp_05
clear


use exp_1
merge 1:m county_name using temp_05
replace county_name= subinstr(county_name," ","",.)
drop in 1
drop in 80
drop _merge
format %50s county_name
drop C
drop A
move district_name fips_cc
move year county_name
drop if district_name== ""
save schdist_05
clear

use data_consolidated
append using schdist_05
//vanwert fips added manually 

save, replace
clear
