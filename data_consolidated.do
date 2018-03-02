use data_consolidated 

edit if county_name=="ADAMS"

edit if county_name=="SUMMIT"

replace nces_id=3904348 if county_name=="SUMMIT" & district_name=="AKRON CSD"
replace nces_id=3904353 if county_name=="SUMMIT" & district_name=="BARBERTON CSD"
replace nces_id=3904383 if county_name=="SUMMIT" & district_name=="CUYAHOGA FALLS CSD"
replace nces_id=3904455 if county_name=="SUMMIT" & district_name=="NORTON CSD"
replace nces_id=3904483 if county_name=="SUMMIT" & district_name=="STOW MUNROE FALLS CSD"
replace nces_id=3904488 if county_name=="SUMMIT" & district_name=="TALLMADGE CSD"
replace nces_id=3904997 if county_name=="SUMMIT" & district_name=="WOODRIDGE LSD"
replace nces_id=3904998 if county_name=="SUMMIT" & district_name=="COPLEY-FAIRLAWN CSD"
replace nces_id=3904999 if county_name=="SUMMIT" & district_name=="COVENTRY LSD"
replace nces_id=3905000 if county_name=="SUMMIT" & district_name=="MANCHESTER LSD"
replace nces_id=3905001 if county_name=="SUMMIT" & district_name=="GREEN LSD (SUMMIT CO.)"
replace nces_id=3905002 if county_name=="SUMMIT" & district_name=="HUDSON CSD"
replace nces_id=3905003 if county_name=="SUMMIT" & district_name=="MOGADORE LSD"
replace nces_id=3905004 if county_name=="SUMMIT" & district_name=="NORDONIA HILLS CSD"
replace nces_id=3905005 if county_name=="SUMMIT" & district_name=="REVERE LSD"
replace nces_id=3905006 if county_name=="SUMMIT" & district_name=="SPRINGFIELD LSD (SUMMIT CO.)"
replace nces_id=3905006 if county_name=="SUMMIT" & district_name=="SPRINGFIELD LSD"
replace nces_id=3905007 if county_name=="SUMMIT" & district_name=="TWINSBURG CSD"
replace nces_id=3905001 if county_name=="SUMMIT" & district_name=="GREEN LSD"
replace nces_id=3905004 if county_name=="SUMMIT" & district_name=="NORDONIA HILLS LSD"
replace nces_id=3904483 if county_name=="SUMMIT" & district_name=="STOW CSD"
replace nces_id=3905002 if county_name=="SUMMIT" & district_name=="HUDSON LSD"

replace district_name = upper(district_name)

3905007



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
















//manually 
