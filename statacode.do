
## creating binary shock variables and total month number

egen pos2sds_=group(pos2sds)
gen Fpos2sds=(pos2sds_==2)
tabulate Fpos2sds
egen pos1_5sds_=group(pos1_5sds)
 gen Fpos1_5sds=(pos1_5sds_==2)
. egen pos1sds_=group(pos1sds)
.  gen Fpos1sds=(pos1sds_==2)
. egen neg1_5sds_=group(neg1_5sds)
.  gen Fneg1_5sds=(neg1_5sds_==2)
egen neg2sds_=group(neg2sds)
gen Fneg2sds=(neg2sds_==2)
egen posdiff2sd_=group(posdiff2sd)
gen Fposdiff2sd=(posdiff2sd_==2)
. egen posdiff1_5sd_=group(posdiff1_5sd)
. gen Fposdiff1_5sd=(posdiff1_5sd_==2)
gen posshock = Fposdiff2sd|Fpos1_5sds
egen negdiff2sd_=group(negdiff2sd)
gen Fnegdiff2sd=(negdiff2sd_==2)
. egen negdiff1_5sd_=group(negdiff1_5sd)
. gen Fnegdiff1_5sd=(negdiff1_5sd_==2)
gen negshock= Fnegdiff2sd|Fneg1_5sds
gen totnummon_=.
replace totnummon_=0 if year==2016
replace totnummon_= 12 if year == 2017
replace totnummon_ = 24 if year==2018
replace totnummon_=36 if year ==2019
gen totnummon =totnummon_ + month

## keeping facilities within 40km of shoreline 

keep if distance<40
gen ln_count_plus1 =ln(count_+1)
egen facnum=group(uid)
egen districtnum=group(district)
egen regionnum=group(region)
xtset facnum totnummon
gen ln_dist_plus1=ln(distance +1)

## generating median distance, shock and interaction variables 

egen meddist=median(distance)
gen distancemed= distance-meddist
gen upshock=Fpos1_5sds
gen downshock=Fneg1_5sds
gen upshockXdistancemed=upshock*distancemed
gen downshockXdistancemed=downshock*distancemed


reghdfe ln_count_plus1 distancemed upshock upshockXdistancemed L.upshock L.upshockXdistancemed L2.upshock L2.upshockXdistancemed L3.upshock L3.upshockXdistancemed L4.upshock L4.upshockXdistancemed downshock downshockXdistancemed L.downshock L.downshockXdistancemed L2.downshock L2.downshockXdistancemed L3.downshock L3.downshockXdistancemed L4.downshock L4.downshockXdistancemed maizeprice L.maizeprice L2.maizeprice L3.maizeprice L4.maizeprice , absorb(totnummon regionnum) vce(cluster totnummon districtnum)


##for poisson

ppmlhdfe count distancemed upshock upshockXdistancemed L.upshock L.upshockXdistancemed L2.upshock L2.upshockXdistancemed L3.upshock L3.upshockXdistancemed L4.upshock L4.upshockXdistancemed downshock downshockXdistancemed L.downshock L.downshockXdistancemed L2.downshock L2.downshockXdistancemed L3.downshock L3.downshockXdistancemed L4.downshock L4.downshockXdistancemed maizeprice L.maizeprice L2.maizeprice L3.maizeprice L4.maizeprice , absorb(totnummon regionnum) vce(cluster totnummon districtnum)



## for weight regressions and ditrict data with district FE
reghdfe ln_count_plus1 distancemed upshock upshockXdistancemed L.upshock L.upshockXdistancemed L2.upshock L2.upshockXdistancemed L3.upshock L3.upshockXdistancemed L4.upshock L4.upshockXdistancemed downshock downshockXdistancemed L.downshock L.downshockXdistancemed L2.downshock L2.downshockXdistancemed L3.downshock L3.downshockXdistancemed L4.downshock L4.downshockXdistancemed, absorb(totnummon districtnum) vce(cluster totnummon districtnum)



##for cumulative/summed variables 

gen sumupshocks= upshock + L.upshock +L2.upshock +L3.upshock +L4.upshock
gen sumdownshocks= downshock +L.downshock + L2.downshock +L3.downshock +L4.downshock
gen sumupshhocksXdistancemed= sumupshocks*distancemed
gen sumdownshocksXdistancemed= sumdownshocks*distancemed

reghdfe ln_count_plus1 distancemed sumupshocks sumupshocksXdistancemed sumdownshocks sumdownshocksXdistancemed maizeprice L.maizeprice L2.maizeprice L3.maizeprice L4.maizeprice , absorb(totnummon regionnum) vce(cluster totnummon districtnum)
