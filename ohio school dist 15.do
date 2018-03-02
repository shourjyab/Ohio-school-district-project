//2015 

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2015.xls", sheet("SD1CY15")

format %120s A

drop D
drop G I K 
drop M P R T 
drop  W X Y Z AA AB AC AD AE

generate year=2015
move year A

rename A county_name
rename B schdist_num
rename C irn
rename E district_name
rename H rptaxc
rename N total_value
rename O total_taxes
rename Q mrreal
rename U avgamt
rename V avgrank
rename F real_value
rename J pu_tanvalue
rename L pu_tantaxl
rename S mrpu_tan

label variable  year "Year of Observation"
label variable  county_name "Name of County"
label variable schdist_num "School District Number"
label variable irn "Information Retrieval Number"
label variable  district_name "Name of District"
label variable  real_value "Real Property Taxable Value"
label variable  rptaxc "Real Property Taxes Charged"
label variable  pu_tanvalue "Public Utility Tangible Value"
label variable  pu_tantaxl "Tangible Property Taxes Levied"
label variable  total_value "Total Value"
label variable  total_taxes "Total Taxes"
label variable  mrreal "Millage Rates - Real"
label variable  mrpu_tan "Millage Rates - Tangible"
label variable  avgamt "Average Value Per Pupil - Amount"
label variable  avgrank "Average Value Per Pupil - Rank"

drop in 1/13

destring  schdist_num irn, replace
destring  real_value rptaxc pu_tanvalue pu_tantaxl total_value total_taxes mrreal mrpu_tan, replace
destring  avgamt, replace ignore ("NA")
destring  avgrank, replace ignore ("NA")

drop in 614/621

format %50s county_name

save temp_15, replace 
clear

use exp_1
replace county_name=upper(county_name)
merge 1:m county_name using temp_15
format %50s county_name
drop C
rename D fips_cc
label variable fips_cc "FIPS County Code"
save schdist_15, replace
clear

use schdist_15
move year A
drop A 
move district_name fips_cc
save schdist_15, replace
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\ncesdata_BC486205_edit.xls", sheet("ncesdata_BC486205")
format %50s A
rename A nces_id 
rename B irn 
save ncesdata, replace
clear 


use ncesdata
drop in 1/14
keep nces_id irn 
destring nces_id, replace ignore ("NCES District ID")
destring irn, replace ignore ("State District ID")
save, replace
clear


use schdist_15
drop _merge
merge 1:1 irn using ncesdata
drop in 614/1104
move nces_id fips_cc
drop _merge
save, replace
clear

use schdist_15
generate real_value2= real_value*1000
generate  rptaxc2= rptaxc*1000
generate  pu_tanvalue2= pu_tanvalue*1000
generate  pu_tantaxl2= pu_tantaxl*1000
generate  total_value2= total_value*1000
generate  total_taxes2= total_taxes*1000

drop  real_value rptaxc pu_tanvalue pu_tantaxl total_value total_taxes 

rename  real_value2 real_value
rename  rptaxc2 rptaxc
rename  pu_tanvalue2  pu_tanvalue
rename  pu_tantaxl2 pu_tantaxl
rename  total_value2 total_value
rename  total_taxes2 total_taxes

format  real_value rptaxc pu_tanvalue pu_tantaxl total_value total_taxes %20.0f

save, replace
clear

use schdist_15
label variable  real_value "Real Property Taxable Value"
label variable  rptaxc "Real Property Taxes Charged"
label variable  pu_tanvalue "Public Utility Tangible Value"
label variable  pu_tantaxl "Tangible Property Taxes Levied"
label variable  total_value "Total Value"
label variable  total_taxes "Total Taxes"
label variable  county_name "Name of County"
label variable  nces_id "NCES Code"
save, replace
clear


use schdist_15
merge 1:1 irn using ncesdata
drop _merge
save, replace
clear


//last clearance
use schdist_15
drop in 614/1104
save, replace
clear

//nces data 
//https://nces.ed.gov/ccd/districtsearch/district_list.asp?Search=1&details=1&InstName=&DistrictID=&Address=&City=&State=39&Zip=&Miles=&County=&PhoneAreaCode=&Phone=&DistrictType=1&DistrictType=2&DistrictType=3&DistrictType=4&DistrictType=5&DistrictType=6&DistrictType=7&DistrictType=8&NumOfStudents=&NumOfStudentsRange=more&NumOfSchools=&NumOfSchoolsRange=more

//fips data
//https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=6&cad=rja&uact=8&ved=0ahUKEwiAueqVu6zTAhVD1CYKHT8vBm8QFghDMAU&url=https%3A%2F%2Fwww.census.gov%2F2010census%2Fxls%2Ffips_codes_website.xls&usg=AFQjCNHy6mpBE7_HVXhevBd5pzi_YwxHNw&sig2=ic6b8lyYXIAouF7TDnBdgQ
