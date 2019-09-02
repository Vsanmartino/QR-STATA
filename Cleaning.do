//This .do file will:
// 1. Prepare the database for the exercise
// 2. Clean the database to keep only the relevant observations
// 3. Construct the variables for exercise
/////////////////////////////////////////////


//////////// Preparation ///////////////////

//2003
clear
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q/t403_dta"
use "Individual_t403.dta"
keep CODUSU nro_hogar componente h15 ano4 trimestre region mas_500 itf ch03 ch04 ch06 ch07 ch15 nivel_ed estado cat_ocup cat_inac pp03c pp3e_tot intensi pp04a pp04b_cod pp07a pp07h pp07i pp07k p21
replace mas_500 = "1" if mas_500=="S"
replace mas_500 = "0" if mas_500=="N"
destring mas_500 , replace
label define mas500 0 "No" 1 "Yes"
label values mas_500 mas500
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q"
save "Individual 03" , replace
clear

//2004
clear
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q/t404_dta"
use "Individual_t404.dta"
keep CODUSU nro_hogar componente h15 ano4 trimestre region mas_500 itf ch03 ch04 ch06 ch07 ch15 nivel_ed estado cat_ocup cat_inac pp03c pp3e_tot intensi pp04a pp04b_cod pp07a pp07h pp07i pp07k p21
replace mas_500 = "1" if mas_500=="S"
replace mas_500 = "0" if mas_500=="N"
destring mas_500 , replace
label define mas500 0 "No" 1 "Yes"
label values mas_500 mas500
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q"
save "Individual 04" , replace
clear

//2005
clear
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q/t405_dta"
use "Individual_t405.dta"
keep CODUSU nro_hogar componente h15 ano4 trimestre region mas_500 itf ch03 ch04 ch06 ch07 ch15 nivel_ed estado cat_ocup cat_inac pp03c pp3e_tot intensi pp04a pp04b_cod pp07a pp07h pp07i pp07k p21
replace mas_500 = "1" if mas_500=="S"
replace mas_500 = "0" if mas_500=="N"
destring mas_500 , replace
label define mas500 0 "No" 1 "Yes"
label values mas_500 mas500
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q"
save "Individual 05" , replace
clear

//2006
clear
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q/t406_dta"
use "Individual_t406.dta"
keep CODUSU nro_hogar componente h15 ano4 trimestre region mas_500 itf ch03 ch04 ch06 ch07 ch15 nivel_ed estado cat_ocup cat_inac pp03c pp3e_tot intensi pp04a pp04b_cod pp07a pp07h pp07i pp07k p21
replace mas_500 = "1" if mas_500=="S"
replace mas_500 = "0" if mas_500=="N"
destring mas_500 , replace
label define mas500 0 "No" 1 "Yes"
label values mas_500 mas500
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q"
save "Individual 06" , replace
clear

//2007
clear
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q/t407_dta"
use "Individual_t407.dta"
keep CODUSU nro_hogar componente h15 ano4 trimestre region mas_500 itf ch03 ch04 ch06 ch07 ch15 nivel_ed estado cat_ocup cat_inac pp03c pp3e_tot intensi pp04a pp04b_cod pp07a pp07h pp07i pp07k p21
replace mas_500 = "1" if mas_500=="S"
replace mas_500 = "0" if mas_500=="N"
destring mas_500 , replace
label define mas500 0 "No" 1 "Yes"
label values mas_500 mas500
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q"
save "Individual 07" , replace
clear

//2008
clear
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q/t408_dta"
use "Individual_t408.dta"
keep CODUSU nro_hogar componente h15 ano4 trimestre region mas_500 itf ch03 ch04 ch06 ch07 ch15 nivel_ed estado cat_ocup cat_inac pp03c pp3e_tot intensi pp04a pp04b_cod pp07a pp07h pp07i pp07k p21
replace mas_500 = "1" if mas_500=="S"
replace mas_500 = "0" if mas_500=="N"
destring mas_500 , replace
label define mas500 0 "No" 1 "Yes"
label values mas_500 mas500
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q"
save "Individual 08" , replace
clear

//2009
clear
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q/t409_dta"
use "Individual_t409.dta"
keep CODUSU nro_hogar componente h15 ano4 trimestre region mas_500 itf ch03 ch04 ch06 ch07 ch15 nivel_ed estado cat_ocup cat_inac pp03c pp3e_tot intensi pp04a pp04b_cod pp07a pp07h pp07i pp07k p21
replace mas_500 = "1" if mas_500=="S"
replace mas_500 = "0" if mas_500=="N"
destring mas_500 , replace
label define mas500 0 "No" 1 "Yes"
label values mas_500 mas500
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q"
save "Individual 09" , replace
clear

//2010
clear
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q/t410_dta"
use "Individual_t410.dta"
keep CODUSU nro_hogar componente h15 ano4 trimestre region mas_500 itf ch03 ch04 ch06 ch07 ch15 nivel_ed estado cat_ocup cat_inac pp03c pp3e_tot intensi pp04a pp04b_cod pp07a pp07h pp07i pp07k p21
replace mas_500 = "1" if mas_500=="S"
replace mas_500 = "0" if mas_500=="N"
destring mas_500 , replace
label define mas500 0 "No" 1 "Yes"
label values mas_500 mas500
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q"
save "Individual 10" , replace
clear

//2011
clear
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q/t411_dta"
use "Individual_t411.dta"
keep CODUSU nro_hogar componente h15 ano4 trimestre region mas_500 itf ch03 ch04 ch06 ch07 ch15 nivel_ed estado cat_ocup cat_inac pp03c pp3e_tot intensi pp04a pp04b_caes pp07a pp07h pp07i pp07k p21
replace mas_500 = "1" if mas_500=="S"
replace mas_500 = "0" if mas_500=="N"
destring mas_500 , replace
label define mas500 0 "No" 1 "Yes"
label values mas_500 mas500
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q"
save "Individual 11" , replace
clear

//2012
clear
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q/t412_dta"
use "Individual_t412.dta"
keep CODUSU nro_hogar componente h15 ano4 trimestre region mas_500 itf ch03 ch04 ch06 ch07 ch15 nivel_ed estado cat_ocup cat_inac pp03c pp3e_tot intensi pp04a pp04b_caes pp07a pp07h pp07i pp07k p21
replace mas_500 = "1" if mas_500=="S"
replace mas_500 = "0" if mas_500=="N"
destring mas_500 , replace
label define mas500 0 "No" 1 "Yes"
label values mas_500 mas500
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q"
save "Individual 12" , replace
clear

//2013
clear
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q/t413_dta"
use "Individual_t413.dta"
keep CODUSU nro_hogar componente h15 ano4 trimestre region mas_500 itf ch03 ch04 ch06 ch07 ch15 nivel_ed estado cat_ocup cat_inac pp03c pp3e_tot intensi pp04a pp04b_caes pp07a pp07h pp07i pp07k p21
replace mas_500 = "1" if mas_500=="S"
replace mas_500 = "0" if mas_500=="N"
destring mas_500 , replace
label define mas500 0 "No" 1 "Yes"
label values mas_500 mas500
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q"
save "Individual 13" , replace
clear

//2014
clear
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q/t414_dta"
use "Individual_t414.dta"
keep CODUSU nro_hogar componente h15 ano4 trimestre region mas_500 itf ch03 ch04 ch06 ch07 ch15 nivel_ed estado cat_ocup cat_inac pp03c pp3e_tot intensi pp04a pp04b_caes pp07a pp07h pp07i pp07k p21
replace mas_500 = "1" if mas_500=="S"
replace mas_500 = "0" if mas_500=="N"
destring mas_500 , replace
label define mas500 0 "No" 1 "Yes"
label values mas_500 mas500
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q"
save "Individual 14" , replace
clear


//During 4Q of 2015 there was no survey

//2016
clear
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q/t416_dta"
import delim "usu_individual_t416.txt" , delimiters(";")
keep codusu nro_hogar componente h15 ano4 trimestre region mas_500 itf ch03 ch04 ch06 ch07 ch15 nivel_ed estado cat_ocup cat_inac pp03c pp3e_tot intensi pp04a pp04b_cod pp07a pp07h pp07i pp07k p21
rename codusu CODUSU
replace mas_500 = "1" if mas_500=="S"
replace mas_500 = "0" if mas_500=="N"
destring mas_500 , replace
label define mas500 0 "No" 1 "Yes"
label values mas_500 mas500
rename pp04b_cod pp04b_caes2
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q"
save "Individual 16" , replace

//2017
clear
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q/t417_dta"
import delim "usu_individual_t417.txt" , delimiters(";")
keep codusu nro_hogar componente h15 ano4 trimestre region mas_500 itf ch03 ch04 ch06 ch07 ch15 nivel_ed estado cat_ocup cat_inac pp03c pp3e_tot intensi pp04a pp04b_cod pp07a pp07h pp07i pp07k p21
rename codusu CODUSU
replace mas_500 = "1" if mas_500=="S"
replace mas_500 = "0" if mas_500=="N"
destring mas_500 , replace
label define mas500 0 "No" 1 "Yes"
label values mas_500 mas500
rename pp04b_cod pp04b_caes2
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q"
save "Individual 17" , replace
clear

//2018
clear
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q/t418_dta"
import delim "usu_individual_t418.txt" , delimiters(";")
keep codusu nro_hogar componente h15 ano4 trimestre region mas_500 itf ch03 ch04 ch06 ch07 ch15 nivel_ed estado cat_ocup cat_inac pp03c pp3e_tot intensi pp04a pp04b_cod pp07a pp07h pp07i pp07k p21
rename codusu CODUSU
replace mas_500 = "1" if mas_500=="S"
replace mas_500 = "0" if mas_500=="N"
destring mas_500 , replace
label define mas500 0 "No" 1 "Yes"
label values mas_500 mas500
rename pp04b_cod pp04b_caes2
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q"
save "Individual 18" , replace

//2003 to 2018
clear
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q"
use "Individual 03" 
append using "Individual 04" "Individual 05" "Individual 06" "Individual 07" "Individual 08" "Individual 09" "Individual 10" "Individual 11" "Individual 12" "Individual 13" "Individual 14" "Individual 16" "Individual 17" "Individual 18", force
save "Individual TOTAL",replace
clear

//End of preparation of the database////////////////


/////////Construction of variables///////////
clear
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q"
use "Individual TOTAL"

//Gender - use ch04 from EPH-INDEC survey
gen female=0
replace female=1 if ch04==2 
label define sex 0 "Man" 1 "Woman"
label values female sex

//Head of Household - use ch03 from EPH-INDEC survey
gen head = 0
replace head=1 if ch03==1

//Age - use ch06 from EPH-INDEC survey
gen age = ch06
gen agesq = age^2
replace age=0 if age == -1 // -1 is the indicator of "less than 1 year old"
replace age=98 if age>98  // aggregate older than 98 because in some years this is done by default

//Children in household
*Age groups
gen age2=0
replace age2 = 1 if age <= 2
gen age4=0
replace age4 = 1 if age <= 4 & age >2
gen age12=0
replace age12 = 1 if age <=12 & age > 4
gen age16=0
replace age16 = 1 if age <=16 & age > 12

*Count per age per household
egen child2=total(age2), by (ano4 CODUSU nro_hogar)
label variable child2 "number of children aged 0 to 2 in household"
egen child4=total(age4), by (ano4 CODUSU nro_hogar)
label variable child4 "number of children aged 3 to 4 in household"
egen child12=total(age12), by (ano4 CODUSU nro_hogar)
label variable child12 "number of children aged 5 to 12 in household"
egen child16=total(age16), by (ano4 CODUSU nro_hogar)
label variable child16 "number of children aged 12 to 16 in household"

//wage
gen hour = pp3e_tot*4
gen logwage = log(p21/hour)

//other income
gen income = itf - p21

//full time worker
gen fulltime = 0
replace fulltime = 1 if intensi==3
label define full 0 "underemployed" 1 "fully employed"
label values fulltime full

//married
gen married=0
replace married=1 if ch07==1 | ch07==2
label define marr 0 "not married" 1 "married"
label values married marr

//lives in big city (more than 500.000 inhabitants)
gen city = 0
replace city = 1 if mas_500==1
label define cit 0 "less than 500.000" 1 "more than 500.000"
label values city cit

//migrant
gen migrant=0
replace migrant = 1 if ch15==4
label define mig 0 "non-migrant" 1 "migrant"
label values migrant mig

//active-inactive
gen active = 0
replace active=1 if estado==0 | estado==1
label define act 0 "inactive" 1 "active"
label values active act

//public-private
gen public =0
replace public=1 if pp04a ==1

//formal-informal
gen formal =0
replace formal =1 if pp07h==1 | pp07i==1 //we include "Monotributo" (self employed with some social security)

//region
gen GBA = 0
replace GBA=1 if region == 1
gen NOA=0 
replace NOA=1 if region == 40
gen NEA=0
replace NEA=1 if region == 41
gen Cuyo=0
replace Cuyo=1 if region == 42
gen Pampeana=0
replace Pampeana=1  if region == 43
gen Patagonia=0
replace Patagonia=1 if region == 44

//education	
gen primaryinc=0
replace primaryinc=1 if nivel_ed== 1
gen primary=0
replace primary=1 if nivel_ed==2
gen secondaryinc=0
replace secondaryinc=1 if nivel_ed==3
gen secondary=0
replace secondary=1 if nivel_ed==4
gen universityinc=0
replace universityinc=1 if nivel_ed==5
gen university=0
replace university=1 if nivel_ed==6
gen noeducation=0
replace noeducation=1 if nivel_ed==7

gen educationcheck = primaryinc + primary + secondaryinc + secondary + universityinc + university + noeducation

//economic sector 
gen A=0
gen B=0
gen C=0
gen D=0
gen E=0
gen F=0
gen G=0
gen H=0
gen I=0
gen J=0
gen K=0
gen L=0
gen M=0
gen N=0
gen O=0
gen P=0
gen Q=0
gen R=0
gen S=0
gen T=0
gen U=0
gen Z=0


//Drop observations whose codes cannot be assigned to only one category
destring pp04b_cod, replace
destring pp04b_caes2, replace
drop if pp04b_cod==104 //160
drop if pp04b_cod==2200 //628
drop if pp04b_cod==3200 //183
drop if pp04b_cod==7401 //1323
drop if pp04b_cod==7402 //332
drop if pp04b_cod==7403 //606
drop if pp04b_cod==7409 //1,726
drop if pp04b_cod==7503 //646
drop if pp04b_cod==9201 //742
drop if pp04b_cod==9204 //1501
drop if pp04b_cod==74 //8
drop if pp04b_cod==5101 
drop if pp04b_cod==4501  
drop if pp04b_caes=="3602"
drop if pp04b_caes=="3604"
drop if pp04b_caes=="4509"
drop if pp04b_caes=="7401"
drop if pp04b_caes=="8409"
drop if pp04b_caes=="8601"
drop if pp04b_caes=="9403"
drop if pp04b_caes=="9600"
drop if pp04b_caes2==9109

//total deleted: 7201

//Coding for 2018, 2017 and 2016


foreach i in 1 101 0102 0103 0104 0105 0200 0300 {
replace A=1 if pp04b_caes2==`i'
	}

foreach i in 0500 0600 0700 0800 0900 {
replace B=1 if pp04b_caes2==`i'
	}

foreach i in 1001 1002 1003 1009 1100 1200 1300 1400 1501 1502 1600 1700 1800 1901 1902 2001 2002 2009 2100 2201 2202 2301 2309 2400 2500  2601 2602 2603 2604 2701 2709 2800 2900 3001 3002 3003 3009 3100 3200 3300{
replace C=1 if pp04b_caes2==`i'
	}
	
replace C=1 if	pp04b_caes2==10
replace C=1 if	pp04b_caes2==11
replace C=1 if	pp04b_caes2==19	
replace C=1 if	pp04b_caes2==20
replace C=1 if	pp04b_caes2==21	
replace C=1 if	pp04b_caes2==22
replace C=1 if	pp04b_caes2==24	
replace C=1 if	pp04b_caes2==26
replace C=1 if	pp04b_caes2==27
replace C=1 if	pp04b_caes2==33

foreach i in 3501 3502 {
replace D=1 if pp04b_caes2==`i'
	}

foreach i in 3600 3604 3700 3800 3900 {
replace E=1 if pp04b_caes2==`i'
	}

replace F=1 if pp04b_caes2==4000

foreach i in 4501 4502 4503 4504 4801 4802 4803 4804 4805 4806 4807 4808 4809 4810 4811 {
replace G=1 if pp04b_caes2==`i'
	}
	
replace G=1 if	pp04b_caes2==48
replace G=1 if	pp04b_caes2==45
	
	
foreach i in 4901 4902 4903 4904 4905 4909 5000 5100 5201 5202 5300 {
replace H=1 if pp04b_caes2==`i'
	}
	
replace H=1 if	pp04b_caes2==49
replace H=1 if	pp04b_caes2==53

foreach i in 5500 5601 5602 {
replace I=1 if pp04b_caes2==`i'
	}
replace I=1 if	pp04b_caes2==56
	
foreach i in 5800 5900 6000 6100 6200 6300 {
replace J=1 if pp04b_caes2==`i'
	}

foreach i in 6400 6500 6600 {
replace K=1 if pp04b_caes2==`i'
	}
	
replace L=1 if pp04b_caes2==6800


foreach i in 6900 7000 7100 7200 7301 7302 7400 7500 {
replace M=1 if pp04b_caes2==`i'
	}
replace M=1 if	pp04b_caes2==60
replace M=1 if	pp04b_caes2==69
replace M=1 if	pp04b_caes2==73

foreach i in 7701 7702 7800 7900 8000 8101 8102 8200 {
replace N=1 if pp04b_caes2==`i'
	}
	
foreach i in 8300 8401 8402 8403 {
replace O=1 if pp04b_caes2==`i'
	}
	
replace O=1 if	pp04b_caes2==84

	
foreach i in 8501 8509 {
replace P=1 if pp04b_caes2==`i'
	}
	
replace P=1 if	pp04b_caes2==85

foreach i in 8600 8700 8700 8800{
replace Q=1 if pp04b_caes2==`i'
	}
	
foreach i in 9000 9100 9200 9301 9302 {
replace R=1 if pp04b_caes2==`i'
	}

replace R=1 if	pp04b_caes2==93	
	
foreach i in 9401 9402 9409 9501 9502 9503 9601 9602 9603 9609{
replace S=1 if pp04b_caes2==`i'
	}
	
replace S=1 if	pp04b_caes2==94
replace S=1 if	pp04b_caes2==95

foreach i in 9700 9800{
replace T=1 if pp04b_caes2==`i'
	}
	
foreach i in 9900{
replace U=1 if pp04b_caes2==`i'
	}
	
replace Z=1 if pp04b_caes2==9999

//Coding for 2010 to 2018
replace pp04b_caes = "Z" if pp04b_caes == "Z   "

foreach i in 0101 0102 0103 0104 0105 0200 0300 {
replace A=1 if pp04b_caes=="`i'"
	}

foreach i in 0500 0600 0700 0800 0900 {
replace B=1 if pp04b_caes=="`i'"
	}

foreach i in 1001 1002 1003 1009 1100 1200 1300 1400 1501 1502 1600 1700 1800 1901 1902 2001 2002 2009 2100 2201 2202 2301 2309 2400 2500  2601 2602 2603 2604 2701 2709 2800 2900 3001 3002 3003 3009 3100 3200 3300{
replace C=1 if pp04b_caes=="`i'"
	}
	
replace C=1 if	pp04b_caes=="10  "
replace C=1 if	pp04b_caes=="11  "
replace C=1 if	pp04b_caes=="19  "	
replace C=1 if	pp04b_caes=="20  "
replace C=1 if	pp04b_caes=="21  "	
replace C=1 if	pp04b_caes=="24  "	
replace C=1 if	pp04b_caes=="33  "

foreach i in 3501 3502 {
replace D=1 if pp04b_caes=="`i'"
	}

foreach i in 3600 3604 3700 3800 3900 {
replace E=1 if pp04b_caes=="`i'"
	}

replace F=1 if pp04b_caes=="4000"

foreach i in 4501 4502 4503 4504 4801 4802 4803 4804 4805 4806 4807 4808 4809 4810 4811 {
replace G=1 if pp04b_caes=="`i'"
	}
	
replace G=1 if	pp04b_caes=="48  "
	
	
foreach i in 4901 4902 4903 4904 4905 4909 5000 5100 5201 5202 5300 {
replace H=1 if pp04b_caes=="`i'"
	}
replace H=1 if	pp04b_caes=="49  "
replace H=1 if	pp04b_caes=="53  "

foreach i in 5500 5601 5602 {
replace I=1 if pp04b_caes=="`i'"
	}
	
foreach i in 5800 5900 6000 6100 6200 6300 {
replace J=1 if pp04b_caes=="`i'"
	}

foreach i in 6400 6500 6600 {
replace K=1 if pp04b_caes=="`i'"
	}
	
replace L=1 if pp04b_caes=="6800"


foreach i in 6900 7000 7100 7200 7301 7302 7400 7500 {
replace M=1 if pp04b_caes=="`i'"
	}
replace M=1 if	pp04b_caes=="60  "
replace M=1 if	pp04b_caes=="69  "

foreach i in 7701 7702 7800 7900 8000 8101 8102 8200 {
replace N=1 if pp04b_caes=="`i'"
	}
	
foreach i in 8300 8401 8402 8403 {
replace O=1 if pp04b_caes=="`i'"
	}
	
replace O=1 if	pp04b_caes=="84  "

	
foreach i in 8501 8509 {
replace P=1 if pp04b_caes=="`i'"
	}
replace P=1 if	pp04b_caes=="85  "

foreach i in 8600 8700 8700 8800{
replace Q=1 if pp04b_caes=="`i'"
	}
	
foreach i in 9000 9100 9200 9301 9302 {
replace R=1 if pp04b_caes=="`i'"
	}
	
foreach i in 9401 9402 9409 9501 9502 9503 9601 9602 9603 9609{
replace S=1 if pp04b_caes=="`i'"
	}
	
foreach i in 9700 9800{
replace T=1 if pp04b_caes=="`i'"
	}
	
foreach i in 9900{
replace U=1 if pp04b_caes=="`i'"
	}
	
replace Z=1 if pp04b_caes=="Z"


//Coding for 2003 to 2010 
destring pp04b_cod, replace

foreach i in 1 101 102 103 104 105 200 500{
replace A=1 if pp04b_cod==`i'
	}

foreach i in 1000 1100 1200 1300 1400 7402{
replace B=1 if pp04b_cod==`i'
	}
	
foreach i in 15 1501 1502 1503 1504 1505 1600 1700 1800 1901 1902 2000 2100 2200 2301 2302 2303 2401 2402 2403  2409  2501 2502 2601 2609  2700 2800 2900 3200 3000  3100 3300  3400 3501 3502 3503 3509 3601 3609 23 24 26 29 36{
replace C=1 if pp04b_cod==`i'
	}
	
foreach i in 4001 4002 40{
replace D=1 if pp04b_cod==`i'
	}
	
foreach i in 3700 4100 9000 {
replace E=1 if pp04b_cod==`i'
	}	
	
replace F=1 if pp04b_cod==4500

foreach i in 5001 5002 5003 5004 5301 5302 5303 5304 5305 5005 5306 5307 5308 5310 5309 53 {
replace G=1 if pp04b_cod==`i'
	}	
	
foreach i in 6001 6002 6004 6003 6009 6100 6200 6301 6302 6401 60 {
replace H=1 if pp04b_cod==`i'
	}
	
foreach i in 5501 5503 5502{
replace I=1 if pp04b_cod==`i'
	}
	
foreach i in 2200 9201 6402 7201 9202 72 {
replace J=1 if pp04b_cod==`i'
	}
	
foreach i in 6500 7503 6600 6701 6702 {
replace K=1 if pp04b_cod==`i'
	}

replace L=1 if pp04b_cod==7000

foreach i in 7401 7402 7300 7403 7401 7409 8502 {
replace M=1 if pp04b_cod==`i'
	}

foreach i in 7101 7102 7103 7404 6303 7405 7406 0104 7401 7409 {
replace N=1 if pp04b_cod==`i'
	}

foreach i in 7501 7502 7503 {
replace O=1 if pp04b_cod==`i'
	}

foreach i in 80 8001 8002 8003 8004 8009 9204 {
replace P=1 if pp04b_cod==`i'
	}
	
foreach i in 8501 8503 {
replace Q=1 if pp04b_cod==`i'
	}

foreach i in 9201 9203 9204 {
replace R=1 if pp04b_cod==`i'
	}

foreach i in 9102 9101 9109 7202 3200 5311 9301 9302 9303 9309 {
replace S=1 if pp04b_cod==`i'
	}

replace T=1 if pp04b_cod==9500

replace U=1 if pp04b_cod==9900

replace Z=1 if pp04b_cod==9999
	
	
gen sectorcheck = A + B + C + D + E + F + G + H + I + J + K + L + M + N + O + P + Q + R + S + T + U + Z
tab sectorcheck

global T age agesq head income primaryinc primary secondaryinc secondary universityinc university noeducation child2 child4 child12 child16 fulltime married city migrant public GBA NOA NEA Cuyo Pampeana Patagonia A B C D E F G H I J K L M N O P Q R S T U 
global X age agesq head primaryinc primary secondaryinc secondary universityinc university child2 child4 child12 child16 fulltime married city migrant public NOA NEA Cuyo Pampeana Patagonia A B C D E F G H I J K L M N O P Q R S T U 
global Z age agesq head income primaryinc primary secondaryinc secondary universityinc university child2 child4 child12 child16 fulltime married city migrant NOA NEA Cuyo Pampeana Patagonia


save "Individual TOTAL2",replace

/////////Cleaning of database ///////////////
clear
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q"
use "Individual TOTAL2"
count
//initial count of observations: 850,510

///Clean non answered
drop if h15==0 //145,671 observations dropped because they did not answer the survey
drop if p21 == -9 // 11,091 observations deleted because they did not answer income question
drop if estado==0 // 944 observations who did not answer the activity question

//Clean observations that are not relevant for the study
drop if estado==1 & cat_ocup==1 // 14,871 observations deleted because they run their own bussines
drop if estado==1 & cat_ocup==2 // 67,055 observations deleted because they are freelancers
drop if estado==1 & cat_ocup==3 & p21==00 // 7,488 observations deleted because they perform unpaid work
drop if estado==1 & cat_ocup==4  // 3,424 observations work for family bussines with income of zero
drop if pp07k ==9 // 231 observations did not answer the formal or informal sector question

//Keep only observations of relevant age: 16 to 60 or 64 (men and women retirement age respectively)
drop if ch06 < 16 //87,757  observations with less than 16 years old
drop if ch06 >= 65 & ch04==1 // 30,843 observations deleted - men older than retire age
drop if ch06 >= 60 & ch04==2 // 67,680 observations deleted - women older than retire age
count

//Final count of observations: 422,257 

save "FINAL DATABASE",replace
use "FINAL DATABASE"


