(define (domain police_clearance)
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
  )

  ;; Step 1: requires Step 2, Step 16
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step1)) (at start (s2_done)) (at start (s16_done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_done))))

  ;; Step 2: no prerequisites
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_done))))

  ;; Step 3: requires Step 4, Step 12
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step3)) (at start (s4_done)) (at start (s12_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_done))))

  ;; Step 4: requires Step 12
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step4)) (at start (s12_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_done))))

  ;; Step 5: requires Step 9, Step 14, Step 4, Step 12
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (s9_done)) (at start (s14_done)) (at start (s4_done)) (at start (s12_done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_done))))

  ;; Step 6: requires Step 15, Step 3, Step 4, Step 12, Step 9, Step 5, Step 14, Step 19
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step6)) (at start (s15_done)) (at start (s3_done)) (at start (s4_done)) (at start (s12_done)) (at start (s9_done)) (at start (s5_done)) (at start (s14_done)) (at start (s19_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_done))))

  ;; Step 7: requires Step 8
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step7)) (at start (s8_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_done))))

  ;; Step 8: no prerequisites
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_done))))

  ;; Step 9: requires Step 4, Step 12
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step9)) (at start (s4_done)) (at start (s12_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_done))))

  ;; Step 10: no prerequisites
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_done))))

  ;; Step 11: requires Step 6, Step 18, Step 19, Step 15, Step 3, Step 4, Step 12, Step 9, Step 5, Step 14
  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step11)) (at start (s6_done)) (at start (s18_done)) (at start (s19_done)) (at start (s15_done)) (at start (s3_done)) (at start (s4_done)) (at start (s12_done)) (at start (s9_done)) (at start (s5_done)) (at start (s14_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_done))))

  ;; Step 12: no prerequisites
  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_done))))

  ;; Step 13: requires Step 10
  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step13)) (at start (s10_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_done))))

  ;; Step 14: no prerequisites
  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_done))))

  ;; Step 15: requires Step 3, Step 4, Step 12
  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step15)) (at start (s3_done)) (at start (s4_done)) (at start (s12_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_done))))

  ;; Step 16: requires Step 2
  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step16)) (at start (s2_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_done))))

  ;; Step 17: requires Step 7, Step 8
  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step17)) (at start (s7_done)) (at start (s8_done)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_done))))

  ;; Step 18: no prerequisites
  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 345600)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_done))))

  ;; Step 19: requires Step 9, Step 4, Step 12
  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step19)) (at start (s9_done)) (at start (s4_done)) (at start (s12_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_done))))

  ;; Step 20: requires Step 11, Step 6, Step 18, Step 19, Step 15, Step 3, Step 4, Step 12, Step 9, Step 5, Step 14
  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step20)) (at start (s11_done)) (at start (s6_done)) (at start (s18_done)) (at start (s19_done)) (at start (s15_done)) (at start (s3_done)) (at start (s4_done)) (at start (s12_done)) (at start (s9_done)) (at start (s5_done)) (at start (s14_done)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_done))))
)
