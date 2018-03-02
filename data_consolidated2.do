use schdist_15
sort county_name district_name
save, replace
clear


use schdist_14
sort county_name district_name
save, replace
clear

use schdist_13
sort county_name district_name
save, replace
clear

use schdist_12
sort county_name district_name
save, replace
clear

use schdist_11
sort county_name district_name
save, replace
clear

use schdist_10
sort county_name district_name
save, replace
clear

use schdist_09
sort county_name district_name
save, replace
clear

use schdist_08
sort county_name district_name
save, replace
clear

use schdist_07
sort county_name district_name
drop in 612
save, replace
clear

use schdist_06
sort county_name district_name
drop in 612
save, replace
clear

use schdist_05
sort county_name district_name
save, replace
clear

use schdist_04
sort county_name district_name
save, replace
clear

use schdist_03
sort county_name district_name
save, replace
clear

use schdist_02
sort county_name district_name
save, replace
clear

use schdist_01
sort county_name district_name
save, replace
clear

use schdist_00
sort county_name district_name
save, replace
clear

use schdist_99
sort county_name district_name
save, replace
clear

use schdist_98
sort county_name district_name
save, replace
clear

use schdist_97
sort county_name district_name
save, replace
clear

use schdist_96
sort county_name district_name
save, replace
clear

use schdist_95
sort county_name district_name
save, replace
clear

use schdist_94
sort county_name district_name
save, replace
clear

use schdist_93
sort county_name district_name
save, replace
clear

use schdist_92
sort county_name district_name
save, replace
clear

use schdist_91
sort county_name district_name
save, replace
clear

use schdist_90
sort county_name district_name
save, replace
clear

use schdist_88
sort county_name district_name
save, replace
clear

use schdist_87
sort county_name district_name
save, replace
clear

use schdist_86
sort county_name district_name
save, replace
clear



use schdist_15
generate case_id=_n
move case_id county_name
keep county_name district_name case_id nces_id year
save nces_template
export excel using "nces_template"
clear


use schdist_14
export excel using "schdist_14"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\nces_14.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F schdist_num
rename G pun
rename H real_value
rename I rptaxc
rename J pu_tanvalue
rename K pu_tantaxl
rename L total_value
rename M total_taxes
rename N mrreal 
rename O mrpu_tan
rename P avgamt
rename Q avgrank 

label variable  year "Year of Observation"
label variable  county_name "Name of County"
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
label variable fips_cc "Fips Code"
label variable nces_id "Nces Id"
save ap_nces14
replace clear

use schdist_13
export excel using "schdist_13"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces13.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F schdist_num
rename G pun
rename H real_value
rename I rptaxc
rename J pu_tanvalue
rename K pu_tantaxl
rename L total_value
rename M total_taxes
rename N mrreal 
rename O mrpu_tan
rename P avgamt
rename Q avgrank 
save ap_nces13
clear

use schdist_12
export excel using "schdist_12"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces12.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F schdist_num
rename G real_value
rename H rptaxc
rename I pu_tanvalue
rename J pu_tantaxl
rename K total_value
rename L total_taxes
rename M mrreal 
rename N mrpu_tan
rename O avgamt
rename P avgrank 

save ap_nces12
clear

use schdist_15
append using ap_nces14
append using ap_nces13
append using ap_nces12
drop pun schdist_num
save append_consolidated
clear

use schdist_11
export excel using "schdist_11"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces11.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank 

save ap_nces11
clear

use append_consolidated
append using ap_nces11
save, replace
clear

use schdist_10
export excel using "schdist_10"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces10.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank 

save ap_nces10
clear

use append_consolidated
append using ap_nces10
save, replace
clear

use schdist_09
export excel using "schdist_09"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces09.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank

save ap_nces09
clear

use append_consolidated
append using ap_nces09
save, replace
clear

use schdist_08
export excel using "schdist_08"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces08.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank


save ap_nces08
clear

use append_consolidated
append using ap_nces08
save, replace
clear

use schdist_07
export excel using "schdist_07"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces07.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank

save ap_nces07
clear

use append_consolidated
append using ap_nces07
save, replace
clear


use schdist_06
export excel using "schdist_06"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces06.xls", sheet("Sheet1")

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces05.xls", sheet("Sheet1")

save ap_nces06
clear

use append_consolidated
append using ap_nces06
save, replace
clear

use schdist_05
export excel using "schdist_05"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces05.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank

save ap_nces05
clear

use append_consolidated
append using ap_nces05
save, replace
clear

use schdist_04
export excel using "schdist_04"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces04.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank

save ap_nces04
clear

use append_consolidated
append using ap_nces04
save, replace
clear

use schdist_03
export excel using "schdist_03"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces03.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank

save ap_nces03
clear

use append_consolidated
append using ap_nces03
save, replace
clear

use schdist_02
export excel using "schdist_02"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces02.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank

save ap_nces02
clear

use append_consolidated
append using ap_nces02
save, replace
clear

use schdist_01
export excel using "schdist_01"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces01.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank

save ap_nces01
clear

use append_consolidated
append using ap_nces01
save, replace
clear

use schdist_00
export excel using "schdist_00"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces00.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank


save ap_nces00
clear

use append_consolidated
append using ap_nces00
save, replace
clear

use schdist_99
export excel using "schdist_99"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces99.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank


save ap_nces99
clear

use append_consolidated
append using ap_nces99
save, replace
clear


use schdist_98
export excel using "schdist_98"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces98.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank

save ap_nces98
clear

use append_consolidated
append using ap_nces98
save, replace
clear

use schdist_97
export excel using "schdist_97"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces97.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank

save ap_nces97
clear

use append_consolidated
append using ap_nces97
save, replace
clear

use schdist_96
export excel using "schdist_96"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces96.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank


save ap_nces96
clear

use append_consolidated
append using ap_nces96
save, replace
clear

use schdist_95
export excel using "schdist_95"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces95.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank

save ap_nces95
clear

use append_consolidated
append using ap_nces95
save, replace
clear

use schdist_94
export excel using "schdist_94"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces94.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank

save ap_nces94
clear

use append_consolidated
append using ap_nces94
save, replace
clear

use schdist_93
export excel using "schdist_93"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces93.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank

save ap_nces93
clear

use append_consolidated
append using ap_nces93
save, replace
clear

use schdist_92
export excel using "schdist_92"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces92.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank

save ap_nces92
clear

use append_consolidated
append using ap_nces92
save, replace
clear

use schdist_91
export excel using "schdist_91"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces91.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank

save ap_nces91
clear

use append_consolidated
append using ap_nces91
save, replace
clear

use schdist_90
export excel using "schdist_90"
clea

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces90.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank

save ap_nces90
clear

use append_consolidated
append using ap_nces90
save, replace
clear

use schdist_88
export excel using "schdist_88"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces88.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank

save ap_nces88
clear

use append_consolidated
append using ap_nces88
save, replace
clear

use schdist_87
export excel using "schdist_87"
clear


import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces87.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank

save ap_nces87
clear

use append_consolidated
append using ap_nces87
save, replace
clear

use schdist_86
export excel using "schdist_86"
clear


import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces86.xls", sheet("Sheet1")

rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank


save ap_nces86
clear

use append_consolidated
append using ap_nces86
save, replace
clear

use append_consolidated
generate real_value2=1000*real_value
generate rptaxc2=1000*rptaxc
generate pu_tanvalue2=1000*pu_tanvalue
generate pu_tantaxl2=1000*pu_tantaxl
generate total_value2=1000*total_value
generate total_taxes2=1000*total_taxes

drop  real_value rptaxc pu_tanvalue pu_tantaxl total_value total_taxes

rename real_value2 real_value
rename rptaxc2 rptaxc
rename pu_tanvalue2 pu_tanvalue
rename pu_tantaxl2 pu_tantaxl
rename total_value2 total_value
rename total_taxes2 total_taxes

label variable  year "Year of Observation"
label variable  county_name "Name of County"
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
label variable fips_cc "Fips Code"
label variable nces_id "Nces Id"

save, replace
clear

use append_consolidated
move real_value mrreal
move rptaxc mrreal
move pu_tanvalue mrreal
move pu_tantaxl mrreal
move total_value mrreal
move total_taxes mrreal

format real_value %9.0f
format rptaxc %9.0f
format pu_tanvalue pu_tantaxl total_value total_taxes %9.0f


save, replace
clear


use append_consolidated
drop in 1842/2455
save, replace
clear
use schdist_12
export excel using "schdist_12r"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces12r.xls", sheet("Sheet1")
rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank

generate real_value2=1000*real_value
generate rptaxc2=1000*rptaxc
generate pu_tanvalue2=1000*pu_tanvalue
generate pu_tantaxl2=1000*pu_tantaxl
generate total_value2=1000*total_value
generate total_taxes2=1000*total_taxes

drop  real_value rptaxc pu_tanvalue pu_tantaxl total_value total_taxes

rename real_value2 real_value
rename rptaxc2 rptaxc
rename pu_tanvalue2 pu_tanvalue
rename pu_tantaxl2 pu_tantaxl
rename total_value2 total_value
rename total_taxes2 total_taxes

move real_value mrreal
move rptaxc mrreal
move pu_tanvalue mrreal
move pu_tantaxl mrreal
move total_value mrreal
move total_taxes mrreal


format real_value %12.0f
format rptaxc %12.0f
format pu_tanvalue pu_tantaxl total_value total_taxes %12.0f

save ap_nces12r
clear

use append_consolidated
append using ap_nces12r

format real_value %12.0f
format rptaxc %12.0f
format pu_tanvalue pu_tantaxl total_value total_taxes %12.0f

save, replace
clear


use schdist_94
export excel using "schdist_94r"
clear

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\data under processing\ap_nces94r.xls", sheet("Sheet1")


rename A year
rename B county_name
rename C district_name
rename D fips_cc
rename E nces_id
rename F real_value
rename G rptaxc
rename H pu_tanvalue
rename I pu_tantaxl
rename J total_value
rename K total_taxes
rename L mrreal 
rename M mrpu_tan
rename N avgamt
rename O avgrank

generate real_value2=1000*real_value
generate rptaxc2=1000*rptaxc
generate pu_tanvalue2=1000*pu_tanvalue
generate pu_tantaxl2=1000*pu_tantaxl
generate total_value2=1000*total_value
generate total_taxes2=1000*total_taxes

drop  real_value rptaxc pu_tanvalue pu_tantaxl total_value total_taxes

rename real_value2 real_value
rename rptaxc2 rptaxc
rename pu_tanvalue2 pu_tanvalue
rename pu_tantaxl2 pu_tantaxl
rename total_value2 total_value
rename total_taxes2 total_taxes

move real_value mrreal
move rptaxc mrreal
move pu_tanvalue mrreal
move pu_tantaxl mrreal
move total_value mrreal
move total_taxes mrreal


format real_value %12.0f
format rptaxc %12.0f
format pu_tanvalue pu_tantaxl total_value total_taxes %12.0f

save ap_nces94r
clear

use append_consolidated
append using ap_nces94r

format real_value %12.0f
format rptaxc %12.0f
format pu_tanvalue pu_tantaxl total_value total_taxes %12.0f

save, replace
clear




use append_consolidated
save, replace
edit if year==1986

use append_consolidated
replace county_name= subinstr(county_name," ","",.)
replace district_name= subinstr(district_name," ","",.)
format %50s county_name
format %50s district_name
save, replace
clear

use schdist_15
append using ap_nces14 
append using ap_nces13
append using ap_nces11
append using ap_nces10
append using ap_nces09
append using ap_nces08
append using ap_nces07
append using ap_nces06
append using ap_nces05
append using ap_nces04
append using ap_nces03
append using ap_nces02
append using ap_nces01
append using ap_nces00
append using ap_nces99
append using ap_nces98
append using ap_nces97
append using ap_nces96
append using ap_nces95
append using ap_nces93
append using ap_nces92
append using ap_nces91
append using ap_nces90
append using ap_nces88
append using ap_nces87
append using ap_nces86

drop schdist_num pun

generate real_value2=1000*real_value
generate rptaxc2=1000*rptaxc
generate pu_tanvalue2=1000*pu_tanvalue
generate pu_tantaxl2=1000*pu_tantaxl
generate total_value2=1000*total_value
generate total_taxes2=1000*total_taxes

drop  real_value rptaxc pu_tanvalue pu_tantaxl total_value total_taxes

rename real_value2 real_value
rename rptaxc2 rptaxc
rename pu_tanvalue2 pu_tanvalue
rename pu_tantaxl2 pu_tantaxl
rename total_value2 total_value
rename total_taxes2 total_taxes

move real_value mrreal
move rptaxc mrreal
move pu_tanvalue mrreal
move pu_tantaxl mrreal
move total_value mrreal
move total_taxes mrreal

label variable  real_value "Real Property Taxable Value"
label variable  rptaxc "Real Property Taxes Charged"
label variable  pu_tanvalue "Public Utility Tangible Value"
label variable  pu_tantaxl "Tangible Property Taxes Levied"
label variable  total_value "Total Value"
label variable  total_taxes "Total Taxes"

format real_value %12.0f
format rptaxc %12.0f
format pu_tanvalue pu_tantaxl total_value total_taxes %12.0f

replace county_name= subinstr(county_name," ","",.)

append using ap_nces94r
append using ap_nces12r

sort year county_name district_name
drop in 17592/17800 

gsort -year
gsort -year +county_name +district_name


save ohio_final
clear

use ohio_final
replace nces_id=169 if district_name=="WAYNE"
replace nces_id=155 if district_name=="TRUMBULL"
replace nces_id=145 if district_name=="SCIOTO"
replace nces_id=133 if district_name=="PORTAGE"
replace nces_id=113 if district_name=="MONTGOMERY"
replace nces_id=85 if district_name=="LAKE"
replace nces_id=29 if district_name=="COLUMBIANA"




edit if year==1986

save, replace
clear














//rememebr 94 and 12 are already multiplies by 1000 
//manage the rest tomorrow 
