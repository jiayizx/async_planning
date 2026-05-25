(define (domain wear_red_dress)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (pending ?s - step)
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
    (worn)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending step1)) (at start (s18_done)))
    :effect (and (at start (not (pending step1))) (at end (s1_done)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending step2)) (at start (s11_done)))
    :effect (and (at start (not (pending step2))) (at end (s2_done)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step3)) (at start (s15_done)) (at start (s5_done)) (at start (s19_done)) (at start (s18_done)) (at start (s1_done)) (at start (s2_done)) (at start (s11_done)) (at start (s20_done)))
    :effect (and (at start (not (pending step3))) (at end (s3_done)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending step4)) (at start (s9_done)) (at start (s1_done)) (at start (s18_done)))
    :effect (and (at start (not (pending step4))) (at end (s4_done)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (pending step5))
    :effect (and (at start (not (pending step5))) (at end (s5_done)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (pending step6)) (at start (s4_done)) (at start (s9_done)) (at start (s1_done)) (at start (s18_done)))
    :effect (and (at start (not (pending step6))) (at end (s6_done)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step7)) (at start (s10_done)) (at start (s13_done)) (at start (s9_done)))
    :effect (and (at start (not (pending step7))) (at end (s7_done)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending step8)) (at start (s7_done)) (at start (s10_done)) (at start (s13_done)) (at start (s9_done)))
    :effect (and (at start (not (pending step8))) (at end (s8_done)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (pending step9))
    :effect (and (at start (not (pending step9))) (at end (s9_done)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending step10)) (at start (s13_done)) (at start (s9_done)))
    :effect (and (at start (not (pending step10))) (at end (s10_done)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (pending step11))
    :effect (and (at start (not (pending step11))) (at end (s11_done)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step12)) (at start (s14_done)) (at start (s4_done)) (at start (s6_done)) (at start (s9_done)) (at start (s1_done)) (at start (s18_done)))
    :effect (and (at start (not (pending step12))) (at end (s12_done)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (pending step13)) (at start (s9_done)))
    :effect (and (at start (not (pending step13))) (at end (s13_done)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step14)) (at start (s1_done)) (at start (s9_done)) (at start (s18_done)))
    :effect (and (at start (not (pending step14))) (at end (s14_done)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending step15)) (at start (s5_done)))
    :effect (and (at start (not (pending step15))) (at end (s15_done)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (pending step16)) (at start (s8_done)) (at start (s7_done)) (at start (s10_done)) (at start (s13_done)) (at start (s9_done)))
    :effect (and (at start (not (pending step16))) (at end (s16_done)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (pending step17)) (at start (s20_done)) (at start (s19_done)) (at start (s3_done)) (at start (s15_done)) (at start (s5_done)) (at start (s16_done)) (at start (s8_done)) (at start (s7_done)) (at start (s10_done)) (at start (s13_done)) (at start (s9_done)) (at start (s18_done)) (at start (s1_done)) (at start (s11_done)) (at start (s2_done)))
    :effect (and (at start (not (pending step17))) (at end (s17_done)) (at end (worn)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (pending step18))
    :effect (and (at start (not (pending step18))) (at end (s18_done)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (pending step19)) (at start (s18_done)) (at start (s1_done)) (at start (s2_done)) (at start (s11_done)) (at start (s20_done)))
    :effect (and (at start (not (pending step19))) (at end (s19_done)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (pending step20)) (at start (s11_done)))
    :effect (and (at start (not (pending step20))) (at end (s20_done)))
  )
)
