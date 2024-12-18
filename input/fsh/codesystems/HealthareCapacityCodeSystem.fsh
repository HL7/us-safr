CodeSystem: SAFRHealthareCapacityCS
//Id: healthcare-capacity-codes
Title: "Healthcare Capacity Reporting Code System"
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = true
* ^description = "This CodeSystem defines coded concepts for Healthcare Capacity reporting to US SAFR. This CodeSystem is experimental, and is expected to be replaced by LOINC codes once they have been assigned."
* ^caseSensitive = false
* #HOSP "Hospital"
* #IRF "Inpatient Rehabilitation"
* #IPF "Inpatient Psychiatric"
* #CHLD "Children's or Pediatric"
* #OTH "Other facility-within-facility or subunit"
* #BedCapacityReporting "Hospital bed capaicty report"
* #AllBedsOccupied "Census across all beds, including all specialty beds (i.e., CMS-certified rehabilitation, CMS-certified psychiatric, obstetrics, NICU [all levels], and nursery beds)."
* #AllBedsUnoccupied "Count of unoccupied staffed and unblocked beds across all beds, including specialty beds (i.e., CMS-certified rehabilitation, CMS-certified psychiatric, obstetrics, NICU [all levels], and nursery)."
* #AdultTotalOccupied "Census across all adult beds (Adult ICU, Adult PCU, Adult MT/MS and Adult OBS), excluding CMS-certified rehabilitation, CMS-certified psychiatric, and obstetrics beds."
* #AdultTotalUnoccupied "Count of unoccupied staffed and unblocked beds across all adult beds (Adult ICU, Adult PCU, Adult MT/MS and Adult OBS), excluding CMS-certified rehabilitation, CMS-certified psychiatric, and obstetrics beds."
* #AdultICUOccupied "Census across all adult intensive care or critical care beds. Adult Critical Care Units provide care and treatment for the highest acuity patients. Interventions may include ventilators, hemodynamic monitoring, IV drug therapies and a variety of procedures."
* #AdultICUUnoccupied "Count of unoccupied staffed and unblocked beds across all adult intensive care or critical care beds. Adult Critical Care Units provide care and treatment for the highest acuity patients. Interventions may include ventilators, hemodynamic monitoring, IV drug therapies and a variety of procedures."
* #AdultICU_LOCOccupied "Census of all patients meeting the admission criteria for critical care (i.e. require ICU level of care) across all adult intensive care or critical care beds. Excludes patients in these beds that do not meet ICU criteria."
* #AdultNonICUOccupied "Census across all adult PCU, MT/MS and OBS beds."
* #AdultNonICUUnoccupied "Count of unoccupied staffed and unblocked beds across all adult PCU, MT, MS and OBS beds."
* #AdultPCUOccupied "Important note for PCU beds: if adult PCU bed census is unable to be separately collected, please make sure the adult PCU census is included in the adult MT/MS census, adult non-ICU census, and adult total bed census. Census across all adult progressive care, intermediate care or step-down beds. Units that provide care for adult moderate severity of illness and comorbid patients."
* #AdultPCUUnoccupied "Important note for PCU beds: if adult PCU unoccupied bed count is unable to be separately collected, please make sure the adult PCU unoccupied bed count is included in the adult MT/MS unoccupied bed count, adult non-ICU unoccupied bed count, and adult total unoccupied bed count. Count of unoccupied staffed and unblocked beds across all adult progressive care, intermediate care or step-down beds. Units that provide care for adult moderate severity of illness and comorbid patients."
* #AdultMTMSOccupied "Census across all adult telemetry and general medicine/surgery/acute care beds. Telemetry units provide continuous electrocardiographic (ECG) monitoring of the adult patient’s heart rhythm using specialized technology and equipment. General medicine units, surgery units or units with combination of both medical and surgical adult patients. Also known as general care or acute care units."
* #AdultMTMSUnoccupied "Count of unoccupied staffed and unblocked beds across all adult telemetry and general medicine/surgery/acute care beds. Telemetry units provide continuous electrocardiographic (ECG) monitoring of the adult patient’s heart rhythm using specialized technology and equipment. General medicine units, surgery units or units with combination of both medical and surgical adult patients. Also known as general care or acute care units."
* #AdultObsOccupied "Census across all adult observation beds. Adult patient status is observation (outpatient status) and may be housed on an observation unit."
* #AdultObsUnoccupied "Count of unoccupied staffed and unblocked beds across all adult observation beds. Adult patient status is observation (outpatient status) and may be housed on an observation unit."
* #PedsTotalOccupied "Census across all pediatric beds (Peds ICU, Peds PCU, Peds MT/MS and Peds OBS), excluding specialty nursery and NICU [all levels] specialty beds."
* #PedsTotalUnoccupied "Count of unoccupied staffed and unblocked beds across all pediatric beds (Peds ICU, Peds PCU, Peds MT/MS and Peds OBS), excluding  specialty nursery and NICU [all levels] specialty beds."
* #PedsICUOccupied "Census across all pediatric intensive care or critical care beds. Pediatric Intensive Care Unit (PICU) also known as Pediatric Critical Care Unit. Interventions may include ventilators, hemodynamic monitoring, IV drug therapies and a variety of procedures."
* #PedsICUUnoccupied "Count of unoccupied staffed and unblocked beds across all pediatric intensive care or critical care beds. Pediatric Intensive Care Unit (PICU) also known as Pediatric Critical Care Unit. Interventions may include ventilators, hemodynamic monitoring, IV drug therapies and a variety of procedures."
* #PedsICU_LOCOccupied "Census of all patients meeting the admission criteria for critical care (i.e. require ICU level of care) across all pediatric intensive care or critical care beds. Excludes patients in these beds that do not meet ICU criteria."
* #PedsNonICUOccupied "Census across all pediatric PCU, MT/MS and OBS beds."
* #PedsNonICUUnoccupied "Count of unoccupied staffed and unblocked beds across all pediatric PCU, MT, MS and OBS beds."
* #PedsPCUOccupied "Important note for PCU beds: if pediatric PCU bed census is unable to be separately collected, please make sure the pediatric PCU census is included in the both the pediatric MT/MS census, pediatric non-ICU census, and pediatric total bed census. Census across all pediatric progressive care, intermediate care or step-down beds. Units that provide care for pediatric moderate severity of illness and comorbid patients."
* #PedsPCUUnoccupied "Important note for PCU beds: if pediatric PCU unoccupied bed count is unable to be separately collected, please make sure the pediatric PCU unoccupied bed count is included in the pediatric MT/MS unoccupied bed count, pediatric non-ICU unoccupied bed count, and pediatric total unoccupied bed count. Count of unoccupied staffed and unblocked beds across all pediatric progressive care, intermediate care or step-down beds. Units that provide care for pediatric moderate severity of illness and comorbid patients."
* #PedsMTMSOccupied "Census across all pediatric telemetry and general medicine/surgery/acute care beds. Pediatric telemetry units provide continuous electrocardiographic (ECG) monitoring of the patient’s heart rhythm using specialized technology and equipment. Pediatric general medicine units, surgery units or units with combination of both medical and surgical patients. Also known as general care or acute care units. Provides care for the least acute patients. Patient assessment and monitoring can range from 4-8 hours, floors have higher patient to nurse ratio than PCU/ICU."
* #PedsMTMSUnoccupied "Count of unoccupied staffed and unblocked beds across all pediatric telemetry and general medicine/surgery/acute care beds. Pediatric telemetry units provide continuous electrocardiographic (ECG) monitoring of the patient’s heart rhythm using specialized technology and equipment. Pediatric general medicine units, surgery units or units with combination of both medical and surgical patients. Also known as general care or acute care units. Provides care for the least acute patients. Patient assessment and monitoring can range from 4-8 hours, floors have higher patient to nurse ratio than PCU/ICU."
* #PedsObsOccupied "Census across all pediatric observation beds. Pediatric patient status is observation (outpatient status) and may be housed on observation unit."
* #PedsObsUnoccupied "Count of unoccupied staffed and unblocked beds across all pediatric observation beds. Pediatric patient status is observation (outpatient status) and may be housed on observation unit."
* #SpecialtyTotalOccupied "Census across all specialty beds (i.e., CMS-certified rehabilitation, CMS-certified psychiatric, obstetrics, NICU [all levels], and nursery beds)."
* #SpecialtyTotalUnoccupied "Count of unoccupied staffed and unblocked beds across all specialty beds (i.e., CMS-certified rehabilitation, CMS-certified psychiatric, obstetrics, NICU [all levels], and nursery beds)."
* #SpecialtyNonCribOccupied "Census across non-crib specialty beds (i.e. obstetrics, CMS-certified psychiatric, and CMS-certified rehabilitation specialty beds), excluding NICU (all levels) and nursery specialty beds."
* #SpecialtyNonCribUnoccupied "Count of unoccupied staffed and unblocked beds across non-crib specialty beds (i.e. obstetrics, CMS-certified psychiatric, and CMS-certified rehabilitation specialty beds), excluding NICU (all levels) and nursery specialty beds."
* #OBOccupied "Census across all obstetric beds. Obstetrical or post-partum units provide care to low and high-risk pregnant women."
* #OBUnoccupied "Count of unoccupied staffed and unblocked beds across all obstetric beds. Obstetrical or postpartum units provide care to low and high-risk pregnant women."
* #NICUOccupied "Census across all NICU beds (includes all levels: level 1, level 2, level 3, level 3 Plus, and level 4). Neonatal Intensive Care Units - specializes in the care of ill or premature newborn infants."
* #NICUUnoccupied "Count of unoccupied staffed and unblocked beds across all NICU beds (includes all levels: level 1, level 2, level 3, level 3 Plus, and level 4). Neonatal Intensive Care Units - specializes in the care of ill or premature newborn infants."
* #NICU4Occupied "Census across all level 4 NICU beds. Level 4: units include the capabilities of level 3 Plus with additional capabilities and considerable experience in the care of the most complex and critically ill newborn infants and should have pediatric medical and pediatric surgical specialty consultants continuously available 24 hours a day."
* #NICU4Unoccupied "Count of unoccupied staffed and unblocked beds across all level 4 NICU beds. Level 4: units include the capabilities of level 3 Plus with additional capabilities and considerable experience in the care of the most complex and critically ill newborn infants and should have pediatric medical and pediatric surgical specialty consultants continuously available 24 hours a day."
* #NICU3Unoccupied "Count of unoccupied staffed and unblocked beds across all level 3 Plus NICU beds. Level 3 Plus: includes level 3 care with general pediatric surgery."
* #NICU3PlusOccupied "Census across all level 3 Plus NICU beds. Level 3 Plus: includes level 3 care with general pediatric surgery."
* #NICU3PlusUnoccupied "Count of unoccupied staffed and unblocked beds across all level 3 NICU beds. Level 3: should be reserved for infants who are born at <32 weeks’ gestation, weigh <1500g at birth, or have medical or surgical conditions, regardless of gestational age."
* #NICU3Occupied "Census across all level 3 NICU beds. Level 3: should be reserved for infants who are born at <32 weeks’ gestation, weigh <1500g at birth, or have medical or surgical conditions, regardless of gestational age."
* #NICU2Occupied "Census across all level 2 NICU beds. Level 2: should be reserved for stable or moderately ill newborn infants who are born at ≥32 weeks’ gestation or who weigh ≥1500g at birth with problems that are expected to resolve rapidly and who would not be anticipated to need subspecialty-level services on an urgent basis."
* #NICU2Unoccupied "Count of unoccupied staffed and unblocked beds across all level 2 NICU beds. Level 2: should be reserved for stable or moderately ill newborn infants who are born at ≥32 weeks’ gestation or who weigh ≥1500g at birth with problems that are expected to resolve rapidly and who would not be anticipated to need subspecialty-level services on an urgent basis."
* #NurseryOccupied "Census across all nursery beds. Also called a newborn or a well-baby nursery. Goal is to examine, treat and monitor the health of the newborn. Well-baby nursery includes any room housing newborns who do not need continuing care or special care of intensive care newborn services. The nursery houses healthy babies that do not have any complications."
* #NurseryUnoccupied "Count of unoccupied staffed and unblocked beds across all nursery beds. Also called a newborn or a well-baby nursery. Goal is to examine, treat and monitor the health of the newborn. Well-baby nursery includes any room housing newborns who do not need continuing care or special care of intensive care newborn services.The nursery houses healthy babies that do not have any complications."
* #NICU1Occupied "Important note for level 1 NICU beds: this field should only be used if you have newborn or well-baby nursery beds with additional level of care that does not meet the criteria of level 2 NICU beds. Census across all level 1 NICU beds. Level 1: facilities provide a basic level of care to neonates who are low risk. They have the capability to perform neonatal resuscitation at every delivery and to evaluate and provide routine postnatal care for healthy newborn infants."
* #NICU1Unoccupied "Important note for level 1 NICU beds: this field should only be used if you have newborn or well-baby nursery beds with additional level of care that does not meet the criteria of level 2 NICU beds.Count of unoccupied staffed and unblocked beds across all level 1 NICU beds. Level 1: facilities provide a basic level of care to neonates who are low risk. They have the capability to perform neonatal resuscitation at every delivery and to evaluate and provide routine postnatal care for healthy newborn infants."
* #AdultPsychOccupied "Census across all CMS-certified adult psychiatric beds. Psychiatric units specialize in the treatment of serious mental disorders. Care includes monitoring and providing appropriate interventions for behavioral or psychosocial issues."
* #AdultPsychUnoccupied "Count of unoccupied staffed and unblocked beds across all CMS-certified adult psychiatric beds. Psychiatric units specialize in the treatment of serious mental disorders. Care includes monitoring and providing appropriate interventions for behavioral or psychosocial issues."
* #PedsPsychOccupied "Census across all CMS-certified pediatric psychiatric beds. Specialize in the treatment of serious mental disorders. Care includes monitoring and providing appropriate interventions for behavioral or psychosocial issues."
* #PedsPsychUnoccupied "Count of unoccupied staffed and unblocked beds across all CMS-certified pediatric psychiatric beds. Specialize in the treatment of serious mental disorders. Care includes monitoring and providing appropriate interventions for behavioral or psychosocial issues."
* #RehabOccupied "Census across all CMS-certified rehabilitation beds. Inpatient rehabilitation units provide services to people who have had an acute illness, injury, or accident resulting in significant functional decline. Intensive physical medicine therapies and treatment regimens are delivered by a multidisciplinary team of nurses, PT, OT and specially trained physicians."
* #RehabUnoccupied "Count of unoccupied staffed and unblocked beds across all CMS-certified rehabilitation beds. Inpatient rehabilitation units provide services to people who have had an acute illness, injury, or accident resulting in significant functional decline. Intensive physical medicine therapies and treatment regimens are delivered by a multidisciplinary team of nurses, PT, OT and specially trained physicians."
* #SurgeActiveTotalOccupied "Census across all activated surge beds. Active surge beds are any non-licensed beds that can be utilized in an emergency for surge locations and are currently in use or available for use as ICU, PCU, MT/MS or OBS beds."
* #SurgeActiveTotalUnoccupied "Count of unoccupied activated surge beds across all levels of care. Active surge beds are any non-licensed beds that can be utilized in an emergency for surge locations and are currently in use or available for use as ICU, PCU, MT/MS or OBS beds."
* #SurgeInactiveTotalOccupied "Count of occupied inactive surge beds across all levels of care. Inactive surge beds are any non-licensed beds that can be utilized in an emergency for surge locations for use as ICU, PCU, MT/MS or OBS beds but are not currently in use or active."
* #SurgeInactiveTotalUnoccupied "Count of unoccupied inactive surge beds across all levels of care. Inactive surge beds are any non-licensed beds that can be utilized in an emergency for surge locations for use as ICU, PCU, MT/MS or OBS beds but are not currently in use or active."
* #SurgeActiveICUOccupied "Census across all activated intensive care or critical care surge beds. Active ICU surge beds are any non-licensed beds that can be utilized in an emergency for surge locations and are currently in use or available for use for intensive or critical care patients."
* #SurgeActiveICUUnoccupied "Count of unoccupied activated intensive or critical care surge beds. Active ICU surge beds are any non-licensed beds that can be utilized in an emergency for surge locations and are currently in use or available for use for intensive or critical care patients."
//* #SurgeInactiveICUOccupied "Count of occupied inactive intensive or critical care surge beds. Inactive ICU surge beds are any non-licensed beds that can be utilized in an emergency for surge locations for use for intensive or critical care patients but are not currently in use or active."
* #SurgeInactiveICUUnoccupied "Count of unoccupied inactive intensive or critical care surge beds. Inactive ICU surge beds are any non-licensed beds that can be utilized in an emergency for surge locations for use for intensive or critical care patients but are not currently in use or active."
* #SurgeActiveNonICUOccupied "Census across all activated PCU, MT, MS and OBS surge beds. Active Non-ICU surge beds are any non-licensed beds that can be utilized in an emergency for surge locations and are currently in use or available for use as PCU, MT/MS or OBS beds."
* #SurgeActiveNonICUUnoccupied "Count of unoccupied activated PCU, MT, MS and OBS surge beds. Active Non-ICU surge beds are any non-licensed beds that can be utilized in an emergency for surge locations and are currently in use or available for use as PCU, MT/MS or OBS beds."
* #SurgeInactiveNonICUOccupied "Count of occupied inactive PCU, MT, MS and OBS surge beds. Inactive Non-ICU surge beds are any non-licensed beds that can be utilized in an emergency for surge locations for use as PCU, MT/MS or OBS beds but are not currently in use or active."
* #SurgeInactiveNonICUUnoccupied "Count of unoccupied inactive PCU, MT, MS and OBS surge beds. Inactive Non-ICU surge beds are any non-licensed beds that can be utilized in an emergency for surge locations for use as PCU, MT/MS or OBS beds but are not currently in use or active."
* #BurnOccupied "Census across all burn unit beds."
* #BurnUnoccupied "Count of unoccupied burn unit beds."
* #NegativePressureOccupied "Census across all negative pressure beds."
* #NegativePressureUnoccupied "Count of unoccupied negative pressure beds."
* #AdultEDCensus "Census of all adult patients in the emergency department"
* #AdultEDAdmittedCensus "Census of all adult patients in the emergency department that have an admit to inpatient or observation order"
* #PedsEDCensus "Census of all pediatric patients in the emergency department"
* #PedsEDAdmittedCensus "Census of all pediatric patients in the emergency department that have an admit to inpatient or observation order"
* #TotalEDCensus "Census of all patients in the emergency department"
* #TotalEDAdmittedCensus "Census of all patients in the emergency department that have an admit to inpatient or observation order"