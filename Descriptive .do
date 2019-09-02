clear
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q"
use "FINAL DATABASE"

//Observations per survey
tabout ano4 estado using Obsperyear.xls, replace 

//Observations per age per year
///generate age groups
gen a = "a"
replace a = "0-5" if ch06<=5
replace a = "6-10" if ch06 > 5 & ch06<= 10
replace a = "11-15" if ch06 > 10 & ch06<= 15
replace a = "16-20" if ch06 > 15 & ch06<= 20
replace a = "21-25" if ch06 > 20 & ch06<= 25
replace a = "26-30" if ch06 > 25 & ch06<= 30
replace a = "31-35" if ch06 > 30 & ch06<= 35
replace a = "36-40" if ch06 > 35 & ch06<= 40
replace a = "41-45" if ch06 > 40 & ch06<= 45
replace a = "46-50" if ch06 > 45 & ch06<= 50
replace a = "51-55" if ch06 > 50 & ch06<= 55
replace a = "56-60" if ch06 > 55 & ch06<= 60
replace a = "61-65" if ch06 > 60 & ch06<= 65
replace a = "66-70" if ch06 > 65 & ch06<= 70
replace a = "71+" if ch06 > 70

tabout ano4 a using Descriptive.xls, append 
tabout a ch04 using  Descriptive.xls, append 

// Public vs Private sector

global T age agesq head income primaryinc primary secondaryinc secondary universityinc university noeducation child2 child4 child12 child16 fulltime married city migrant public GBA NOA NEA Cuyo Pampeana Patagonia A B C D E F G H I J K L M N O P Q R S T U 
global X age agesq head primaryinc primary secondaryinc secondary universityinc university child2 child4 child12 child16 fulltime married city migrant public NOA NEA Cuyo Pampeana Patagonia A B C D E F G H I J K L M N O P Q R S T U 
global Z age agesq head income primaryinc primary secondaryinc secondary universityinc university child2 child4 child12 child16 fulltime married city migrant NOA NEA Cuyo Pampeana Patagonia

forvalues y = 2003/2014{
oaxaca2 logwage $X if estado==1 & cat_ocup==3 & ano4==`y', by(public)
}

//Formal vs Informal 
forvalues y = 2003/2014{
oaxaca2 logwage $X if estado==1 & cat_ocup==3 & ano4==`y', by(formal)
}

//Raw gender pay gap per year
svyset _n
	
reg logwage $T if estado==1 & cat_ocup==3  & female==0 & formal==0
outreg2 using DescriptiveOutregf0fo0.xls,sum replace

reg logwage $T if estado==1 & cat_ocup==3  & female==0 & formal==1
outreg2 using DescriptiveOutregf0fo1.xls,sum replace

reg logwage $T if estado==1 & cat_ocup==3  & female==1  & formal==0
outreg2 using DescriptiveOutregf1fo0.xls,sum replace

reg logwage $T if estado==1 & cat_ocup==3  & female==1  & formal==1
outreg2 using DescriptiveOutregf1fo1.xls,sum replace

reg logwage $T if estado==1 & cat_ocup==3 & formal==0
outreg2 using DescriptiveOutregfo0.xls,sum replace

reg logwage $T if estado==1 & cat_ocup==3 & formal==1
outreg2 using DescriptiveOutregfo1.xls,sum replace

// Graphs

//2003
///FS
drop x fx
kdensity logwage if estado==1 & cat_ocup==3 & ano4==2003 & formal==1, nograph generate(x fx)
kdensity logwage if female==0 & estado==1 & cat_ocup==3 & ano4==2003 & formal==1, nograph generate(fx003fs) at(x)
kdensity logwage if female==1 & estado==1 & cat_ocup==3 & ano4==2003 & formal==1, nograph generate(fx103fs) at(x)
label var fx003fs "Men FS 2003"
label var fx103fs "Women FS 2003"
line fx003fs fx103fs x, sort ytitle(Density)

//IS
drop x fx
kdensity logwage if estado==1 & cat_ocup==3 & ano4==2003 & formal==0, nograph generate(x fx)
kdensity logwage if female==0 & estado==1 & cat_ocup==3 & ano4==2003 & formal==0, nograph generate(fx003is) at(x)
kdensity logwage if female==1 & estado==1 & cat_ocup==3 & ano4==2003 & formal==0, nograph generate(fx103is) at(x)
label var fx003is "Men IS 2003"
label var fx103is "Women IS 2003"
line fx003is fx103is x, sort ytitle(Density)


//2008
///FS
drop x fx
kdensity logwage if estado==1 & cat_ocup==3 & ano4==2008 & formal==1, nograph generate(x fx)
kdensity logwage if female==0 & estado==1 & cat_ocup==3 & ano4==2008 & formal==1, nograph generate(fx008fs) at(x)
kdensity logwage if female==1 & estado==1 & cat_ocup==3 & ano4==2008 & formal==1, nograph generate(fx108fs) at(x)
label var fx008fs "Men FS 2008"
label var fx108fs "Women FS 2008"
line fx008fs fx108fs x, sort ytitle(Density)

//IS
drop x fx
kdensity logwage if estado==1 & cat_ocup==3 & ano4==2008 & formal==0, nograph generate(x fx)
kdensity logwage if female==0 & estado==1 & cat_ocup==3 & ano4==2008 & formal==0, nograph generate(fx008is) at(x)
kdensity logwage if female==1 & estado==1 & cat_ocup==3 & ano4==2008 & formal==0, nograph generate(fx108is) at(x)
label var fx008is "Men IS 2008"
label var fx108is "Women IS 2008"
line fx008is fx108is x, sort ytitle(Density)


//2013
///FS
drop x fx
kdensity logwage if estado==1 & cat_ocup==3 & ano4==2013 & formal==1, nograph generate(x fx)
kdensity logwage if female==0 & estado==1 & cat_ocup==3 & ano4==2013 & formal==1, nograph generate(fx013fs) at(x)
kdensity logwage if female==1 & estado==1 & cat_ocup==3 & ano4==2013 & formal==1, nograph generate(fx113fs) at(x)
label var fx013fs "Men FS 2015"
label var fx113fs "Women FS 2015"
line fx013fs fx113fs x, sort ytitle(Density)

//IS
drop x fx
kdensity logwage if estado==1 & cat_ocup==3 & ano4==2013 & formal==0, nograph generate(x fx)
kdensity logwage if female==0 & estado==1 & cat_ocup==3 & ano4==2013 & formal==0, nograph generate(fx013is) at(x)
kdensity logwage if female==1 & estado==1 & cat_ocup==3 & ano4==2013 & formal==0, nograph generate(fx113is) at(x)
label var fx013is "Men IS 2013"
label var fx113is "Women IS 2013"
line fx013is fx113is x, sort ytitle(Density)

//2018
///FS
drop x fx
kdensity logwage if estado==1 & cat_ocup==3 & ano4==2018 & formal==1, nograph generate(x fx)
kdensity logwage if female==0 & estado==1 & cat_ocup==3 & ano4==2018 & formal==1, nograph generate(fx018fs) at(x)
kdensity logwage if female==1 & estado==1 & cat_ocup==3 & ano4==2018 & formal==1, nograph generate(fx118fs) at(x)
label var fx018fs "Men FS 2018"
label var fx118fs "Women FS 2018"
line fx018fs fx118fs x, sort ytitle(Density)

//IS
drop x fx
kdensity logwage if estado==1 & cat_ocup==3 & ano4==2018 & formal==0, nograph generate(x fx)
kdensity logwage if female==0 & estado==1 & cat_ocup==3 & ano4==2018 & formal==0, nograph generate(fx018is) at(x)
kdensity logwage if female==1 & estado==1 & cat_ocup==3 & ano4==2018 & formal==0, nograph generate(fx118is) at(x)
label var fx018is "Men IS 2018"
label var fx118is "Women IS 2018"
line fx018is fx118is x, sort ytitle(Density)


//Mean wage
forvalues d = 2003/2014{
xtile decile`d' = logwage if ano4== `d' , n(10)
replace decile`d' = 0 if decile`d'==.
	}
forvalues d = 2016/2018{
xtile decile`d' = logwage if ano4== `d' , n(10)
replace decile`d' = 0 if decile`d'==.
	}

gen decile = decile2003 + decile2004 + decile2005 + decile2006 + decile2007 + decile2008 + decile2009 + decile2010 + decile2011 + decile2012 + decile2013 + decile2014 + decile2016 + decile2017 + decile2018
drop decile2003 decile2004 decile2005 decile2006 decile2007 decile2008 decile2009 decile2010 decile2011 decile2012 decile2013 decile2014 decile2016 decile2017 decile2018

cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q"
gen hourlywage = p21/hour

forvalues m = 2003/2014{
tabout decile female if ano4==`m' & formal==1 using mean.xls, c(mean logwage) h3(|  FS `m' |  FS `m'|  FS `m'| ) f(3 3 3) sum  append 	
	}
	
forvalues m = 2016/2018{
tabout decile female if ano4==`m' & formal==1 using mean.xls, c(mean logwage) h3(|  FS `m' |  FS `m'|  FS `m'| ) f(3 3 3) sum  append 	
	}	

forvalues m = 2003/2014{
tabout decile female if ano4==`m' & formal==0 using mean.xls, c(mean logwage) h3(|  IS `m' |  IS `m'|  IS `m'| )  f(3 3 3) sum  append 	
	}	
	
forvalues m = 2016/2018{
tabout decile female if ano4==`m' & formal==0 using mean.xls, c(mean logwage) h3(|  FS `m' |  FS `m'|  FS `m'| ) f(3 3 3) sum  append 	
	}		
	
forvalues m = 2003/2014{
tabout decile female if ano4==`m' & formal==1 using meanwage.xls, c(mean p21) h3(|  FS `m' |  FS `m'|  FS `m'| ) f(3 3 3) sum  append 	
tabout decile female if ano4==`m' & formal==0 using meanwage.xls, c(mean p21) h3(|  IS `m' |  IS `m'|  IS `m'| )  f(3 3 3) sum  append 	
	}
	
forvalues m = 2016/2018{
tabout decile female if ano4==`m' & formal==1 using meanwage.xls, c(mean p21) h3(|  FS `m' |  FS `m'|  FS `m'| ) f(3 3 3) sum  append 	
tabout decile female if ano4==`m' & formal==0 using meanwage.xls, c(mean p21) h3(|  FS `m' |  FS `m'|  FS `m'| ) f(3 3 3) sum  append 	
	}		
	
// Participation and self selection bias

tabout estado female using participation.xls, c(freq col) f(1 3) replace
