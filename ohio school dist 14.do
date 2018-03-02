//2014 data 
import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2014.xls", sheet("SD1CY14")

format %50s A

drop D
drop G I K 
drop M P R T 
drop  W X Y Z AA AB AC AD AE

generate year=2014
move year A

rename A county_name
rename B schdist_num
rename C pun
rename E district_name
rename F real_value
rename H rptaxc
rename J pu_tanvalue
rename L pu_tantaxl 
rename N total_value
rename O total_taxes
rename Q mrreal
rename S mrpu_tan
rename U avgamt
rename V avgrank

drop in 1/13
destring  schdist_num, replace
destring  real_value rptaxc pu_tanvalue pu_tantaxl total_value total_taxes mrreal mrpu_tan, replace
destring  avgamt, replace ignore ("NA")
destring  avgrank, replace ignore ("NA")
destring pun, replace

drop in 615/622

save temp_14
clear

use exp_1
merge 1:m county_name using temp_14
drop _merge
format %50s county_name
drop C
rename D fips_cc
save schdist_14
clear



use schdist_14
move year A
drop A 
move district_name fips_cc
save schdist_14, replace
clear

use schdist_14

label variable  real_value "Real Property Taxable Value"
label variable  rptaxc "Real Property Taxes Charged"
label variable  pu_tanvalue "Public Utility Tangible Value"
label variable  pu_tantaxl "Tangible Property Taxes Levied"
label variable  total_value "Total Value"
label variable  total_taxes "Total Taxes"
label variable  county_name "Name of County"
label variable  nces_id "NCES Code"
label variable  district_name "Name of District"
label variable fips_cc "FIPS County Code"
label variable schdist_num "School District Number"
label variable  mrreal "Millage Rates - Real"
label variable  mrpu_tan "Millage Rates - Tangible"
label variable  avgamt "Average Value Per Pupil - Amount"
label variable  avgrank "Average Value Per Pupil - Rank"
save, replace 
clear

use schdist_15
append using schdist_14
drop pun
save data_consolidated
clear
