CodeSystem: SAFRHealthareCapacityGroupCSExample
//Id: healthcare-capacity-codes
Title: "Healthcare Capacity Reporting Group Code System"
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = true
* ^description = "This CodeSystem defines coded concepts for Healthcare Capacity Group reporting to US SAFR. This CodeSystem is experimental, and is expected to be replaced by LOINC codes once they have been assigned."
* ^caseSensitive = false
* #AllBeds "All Beds Census" "Census across all beds, including all specialty beds (i.e., CMS-certified rehabilitation, CMS-certified psychiatric, obstetrics, NICU [all levels], and nursery beds)."
* #AdultTotal "Adult Total Census" "Census across all adult beds (Adult ICU, Adult PCU, Adult MT/MS and Adult OBS), excluding CMS-certified rehabilitation, CMS-certified psychiatric, and obstetrics beds."
* #AdultICU "Adult ICU Census" "Census across all adult intensive care or critical care beds. Adult Critical Care Units provide care and treatment for the highest acuity patients. Interventions may include ventilators, hemodynamic monitoring, IV drug therapies and a variety of procedures."
* #AdultICULOC "Adult ICU-LOC Census" "Census of all patients meeting the admission criteria for critical care (i.e., require ICU level of care) across all adult intensive care or critical care beds. Excludes patients in these beds that do not meet ICU criteria."
* #AdultNonICU "Adult Non- ICU Census" "Census across all adult PCU, MT/MS, and OBS beds."
* #AdultPCU "Adult PCU Census" "Important note for PCU beds: if adult PCU bed census is unable to be separately collected, please make sure the adult PCU census is included in the adult MT/MS census, adult non-ICU census, and adult total bed census. Census across all adult progressive care, intermediate care, or step-down beds. Units that provide care for adult moderate severity of illness and comorbid patients."
* #AdultMTMS "Adult MT/MS Census" "Census across all adult telemetry and general medicine/surgery/acute care beds. Telemetry units provide continuous electrocardiographic (ECG) monitoring of the adult patient’s heart rhythm using specialized technology and equipment. General medicine units, surgery units, or units with combination of both medical and surgical adult patients. Also known as general care or acute care units. Provides care for the least acute patients. Patient assessment and monitoring can range from 4-8 hours, floors have higher patient to nurse ratio than PCU/ICU."
* #AdultObs "Adult OBS Census" "Census across all adult observation beds. Adult patient status is observation (outpatient status) and may be housed on an observation unit."
* #PedsTotal "Peds Total Census" "Census across all pediatric beds (Peds ICU, Peds PCU, Peds MT/MS, and Peds OBS), excluding specialty nursery and NICU [all levels] specialty beds."
* #PedsICU "Peds ICU Census" "Census across all pediatric intensive care or critical care beds. Pediatric Intensive Care Unit (PICU) also known as Pediatric Critical Care Unit. Interventions may include ventilators, hemodynamic monitoring, IV drug therapies, and a variety of procedures."
* #PedsICULOC "Peds ICU- LOC Census" "Census of all patients meeting the admission criteria for critical care (i.e., require ICU level of care) across all pediatric intensive care or critical care beds. Excludes patients in these beds that do not meet ICU criteria."
* #PedsNonICU "Peds Non- ICU Census" "Census across all pediatric PCU, MT/MS, and OBS beds."
* #PedsPCU "Peds PCU Census" "Important note for PCU beds: if pediatric PCU bed census is unable to be separately collected, please make sure the pediatric PCU census is included in the both the pediatric MT/MS census, pediatric non-ICU census, and pediatric total bed census. Census across all pediatric progressive care, intermediate care or step-down beds. Units that provide care for pediatric moderate severity of illness and comorbid patients."
* #PedsMTMS "Peds MT/MS Census" "Census across all pediatric telemetry and general medicine/surgery/acute care beds. Pediatric telemetry units provide continuous electrocardiographic (ECG) monitoring of the patient’s heart rhythm using specialized technology and equipment. Pediatric general medicine units, surgery units, or units with combination of both medical and surgical patients. Also known as general care or acute care units. Provides care for the least acute patients. Patient assessment and monitoring can range from 4-8 hours, floors have higher patient to nurse ratio than PCU/ICU."
* #PedsObs "Peds OBS Census" "Census across all pediatric observation beds. Pediatric patient status is observation (outpatient status) and may be housed on observation unit."
* #SpecialtyTotal "Specialty Total Census" "Census across all specialty beds (i.e., CMS-certified rehabilitation, CMS-certified psychiatric, obstetrics, NICU [all levels], and nursery beds)."
* #SpecialtyNonCrib "Specialty (Non-Crib) Census" "Census across non-crib specialty beds (i.e., obstetrics, CMS-certified psychiatric, and CMS-certified rehabilitation specialty beds), excluding NICU (all levels) and nursery specialty beds."
* #OB "Specialty OB Census" "Census across all obstetric beds. Obstetrical or post-partum units provide care to low- and high-risk pregnant women."
* #NICU "Specialty NICU Census" "Census across all NICU beds (includes all levels: level 1, level 2, level 3, level 3 Plus, and level 4). Neonatal Intensive Care Units - specializes in the care of ill or premature newborn infants."
* #NICU4 "Specialty NICU 4 Census" "Census across all level 4 NICU beds. Level 4: units include the capabilities of level 3 Plus with additional capabilities and considerable experience in the care of the most complex and critically ill newborn infants and should have pediatric medical and pediatric surgical specialty consultants continuously available 24 hours a day."
* #NICU3 "Specialty NICU 3 Occupied" "Census across all level 3 Plus NICU beds. Level 3 Plus: includes level 3 care with general pediatric surgery."
* #NICU3Plus "Specialty NICU 3 Plus Census" "Census across all level 3 Plus NICU beds. Level 3 Plus: includes level 3 care with general pediatric surgery."
* #NICU2 "Specialty NICU 2 Census" "Census across all level 2 NICU beds. Level 2: should be reserved for stable or moderately ill newborn infants who are born at ≥32 weeks’ gestation or who weigh ≥1500g at birth with problems that are expected to resolve rapidly and who would not be anticipated to need subspecialty-level services on an urgent basis."
* #Nursery "Specialty Nursery Census" "Census across all nursery beds. Also called a newborn or a well-baby nursery. Goal is to examine, treat and monitor the health of the newborn. Well-baby nursery includes any room housing newborns who do not need continuing care or special care of intensive care newborn services. The nursery houses healthy babies that do not have any complications."
* #NICU1 "Specialty NICU 1 Census" "Important note for level 1 NICU beds: this field should only be used if you have newborn or well-baby nursery beds with additional level of care that does not meet the criteria of level 2 NICU beds. Census across all level 1 NICU beds. Level 1: facilities provide a basic level of care to neonates who are low risk. They have the capability to perform neonatal resuscitation at every delivery and to evaluate and provide routine postnatal care for healthy newborn infants."
* #AdultPsych "Specialty Adult Psych Census" "Census across all CMS-certified adult psychiatric beds. Psychiatric units specialize in the treatment of serious mental disorders. Care includes monitoring and providing appropriate interventions for behavioral or psychosocial issues."
* #PedsPsych "Specialty Peds Psych Census" "Census across all CMS-certified pediatric psychiatric beds. Specialize in the treatment of serious mental disorders. Care includes monitoring and providing appropriate interventions for behavioral or psychosocial issues."
* #Rehab "Specialty Rehab Census" "Census across all CMS-certified rehabilitation beds. Inpatient rehabilitation units provide services to people who have had an acute illness, injury, or accident resulting in significant functional decline. Intensive physical medicine therapies and treatment regimens are delivered by a multidisciplinary team of nurses, PT, OT, and specially trained physicians."
* #SurgeActiveTotal "Surge Total Active Census" "Census across all activated surge beds. Active surge beds are any non-licensed beds that can be utilized in an emergency for surge locations and are currently in use or available for use as ICU, PCU, MT/MS, or OBS beds."
* #SurgeInactiveTotal "Surge Total Inactive Occupied" "Count of occupied inactive surge beds across all levels of care. Inactive surge beds are any non-licensed beds that can be utilized in an emergency for surge locations for use as ICU, PCU, MT/MS, or OBS beds but are not currently in use or active."
* #SurgeActiveICU "Surge ICU Active Census" "Census across all activated intensive care or critical care surge beds. Active ICU surge beds are any non-licensed beds that can be utilized in an emergency for surge locations and are currently in use or available for use for intensive or critical care patients."
* #SurgeInactiveICU "Surge ICU Inactive Occupied" "Count of occupied inactive intensive or critical care surge beds. Inactive ICU surge beds are any non-licensed beds that can be utilized in an emergency for surge locations for use for intensive or critical care patients but are not currently in use or active."
* #SurgeActiveNonICU "Surge Non- ICU Active Census" "Census across all activated PCU, MT, MS, and OBS surge beds. Active Non-ICU surge beds are any non-licensed beds that can be utilized in an emergency for surge locations and are currently in use or available for use as PCU, MT/MS, or OBS beds."
* #SurgeInactiveNonICU "Surge Non- ICU Inactive Occupied" "Count of occupied inactive PCU, MT, MS, and OBS surge beds. Inactive Non-ICU surge beds are any non-licensed beds that can be utilized in an emergency for surge locations for use as PCU, MT/MS, or OBS beds but are not currently in use or active."
* #Burn "Burn Bed Census" "Census across all burn unit beds."
* #NegativePressure "Neg Pressure Bed Census" "Census across all negative pressure beds."
* #AdultED "Adult ED Total Census" "Census of all adult patients in the emergency department. This includes all adult patients registered in the emergency department regardless of physical location within the department."
* #PedsED "Peds ED Census" "Census of all pediatric patients in the emergency department. This includes all pediatric patients registered in the emergency department regardless of physical location within the department."
* #TotalED "Total ED Census" "Census of all patients in the emergency department. This includes all patients registered in the emergency department regardless of physical location within the department."
