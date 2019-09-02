use "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q/FINAL DATABASE.dta"
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q/results"

//////////////////Selection correction////////////////////////////////////

/////////Wage equation variables ///////////////
global X age agesq head primaryinc primary secondaryinc secondary universityinc university child2 child4 child12 child16 fulltime married city migrant public NOA NEA Cuyo Pampeana Patagonia A B C D E F G H I J K L M N O P Q R S T U 
/////////Selection equation variables ///////////////////////////////
global Z age agesq head income primaryinc primary secondaryinc secondary universityinc university child2 child4 child12 child16 married city migrant NOA NEA Cuyo Pampeana Patagonia


/////////Heckman procedure for men/////////////
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q/results/Heckman"
foreach a in 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2016 2017 2018{
	heckman logwage $X if ano4==`a' & female==0, select($Z) twostep mills(lambdaM`a')
	outreg2 using heckmanM.xls , append ctitle(HeckmanM`a')
	}	

/////////Heckman procedure for women////////////////////////////////////
foreach a in 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2016 2017 2018{
	heckman logwage $X if ano4==`a' & female==1, select($Z) twostep mills(lambdaF`a')
	outreg2 using heckmanW.xls , append ctitle(HeckmanW`a')
	}
	
//////////////////Gap per quantile////////////////////////////////////
/////////Formal sector/////////////////////
cd "/Users/Valentina/Desktop/Msc Economics - Warwick/Dissertation Wage Gap/Database/4Q/results"

foreach a in 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2016 2017 2018{

foreach q in 1 2 3 4 5 6 7 8 9 {
////Men
rifreg logwage $X lambdaM`a' if female == 0 & ano4==`a' & formal==1 , q(0.`q') re(rif_m`q'`a')
estimates store M`a'`q'fs

test A B C D E F G H I J K L M N O P Q R S T U
local p= cond(r(p)<0.001,"P<0.001", "P=`:di %5.3f `=`r(p)'''"  )

test primaryinc primary secondaryinc secondary universityinc university 
local l= cond(r(p)<0.001,"P<0.001", "P=`:di %5.3f `=`r(p)'''"  )

test NOA NEA Cuyo Pampeana Patagonia
local m= cond(r(p)<0.001,"P<0.001", "P=`:di %5.3f `=`r(p)'''"  )

outreg2 using FSrifregM.xls , append ctitle(Rifreg`a'`q') addtext(Sector dummies, `p' , Education dummies, `l', Region dummies,`m' )

///Women
rifreg logwage $X lambdaF`a' if female == 1 & ano4==`a' & formal==1 , q(0.`q') re(rif_f`q'`a')
estimates store F`a'`q'fs

test A B C D E F G H I J K L M N O P Q R S T U
local p= cond(r(p)<0.001,"P<0.001", "P=`:di %5.3f `=`r(p)'''"  )

test primaryinc primary secondaryinc secondary universityinc university 
local l= cond(r(p)<0.001,"P<0.001", "P=`:di %5.3f `=`r(p)'''"  )

test NOA NEA Cuyo Pampeana Patagonia
local m= cond(r(p)<0.001,"P<0.001", "P=`:di %5.3f `=`r(p)'''"  )

outreg2 using FSrifregW.xls , append ctitle(Rifreg`a'`q') addtext(Sector dummies, `p' , Education dummies, `l', Region dummies,`m' )

//Gap
oaxaca8 M`a'`q'fs F`a'`q'fs, detail esave
outreg2 using FSgap.xls , append ctitle(gap`a'`q')

}
	}
	
	
///////////Informal sector////////////////
////Loop for all the years////
foreach a in 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2016 2017 2018{

foreach q in 1 2 3 4 5 6 7 8 9 {

rifreg logwage $X lambdaM`a' if female == 0 & ano4==`a' & formal==0 , q(0.`q') re(rif_m`q'`a'is)
estimates store M`a'`q'is

test A B C D E F G H I J K L M N O P Q R S T U
local p= cond(r(p)<0.001,"P<0.001", "P=`:di %5.3f `=`r(p)'''"  )

test primaryinc primary secondaryinc secondary universityinc university 
local l= cond(r(p)<0.001,"P<0.001", "P=`:di %5.3f `=`r(p)'''"  )

test NOA NEA Cuyo Pampeana Patagonia
local m= cond(r(p)<0.001,"P<0.001", "P=`:di %5.3f `=`r(p)'''"  )

outreg2 using ISrifregM.xls , append ctitle(Rifreg`a'`q') addtext(Sector dummies, `p' , Education dummies, `l', Region dummies,`m' )


/////Women
rifreg logwage $X lambdaF`a' if female == 1 & ano4==`a' & formal==0 , q(0.`q') re(rif_f`q'`a'is)
estimates store F`a'`q'is

test A B C D E F G H I J K L M N O P Q R S T U
local p= cond(r(p)<0.001,"P<0.001", "P=`:di %5.3f `=`r(p)'''"  )

test primaryinc primary secondaryinc secondary universityinc university 
local l= cond(r(p)<0.001,"P<0.001", "P=`:di %5.3f `=`r(p)'''"  )

test NOA NEA Cuyo Pampeana Patagonia
local m= cond(r(p)<0.001,"P<0.001", "P=`:di %5.3f `=`r(p)'''"  )

outreg2 using ISrifregW.xls , append ctitle(Rifreg`a'`q') addtext(Sector dummies, `p' , Education dummies, `l', Region dummies,`m' )

/////Gap
oaxaca8 M`a'`q'is F`a'`q'is , detail esave
outreg2 using ISgap.xls , append ctitle(gap`a'`q')

}
	}	


////Gender pay gap at the mean/////	
	
foreach a in 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2016 2017 2018{
	heckman logwage $X if female==1 & ano4==`a', select($Z) twostep mills(millsW`a')
	heckman logwage $X if female==0 & ano4==2003, select($Z) twostep mills(millsM`a')

	replace millsW`a'=0 if millsW`a'==.
	replace millsM`a'=0 if millsM`a'==.

	gen mills`a' = millsW`a' + millsM`a'

	oaxaca logwage $X mills`a' if ano4==`a' & formal==1, by(female) adjust(mills`a') detail relax
	outreg2 using Oaxaca.xls , append ctitle(FS`a') 
	oaxaca logwage $X mills`a' if ano4==`a' & formal==0, by(female) adjust(mills`a') detail relax
	outreg2 using Oaxaca.xls , append ctitle(IS`a') 
	}
