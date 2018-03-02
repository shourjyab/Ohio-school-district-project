import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2008.xls", sheet("SD1CY08")

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
drop in 1
drop if real_value=="0"
drop in 616/621 

destring  real_value rptaxc pu_tanvalue pu_tantaxl total_value total_taxes mrreal mrpu_tan, replace ignore ("NA", ",")
destring  avgamt, replace ignore ("NA", ",")
destring  avgrank, replace ignore ("NA")
generate year=2008
move year county_name

replace county_name= regexr(county_name, "\((.)+\)", "")

save temp_08
clear

use exp_1
merge 1:m county_name using temp_08
drop _merge
format %50s county_name
drop C
drop A
move district_name fips_cc
move year county_name
save schdist_08
clear

use data_consolidated
append using schdist_08
save, replace
clear

