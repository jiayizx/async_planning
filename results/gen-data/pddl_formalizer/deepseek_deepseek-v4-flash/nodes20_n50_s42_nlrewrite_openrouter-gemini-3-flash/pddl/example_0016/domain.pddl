(define (domain police_clearance)
  (:requirements :durative-actions :typing)
  (:types step)
  (:constants
    s1 s2 s3 s4 s5 s6 s7 s8 s9 s10
    s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (step5_done)
    (step6_done)
    (step7_done)
    (step8_done)
    (step9_done)
    (step10_done)
    (step11_done)
    (step12_done)
    (step13_done)
    (step14_done)
    (step15_done)
    (step16_done)
    (step17_done)
    (step18_done)
    (step19_done)
    (step20_done)
  )
  
  (:durative-action do_step1
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s1)) (at start (step2_done)) (at start (step16_done)))
    :effect (and (at start (not (step_pending s1))) (at end (step_done s1)) (at end (step1_done)))
  )
  
  (:durative-action do_step2
    :duration (= ?duration 900)
    :condition (at start (step_pending s2))
    :effect (and (at start (not (step_pending s2))) (at end (step_done s2)) (at end (step2_done)))
  )
  
  (:durative-action do_step3
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s3)) (at start (step4_done)))
    :effect (and (at start (not (step_pending s3))) (at end (step_done s3)) (at end (step3_done)))
  )
  
  (:durative-action do_step4
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending s4)) (at start (step12_done)))
    :effect (and (at start (not (step_pending s4))) (at end (step_done s4)) (at end (step4_done)))
  )
  
  (:durative-action do_step5
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s5)) (at start (step9_done)) (at start (step14_done)))
    :effect (and (at start (not (step_pending s5))) (at end (step_done s5)) (at end (step5_done)))
  )
  
  (:durative-action do_step6
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending s6)) (at start (step15_done)))
    :effect (and (at start (not (step_pending s6))) (at end (step_done s6)) (at end (step6_done)))
  )
  
  (:durative-action do_step7
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending s7)) (at start (step8_done)))
    :effect (and (at start (not (step_pending s7))) (at end (step_done s7)) (at end (step7_done)))
  )
  
  (:durative-action do_step8
    :duration (= ?duration 86400)
    :condition (at start (step_pending s8))
    :effect (and (at start (not (step_pending s8))) (at end (step_done s8)) (at end (step8_done)))
  )
  
  (:durative-action do_step9
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s9)) (at start (step4_done)))
    :effect (and (at start (not (step_pending s9))) (at end (step_done s9)) (at end (step9_done)))
  )
  
  (:durative-action do_step10
    :duration (= ?duration 3600)
    :condition (at start (step_pending s10))
    :effect (and (at start (not (step_pending s10))) (at end (step_done s10)) (at end (step10_done)))
  )
  
  (:durative-action do_step11
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending s11)) (at start (step6_done)) (at start (step18_done)) (at start (step19_done)))
    :effect (and (at start (not (step_pending s11))) (at end (step_done s11)) (at end (step11_done)))
  )
  
  (:durative-action do_step12
    :duration (= ?duration 1800)
    :condition (at start (step_pending s12))
    :effect (and (at start (not (step_pending s12))) (at end (step_done s12)) (at end (step12_done)))
  )
  
  (:durative-action do_step13
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s13)) (at start (step10_done)))
    :effect (and (at start (not (step_pending s13))) (at end (step_done s13)) (at end (step13_done)))
  )
  
  (:durative-action do_step14
    :duration (= ?duration 300)
    :condition (at start (step_pending s14))
    :effect (and (at start (not (step_pending s14))) (at end (step_done s14)) (at end (step14_done)))
  )
  
  (:durative-action do_step15
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending s15)) (at start (step3_done)))
    :effect (and (at start (not (step_pending s15))) (at end (step_done s15)) (at end (step15_done)))
  )
  
  (:durative-action do_step16
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s16)) (at start (step2_done)))
    :effect (and (at start (not (step_pending s16))) (at end (step_done s16)) (at end (step16_done)))
  )
  
  (:durative-action do_step17
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending s17)) (at start (step7_done)))
    :effect (and (at start (not (step_pending s17))) (at end (step_done s17)) (at end (step17_done)))
  )
  
  (:durative-action do_step18
    :duration (= ?duration 345600)
    :condition (at start (step_pending s18))
    :effect (and (at start (not (step_pending s18))) (at end (step_done s18)) (at end (step18_done)))
  )
  
  (:durative-action do_step19
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending s19)) (at start (step9_done)))
    :effect (and (at start (not (step_pending s19))) (at end (step_done s19)) (at end (step19_done)))
  )
  
  (:durative-action do_step20
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s20)) (at start (step11_done)))
    :effect (and (at start (not (step_pending s20))) (at end (step_done s20)) (at end (step20_done)))
  )
)