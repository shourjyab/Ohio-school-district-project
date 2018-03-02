import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2007.xls", sheet("sd1cy07")

keep A D E F H I K L M N O P 

replace A=A[_n-1] if A==""

rename A county_name
rename D district_name
rename E real_value
rename F rptaxc
rename H pu_tanvalue
rename I pu_tantaxl 
rename K total_value
rename L total_taxes
rename M mrreal
rename N mrpu_tan
rename O avgamt
rename P avgrank

drop in 1/16
drop if real_value=="0"

destring  real_value rptaxc pu_tanvalue pu_tantaxl total_value total_taxes mrreal mrpu_tan, replace ignore ("NA", ",")
destring  avgamt, replace ignore ("NA", ",")
destring  avgrank, replace ignore ("NA")
generate year=2007
move year county_name

replace county_name= regexr(county_name, "\((.)+\)", "")

save temp_07
clear


use exp_1
merge 1:m county_name using temp_07
drop _merge
format %50s county_name
drop C
drop A
move district_name fips_cc
move year county_name
save schdist_07
clear

use data_consolidated
append using schdist_07
save, replace
clear

