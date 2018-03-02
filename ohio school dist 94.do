import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr1994.xls", sheet("SD1CY94")

drop in 1/16
drop in 613/619

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

destring  real_value rptaxc pu_tanvalue pu_tantaxl total_value total_taxes mrreal mrpu_tan, replace ignore ("NA", ",")
destring  avgamt, replace ignore ("NA", ",", "N.A.")
destring  avgrank, replace ignore ("NA", "N.A.")
generate year=1994
move year county_name
format %50s county_name

save temp_94
clear

use exp_1
merge 1:m county_name using temp_94
replace county_name= subinstr(county_name," ","",.)
format %50s county_name
format %50s district_name
drop C
drop A

drop _merge

move district_name fips_cc
move year county_name
drop if district_name== ""
save schdist_94
clear


use data_consolidated
append using schdist_94
format %50s district_name
save, replace
clear

