(define (domain salon_build)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (s6_done)
    (s7_done)
    (s8_done)
    (s9_done)
    (s10_done)
    (s11_done)
    (s12_done)
    (s13_done)
    (s14_done)
    (s15_done)
    (s16_done)
    (s17_done)
    (s18_done)
    (s19_done)
    (s20_done)
    (s21_done)
    (s22_done)
    (s23_done)
    (s24_done)
    (s25_done)
    (s26_done)
    (s27_done)
    (s28_done)
    (s29_done)
    (s30_done)
    (s31_done)
    (s32_done)
    (s33_done)
    (s34_done)
    (s35_done)
    (s36_done)
    (s37_done)
    (s38_done)
    (s39_done)
    (s40_done)
    (s41_done)
    (s42_done)
    (s43_done)
    (s44_done)
    (s45_done)
    (s46_done)
    (s47_done)
    (s48_done)
    (s49_done)
    (s50_done)
  )

  ; 1: Design the salon's interior layout (1 week = 604800s)
  (:durative-action do_step1
    :duration (= ?duration 604800)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_done)))
  )

  ; 2: Host a grand opening party (21600s)
  (:durative-action do_step2
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step2)) (at start (s16_done)) (at start (s46_done)) (at start (s50_done)) (at start (s23_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_done)))
  )

  ; 3: Select and order hydraulic styling chairs (172800s)
  (:durative-action do_step3
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step3)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_done)))
  )

  ; 4: Install plumbing for shampoo stations (259200s)
  (:durative-action do_step4
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step4)) (at start (s8_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_done)))
  )

  ; 5: Launch the online booking portal (86400s)
  (:durative-action do_step5
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step5)) (at start (s37_done)) (at start (s50_done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_done)))
  )

  ; 6: Finalize the employee handbook (172800s)
  (:durative-action do_step6
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step6)) (at start (s24_done)) (at start (s47_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_done)))
  )

  ; 7: Research local zoning laws (345600s)
  (:durative-action do_step7
    :duration (= ?duration 345600)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_done)))
  )

  ; 8: Sign a commercial lease agreement (1 week = 604800s)
  (:durative-action do_step8
    :duration (= ?duration 604800)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_done)))
  )

  ; 9: Pass a building safety inspection (86400s)
  (:durative-action do_step9
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step9)) (at start (s4_done)) (at start (s12_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_done)))
  )

  ; 10: Purchase professional hair care inventory (259200s)
  (:durative-action do_step10
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step10)) (at start (s30_done)) (at start (s34_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_done)))
  )

  ; 11: Hire a team of licensed stylists (2 weeks = 1209600s)
  (:durative-action do_step11
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step11)) (at start (s1_done)) (at start (s25_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_done)))
  )

  ; 12: Submit blueprints for city approval (1 month = 2592000s)
  (:durative-action do_step12
    :duration (= ?duration 2592000)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_done)))
  )

  ; 13: Apply for a general business license (2 weeks = 1209600s)
  (:durative-action do_step13
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step13)) (at start (s40_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_done)))
  )

  ; 14: Install specialized salon lighting (172800s)
  (:durative-action do_step14
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step14)) (at start (s12_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_done)))
  )

  ; 15: Secure a small business loan (1 month = 2592000s)
  (:durative-action do_step15
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step15)) (at start (s13_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_done)))
  )

  ; 16: Apply for a state cosmetology board salon license (2 months = 5184000s)
  (:durative-action do_step16
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending step16)) (at start (s7_done)) (at start (s24_done)) (at start (s8_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_done)))
  )

  ; 17: Design the salon logo and branding (1 week = 604800s)
  (:durative-action do_step17
    :duration (= ?duration 604800)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_done)))
  )

  ; 18: Set up the reception desk and POS system (86400s)
  (:durative-action do_step18
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step18)) (at start (s50_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_done)))
  )

  ; 19: Install mirrors and workstations (345600s)
  (:durative-action do_step19
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step19)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_done)))
  )

  ; 20: Order customized towels and capes (1 week = 604800s)
  (:durative-action do_step20
    :duration (= ?duration 604800)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_done)))
  )

  ; 21: Conduct staff training on product lines (172800s)
  (:durative-action do_step21
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step21)) (at start (s25_done)) (at start (s41_done)) (at start (s43_done)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_done)))
  )

  ; 22: Print service menus and price lists (259200s)
  (:durative-action do_step22
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step22)) (at start (s38_done)) (at start (s41_done)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_done)))
  )

  ; 23: Obtain liability insurance coverage (259200s)
  (:durative-action do_step23
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step23)) (at start (s13_done)) (at start (s29_done)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_done)))
  )

  ; 24: Contract an interior construction firm (1 week = 604800s)
  (:durative-action do_step24
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step24)) (at start (s40_done)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_done)))
  )

  ; 25: Interview salon receptionists (1 week = 604800s)
  (:durative-action do_step25
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step25)) (at start (s28_done)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_done)))
  )

  ; 26: Install floor tiling and baseboards (432000s)
  (:durative-action do_step26
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending step26)) (at start (s8_done)) (at start (s41_done)) (at start (s48_done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_done)))
  )

  ; 27: Paint the interior walls and accent features (259200s)
  (:durative-action do_step27
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step27)) (at start (s46_done)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_done)))
  )

  ; 28: Install the ventilation and HVAC system (345600s)
  (:durative-action do_step28
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step28)) (at start (s4_done)) (at start (s29_done)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_done)))
  )

  ; 29: Develop a comprehensive business plan (2 weeks = 1209600s)
  (:durative-action do_step29
    :duration (= ?duration 1209600)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_done)))
  )

  ; 30: Set up accounts with professional distributors (345600s)
  (:durative-action do_step30
    :duration (= ?duration 345600)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_done)))
  )

  ; 31: Research local marketing agencies (259200s)
  (:durative-action do_step31
    :duration (= ?duration 259200)
    :condition (at start (step_pending step31))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_done)))
  )

  ; 32: Assign stylists to specific shifts (172800s)
  (:durative-action do_step32
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step32)) (at start (s11_done)) (at start (s25_done)) (at start (s37_done)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_done)))
  )

  ; 33: Set up the breakroom and staff lockers (86400s)
  (:durative-action do_step33
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step33)) (at start (s29_done)) (at start (s18_done)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_done)))
  )

  ; 34: Select a salon management software (1 week = 604800s)
  (:durative-action do_step34
    :duration (= ?duration 604800)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_done)))
  )

  ; 35: Order the outdoor signage (1 week = 604800s)
  (:durative-action do_step35
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step35)) (at start (s9_done)) (at start (s16_done)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_done)))
  )

  ; 36: Connect the water heater and sinks (86400s)
  (:durative-action do_step36
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step36)) (at start (s4_done)) (at start (s14_done)) (at start (s19_done)) (at start (s41_done)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_done)))
  )

  ; 37: Create social media profiles (7200s)
  (:durative-action do_step37
    :duration (= ?duration 7200)
    :condition (at start (step_pending step37))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_done)))
  )

  ; 38: Hire a professional photographer for the space (14400s)
  (:durative-action do_step38
    :duration (= ?duration 14400)
    :condition (at start (step_pending step38))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_done)))
  )

  ; 39: Stock the retail shelves (86400s)
  (:durative-action do_step39
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step39)) (at start (s10_done)) (at start (s29_done)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_done)))
  )

  ; 40: Conduct initial market research (1 week = 604800s)
  (:durative-action do_step40
    :duration (= ?duration 604800)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_done)))
  )

  ; 41: Establish a brand identity and color palette (432000s)
  (:durative-action do_step41
    :duration (= ?duration 432000)
    :condition (at start (step_pending step41))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (s41_done)))
  )

  ; 42: Configure the digital phone system (10800s)
  (:durative-action do_step42
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step42)) (at start (s34_done)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (s42_done)))
  )

  ; 43: Create a staff dress code policy (86400s)
  (:durative-action do_step43
    :duration (= ?duration 86400)
    :condition (at start (step_pending step43))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (s43_done)))
  )

  ; 44: Conduct a final walkthrough of the facility (14400s)
  (:durative-action do_step44
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step44)) (at start (s3_done)) (at start (s26_done)) (at start (s27_done)) (at start (s42_done)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (s44_done)))
  )

  ; 45: Design the business cards (172800s)
  (:durative-action do_step45
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step45)) (at start (s41_done)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (s45_done)))
  )

  ; 46: Interview and hire a cleaning service (172800s)
  (:durative-action do_step46
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step46)) (at start (s29_done)) (at start (s31_done)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (s46_done)))
  )

  ; 47: Purchase and wash the first batch of linens (18000s)
  (:durative-action do_step47
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step47)) (at start (s16_done)) (at start (s28_done)) (at start (s20_done)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (s47_done)))
  )

  ; 48: Build the reception counter (259200s)
  (:durative-action do_step48
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step48)) (at start (s1_done)) (at start (s13_done)) (at start (s25_done)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (s48_done)))
  )

  ; 49: Install security cameras (86400s)
  (:durative-action do_step49
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step49)) (at start (s24_done)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (s49_done)))
  )

  ; 50: Perform a soft opening for friends and family (172800s)
  (:durative-action do_step50
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step50)) (at start (s9_done)) (at start (s19_done)) (at start (s17_done)) (at start (s41_done)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (s50_done)))
  )
)
