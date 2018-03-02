// remember to add the intro commands
//remember to add the comments on pre-stata changes

//2000
import excel "C:\Users\Shourjya Deb\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2000.xls", sheet("SD1CY00")

drop in 1/16

replace A=A[_n-1] if A==""
drop if B==""
destring C, replace ignore ("$")
destring D, replace ignore ("$")
destring E, replace ignore ("$")
destring F, replace ignore ("$")
destring G, replace ignore ("$")
destring H, replace ignore ("$")

rename A county
rename B school_district

generate C1=C*1000
generate D1=D*1000
generate E1=E*1000
generate F1=F*1000
generate G1=G*1000
generate H1=H*1000

destring I, replace
destring J, replace
destring K, replace ignore ("NA", ",")
destring L, replace ignore ("NA") 

drop C D E F G H 

save schdist_00, replace 
clear

//2001

import excel "C:\Users\Shourjya Deb\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2001.xls", sheet("sd1cy01")

drop M
drop in 1/16

replace A=A[_n-1] if A==""
drop in 1
drop if B==""

destring C, replace ignore ("$")
destring D, replace ignore ("$")
destring E, replace ignore ("$")
destring F, replace ignore ("$")
destring G, replace ignore ("$")
destring H, replace ignore ("$")

generate C1=C*1000
generate D1=D*1000
generate E1=E*1000
generate F1=F*1000
generate G1=G*1000
generate H1=H*1000

destring I, replace
destring J, replace
destring K, replace ignore ("NA", ",")
destring L, replace ignore ("NA") 

drop C D E F G H 

save schdist_01, replace
clear

//2002 

import excel "C:\Users\Shourjya Deb\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2002.xls", sheet("sd1cy02")

drop in 1/16
replace A=A[_n-1] if A==""
drop if B==""

destring C, replace ignore ("$")
destring D, replace ignore ("$")
destring E, replace ignore ("$")
destring F, replace ignore ("$")
destring G, replace ignore ("$")
destring H, replace ignore ("$")

generate C1=C*1000
generate D1=D*1000
generate E1=E*1000
generate F1=F*1000
generate G1=G*1000
generate H1=H*1000

destring I, replace
destring J, replace
destring K, replace ignore ("NA", ",")
destring L, replace ignore ("NA")

drop C D E F G H 

save schdist_02, replace
clear

//2003

import excel "C:\Users\Shourjya Deb\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2003.xls", sheet("sd1cy03")

drop in 1/16
replace A=A[_n-1] if A==""
drop if B==""

destring C, replace ignore ("$")
destring D, replace ignore ("$")
destring E, replace ignore ("$")
destring F, replace ignore ("$")
destring G, replace ignore ("$")
destring H, replace ignore ("$")

generate C1=C*1000
generate D1=D*1000
generate E1=E*1000
generate F1=F*1000
generate G1=G*1000
generate H1=H*1000

destring I, replace
destring J, replace
destring K, replace ignore ("NA", ",")
destring L, replace ignore ("NA")

drop C D E F G H 

save schdist_03, replace
clear

//2004

import excel "C:\Users\Shourjya Deb\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2004.xls", sheet("sd1cy04")

drop in 1/16
replace A=A[_n-1] if A==""
drop if B==""

destring C, replace ignore ("$")
destring D, replace ignore ("$")
destring E, replace ignore ("$")
destring F, replace ignore ("$")
destring G, replace ignore ("$")
destring H, replace ignore ("$")

generate C1=C*1000
generate D1=D*1000
generate E1=E*1000
generate F1=F*1000
generate G1=G*1000
generate H1=H*1000

destring I, replace
destring J, replace
destring K, replace ignore ("NA", ",")
destring L, replace ignore ("NA")

drop M

drop C D E F G H 

save schdist_04, replace
clear

//2005

import excel "C:\Users\Shourjya Deb\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2005.xls", sheet("sd1cy05")

drop B C P Q R S T U V W
drop O

rename D B
rename E C
rename F D
rename G E
rename H F
rename I G
rename J H
rename K I
rename L J
rename M K
rename N L

drop in 1/16
replace A=A[_n-1] if A==""
drop if B==""

destring C, replace ignore ("$")
destring D, replace ignore ("$")
destring E, replace ignore ("$")
destring F, replace ignore ("$")
destring G, replace ignore ("$")
destring H, replace ignore ("$")

generate C1=C*1000
generate D1=D*1000
generate E1=E*1000
generate F1=F*1000
generate G1=G*1000
generate H1=H*1000

destring I, replace
destring J, replace
destring K, replace ignore ("NA", ",")
destring L, replace ignore ("NA")

drop C D E F G H 

save schdist_05, replace
clear

//2006

import excel "C:\Users\Shourjya Deb\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2006.xls", sheet("sd1cy06")

drop B C O P Q R S T U V W X Y

rename D B
rename E C
rename F D
rename G E
rename H F
rename I G
rename J H
rename K I
rename L J
rename M K
rename N L

drop in 1/16
replace A=A[_n-1] if A==""
drop if B==""

destring C, replace ignore ("$")
destring D, replace ignore ("$")
destring E, replace ignore ("$")
destring F, replace ignore ("$")
destring G, replace ignore ("$")
destring H, replace ignore ("$")

generate C1=C*1000
generate D1=D*1000
generate E1=E*1000
generate F1=F*1000
generate G1=G*1000
generate H1=H*1000

destring I, replace
destring J, replace
destring K, replace ignore ("NA", ",")
destring L, replace ignore ("NA")

drop C D E F G H 

save schdist_06, replace
clear

//2007

import excel "C:\Users\Shourjya Deb\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2007.xls", sheet("sd1cy07")

drop B C G J 
drop Q
 
rename D B
rename E C
rename F D
rename H E
rename I F
rename K G
rename L H
rename M I
rename N J
rename O K
rename P L

drop in 1/16
replace A=A[_n-1] if A==""
drop if B==""

destring C, replace ignore ("$")
destring D, replace ignore ("$")
destring E, replace ignore ("$")
destring F, replace ignore ("$")
destring G, replace ignore ("$")
destring H, replace ignore ("$")

generate C1=C*1000
generate D1=D*1000
generate E1=E*1000
generate F1=F*1000
generate G1=G*1000
generate H1=H*1000

destring I, replace
destring J, replace
destring K, replace ignore ("NA", ",")
destring L, replace ignore ("NA")

drop C D E F G H 

save schdist_07, replace
clear

//2008
import excel "C:\Users\Shourjya Deb\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2008.xls", sheet("SD1CY08")

drop Q R S T U V W X Y Z AA
drop B C G J

rename D B
rename E C
rename F D
rename H E
rename I F
rename K G
rename L H
rename M I
rename N J
rename O K
rename P L

drop in 1/16
replace A=A[_n-1] if A==""
drop if B==""

destring C, replace ignore ("$", ",")
destring D, replace ignore ("$", ",")
destring E, replace ignore ("$", ",")
destring F, replace ignore ("$", ",")
destring G, replace ignore ("$", ",")
destring H, replace ignore ("$", ",")

generate C1=C*1000
generate D1=D*1000
generate E1=E*1000
generate F1=F*1000
generate G1=G*1000
generate H1=H*1000

destring I, replace
destring J, replace
destring K, replace ignore ("NA", ",")
destring L, replace ignore ("NA")

drop C D E F G H 

save schdist_08,replace
clear

//2009 

import excel "C:\Users\Shourjya Deb\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2009.xls", sheet("SD1CY09")

drop  B C F H J L O Q S V W X Y Z AA AB AC AD AE AF

rename D B
rename E C
rename G D
rename I E
rename K F
rename M G
rename N H
rename P I
rename R J
rename T K
rename U L

drop in 1/16
replace A=A[_n-1] if A==""
drop if B==""

destring C, replace ignore ("$", ",")
destring D, replace ignore ("$", ",")
destring E, replace ignore ("$", ",")
destring F, replace ignore ("$", ",")
destring G, replace ignore ("$", ",")
destring H, replace ignore ("$", ",")

generate C1=C*1000
generate D1=D*1000
generate E1=E*1000
generate F1=F*1000
generate G1=G*1000
generate H1=H*1000

destring I, replace
destring J, replace
destring K, replace ignore ("NA", ",")
destring L, replace ignore ("NA")

drop C D E F G H 

save schdist_09,replace
clear

//2010
import excel "C:\Users\Shourjya Deb\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2010.xls", sheet("SD1CY10")

drop  B C D
drop G I K 
drop M P R T 
drop  W X Y Z AA AB AC AD AE AF AG

rename E B
rename F C
rename H D
rename J E
rename L F
rename N G
rename O H
rename Q I
rename S J
rename U K
rename V L

drop in 1/13

destring C, replace ignore ("$", ",")
destring D, replace ignore ("$", ",")
destring E, replace ignore ("$", ",")
destring F, replace ignore ("$", ",")
destring G, replace ignore ("$", ",")
destring H, replace ignore ("$", ",")

generate C1=C*1000
generate D1=D*1000
generate E1=E*1000
generate F1=F*1000
generate G1=G*1000
generate H1=H*1000

destring I, replace
destring J, replace
destring K, replace ignore ("NA", ",")
destring L, replace ignore ("NA")

drop C D E F G H 

save schdist_10,replace
clear

//2011

import excel "C:\Users\Shourjya Deb\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2011.xls", sheet("SD1CY11")

drop  B C D
drop G I K 
drop M P R T 
drop  W X Y Z AA AB AC AD AE AF AG

rename E B
rename F C
rename H D
rename J E
rename L F
rename N G
rename O H
rename Q I
rename S J
rename U K
rename V L

drop in 1/13

destring C, replace ignore ("$", ",")
destring D, replace ignore ("$", ",")
destring E, replace ignore ("$", ",")
destring F, replace ignore ("$", ",")
destring G, replace ignore ("$", ",")
destring H, replace ignore ("$", ",")

generate C1=C*1000
generate D1=D*1000
generate E1=E*1000
generate F1=F*1000
generate G1=G*1000
generate H1=H*1000

destring I, replace
destring J, replace
destring K, replace ignore ("NA", ",")
destring L, replace ignore ("NA")

drop C D E F G H 

save schdist_11,replace
clear

//2012
import excel "C:\Users\Shourjya Deb\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2012.xls", sheet("SD1CY12")

drop  B C D
drop G I K 
drop M P R T 
drop  W X Y Z AA AB AC AD AE

rename E B
rename F C
rename H D
rename J E
rename L F
rename N G
rename O H
rename Q I
rename S J
rename U K
rename V L

drop in 1/13

destring C, replace ignore ("$", ",")
destring D, replace ignore ("$", ",")
destring E, replace ignore ("$", ",")
destring F, replace ignore ("$", ",")
destring G, replace ignore ("$", ",")
destring H, replace ignore ("$", ",")

generate C1=C*1000
generate D1=D*1000
generate E1=E*1000
generate F1=F*1000
generate G1=G*1000
generate H1=H*1000

destring I, replace
destring J, replace
destring K, replace ignore ("NA", ",")
destring L, replace ignore ("NA")

drop C D E F G H 

save schdist_12,replace
clear

//2013
import excel "C:\Users\Shourjya Deb\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2014.xls", sheet("SD1CY14")
format %120s A

drop  B C D
drop G I K 
drop M P R T 
drop  W X Y Z AA AB AC AD AE

rename E B
rename F C
rename H D
rename J E
rename L F
rename N G
rename O H
rename Q I
rename S J
rename U K
rename V L

drop in 1/13

destring C, replace ignore ("$", ",")
destring D, replace ignore ("$", ",")
destring E, replace ignore ("$", ",")
destring F, replace ignore ("$", ",")
destring G, replace ignore ("$", ",")
destring H, replace ignore ("$", ",")

generate C1=C*1000
generate D1=D*1000
generate E1=E*1000
generate F1=F*1000
generate G1=G*1000
generate H1=H*1000

destring I, replace
destring J, replace
destring K, replace ignore ("NA", ",")
destring L, replace ignore ("NA")

drop C D E F G H 

save schdist_13,replace
clear

//2014

import excel "C:\Users\Shourjya Deb\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2014.xls", sheet("SD1CY14")
format %120s A

drop  B C D
drop G I K 
drop M P R T 
drop  W X Y Z AA AB AC AD AE

rename E B
rename F C
rename H D
rename J E
rename L F
rename N G
rename O H
rename Q I
rename S J
rename U K
rename V L

drop in 1/13

destring C, replace ignore ("$", ",")
destring D, replace ignore ("$", ",")
destring E, replace ignore ("$", ",")
destring F, replace ignore ("$", ",")
destring G, replace ignore ("$", ",")
destring H, replace ignore ("$", ",")

generate C1=C*1000
generate D1=D*1000
generate E1=E*1000
generate F1=F*1000
generate G1=G*1000
generate H1=H*1000

destring I, replace
destring J, replace
destring K, replace ignore ("NA", ",")
destring L, replace ignore ("NA")

drop C D E F G H 

save schdist_14,replace
clear

//2015 

import excel "C:\Users\Shourjya Deb\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2015.xls", sheet("SD1CY15")
format %120s A

drop  B C D
drop G I K 
drop M P R T 
drop  W X Y Z AA AB AC AD AE

rename E B
rename F C
rename H D
rename J E
rename L F
rename N G
rename O H
rename Q I
rename S J
rename U K
rename V L

drop in 1/13

destring C, replace ignore ("$", ",")
destring D, replace ignore ("$", ",")
destring E, replace ignore ("$", ",")
destring F, replace ignore ("$", ",")
destring G, replace ignore ("$", ",")
destring H, replace ignore ("$", ",")

generate C1=C*1000
generate D1=D*1000
generate E1=E*1000
generate F1=F*1000
generate G1=G*1000
generate H1=H*1000

destring I, replace
destring J, replace
destring K, replace ignore ("NA", ",")
destring L, replace ignore ("NA")

drop C D E F G H 

save schdist_15,replace
clear

//add years 
use schdist_00
generate year=2000
move year school_district
save, replace
clear 

use schdist_01
generate year=2001
move year A
save, replace
clear

use schdist_01
generate year=2001
move year B
save, replace
clear

use schdist_02
generate year=2002
move year B
save, replace
clear

use schdist_03
generate year=2003
move year B
save, replace
clear

use schdist_04
generate year=2004
move year B
save, replace
clear

use schdist_05
generate year=2005
move year B
save, replace
clear

use schdist_06
generate year=2006
move year B
save, replace
clear

use schdist_07
generate year=2007
move year B
save, replace
clear

use schdist_08
generate year=2008
move year B
save, replace
clear

use schdist_09
generate year=2009
move year B
save, replace
clear

use schdist_10
generate year=2010
move year B
save, replace
clear

use schdist_11
generate year=2011
move year B
save, replace
clear

use schdist_12
generate year=2012
move year B
save, replace
clear

use schdist_13
generate year=2013
move year B
save, replace
clear

use schdist_14
generate year=2014
move year B
save, replace
clear

use schdist_15
generate year=2015
move year B
save, replace
clear

//chaning the variable name in the first file so that appending is easier

use schdist_00
rename county A
rename school_district B
save, replace
clear

//append
use schdist_00
append using schdist_01
append using schdist_02
append using schdist_03
append using schdist_04
append using schdist_05
append using schdist_06
append using schdist_07
append using schdist_08
append using schdist_09
append using schdist_10
append using schdist_11
append using schdist_12
append using schdist_13
append using schdist_14
append using schdist_15

format %-75s A
format %-75s B

rename A county_name
rename B district_name

move C1 I
move D1 I
move E1 I
move F1 I
move G1 I
move H1 I
move year county_name
rename C1 rptaxval
rename D1 rptaxc
rename E1 tptaxval
rename F1 tptaxl
rename G1 total_value
rename H1 total_taxes
rename I mrreal
rename J mrtangible
rename K avgamt
rename L avgrank

label variable  year "Year of Observation"
label variable  county_name "Name of County"
label variable  district_name "Name of District"
label variable  rptaxval "Real Property Taxable Value"
label variable  rptaxc "Real Property Taxes Charged"
label variable  tptaxval "Tangible Property Taxable Value"
label variable  tptaxl "Tangible Property Taxes Levied"
label variable  total_value "Total Value"
label variable  total_taxes "Total Taxes"
label variable  mrreal "Millage Rates - Real"
label variable  mrtangible "Millage Rates - Tangible"
label variable  avgamt "Average Value Per Pupil - Amount"
label variable  avgrank "Average Value Per Pupil - Rank"

save ohioproject_temp, replace
clear


//editing the exponential forms of the variables

use ohioproject_temp

format rptaxval rptaxc tptaxval tptaxl total_value total_taxes %20.0f 

save, replace
clear


//trying to get information retrieval number for all data sets

import excel "C:\Users\sd901\Dropbox\2017_Spring_Shourjya\ohio school district project\raw data\yr2015.xls", sheet("SD1CY15")
format %100s A
keep A C E

rename A countyname
rename C irn 
rename E districtname
drop in 1/13
drop in 614/621

generate year=2015
rename countyname county_name
rename districtname district_name

save, replace 
clear

use ohioproject_temp
merge 1:1 year county_name district_name using trial_1 








































