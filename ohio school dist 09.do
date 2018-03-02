import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2009.xls", sheet("SD1CY09")

keep A D E G I K M N P R T U 



drop in 1/16
destring  real_value rptaxc pu_tanvalue pu_tantaxl total_value total_taxes mrreal mrpu_tan, replace ignore ("NA", ",")
destring  avgamt, replace ignore ("NA", ",")
destring  avgrank, replace ignore ("NA")

drop in 615/621
generate year=2009
move year county_name
save temp_09
clear

use exp_1
merge 1:m county_name using temp_09
drop _merge
format %50s county_name
drop C
drop A
move district_name fips_cc
move year county_name
save schdist_09
clear

use data_consolidated
drop  schdist_num
append using schdist_09
save, replace
clear

