(define (domain italian_cooking)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (p1_done)
    (p2_done)
    (p3_done)
    (p4_done)
    (p5_done)
    (p6_done)
    (p7_done)
    (p8_done)
    (p9_done)
    (p10_done)
    (p11_done)
    (p12_done)
    (p13_done)
    (p14_done)
    (p15_done)
    (p16_done)
    (p17_done)
    (p18_done)
    (p19_done)
    (p20_done)
  )

  ; Step 1
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step1)) (at start (p16_done)) (at start (p7_done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (p1_done)))
  )

  ; Step 2
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step2)) (at start (p19_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (p2_done)))
  )

  ; Step 3
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (p3_done)))
  )

  ; Step 4
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 3628800)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (p4_done)))
  )

  ; Step 5
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step5)) (at start (p7_done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (p5_done)))
  )

  ; Step 6
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step6)) (at start (p2_done)) (at start (p8_done)) (at start (p18_done)) (at start (p19_done)) (at start (p4_done)) (at start (p1_done)) (at start (p16_done)) (at start (p7_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (p6_done)))
  )

  ; Step 7
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (p7_done)))
  )

  ; Step 8
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step8)) (at start (p4_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (p8_done)))
  )

  ; Step 9
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step9)) (at start (p4_done)) (at start (p20_done)) (at start (p13_done)) (at start (p2_done)) (at start (p19_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (p9_done)))
  )

  ; Step 10
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step10)) (at start (p15_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (p10_done)))
  )

  ; Step 11
  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step11)) (at start (p8_done)) (at start (p4_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (p11_done)))
  )

  ; Step 12
  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step12)) (at start (p8_done)) (at start (p9_done)) (at start (p13_done)) (at start (p17_done)) (at start (p4_done)) (at start (p20_done)) (at start (p2_done)) (at start (p19_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (p12_done)))
  )

  ; Step 13
  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step13)) (at start (p2_done)) (at start (p19_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (p13_done)))
  )

  ; Step 14
  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step14)) (at start (p3_done)) (at start (p11_done)) (at start (p8_done)) (at start (p4_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (p14_done)))
  )

  ; Step 15
  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (p15_done)))
  )

  ; Step 16
  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step16)) (at start (p7_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (p16_done)))
  )

  ; Step 17
  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step17)) (at start (p4_done)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (p17_done)))
  )

  ; Step 18
  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step18)) (at start (p1_done)) (at start (p16_done)) (at start (p7_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (p18_done)))
  )

  ; Step 19
  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (p19_done)))
  )

  ; Step 20
  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step20)) (at start (p13_done)) (at start (p2_done)) (at start (p19_done)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (p20_done)))
  )
)
