(define (domain head_to_movie_theater)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done ?s - step)
  )
  
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending step1))
      (at start (done step4)) (at start (done step5))
      (at start (done step7)) (at start (done step8))
      (at start (done step9)) (at start (done step10))
      (at start (done step11)) (at start (done step12))
      (at start (done step14)) (at start (done step17))
      (at start (done step18))
    )
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (done step1))
    )
  )
  
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step2))
      (at start (done step1)) (at start (done step4))
      (at start (done step5)) (at start (done step6))
      (at start (done step7)) (at start (done step8))
      (at start (done step9)) (at start (done step10))
      (at start (done step11)) (at start (done step12))
      (at start (done step13)) (at start (done step14))
      (at start (done step17)) (at start (done step18))
      (at start (done step19)) (at start (done step20))
    )
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (done step2))
    )
  )
  
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step3))
      (at start (done step20))
    )
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (done step3))
    )
  )
  
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step4))
      (at start (done step7)) (at start (done step10))
      (at start (done step11)) (at start (done step12))
      (at start (done step14)) (at start (done step17))
      (at start (done step18))
    )
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (done step4))
    )
  )
  
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending step5))
      (at start (done step7)) (at start (done step10))
      (at start (done step12)) (at start (done step14))
      (at start (done step17))
    )
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (done step5))
    )
  )
  
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending step6))
      (at start (done step1)) (at start (done step4))
      (at start (done step5)) (at start (done step7))
      (at start (done step8)) (at start (done step9))
      (at start (done step10)) (at start (done step11))
      (at start (done step12)) (at start (done step14))
      (at start (done step17)) (at start (done step18))
      (at start (done step19)) (at start (done step20))
    )
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (done step6))
    )
  )
  
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending step7))
      (at start (done step10))
    )
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (done step7))
    )
  )
  
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step8))
      (at start (done step4)) (at start (done step7))
      (at start (done step10)) (at start (done step11))
      (at start (done step12)) (at start (done step14))
      (at start (done step17)) (at start (done step18))
    )
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (done step8))
    )
  )
  
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending step9))
      (at start (done step4)) (at start (done step5))
      (at start (done step7)) (at start (done step8))
      (at start (done step10)) (at start (done step11))
      (at start (done step12)) (at start (done step14))
      (at start (done step17)) (at start (done step18))
    )
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (done step9))
    )
  )
  
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step10))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (done step10))
    )
  )
  
  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending step11))
      (at start (done step7)) (at start (done step10))
      (at start (done step12)) (at start (done step14))
      (at start (done step17))
    )
    :effect (and
      (at start (not (step_pending step11)))
      (at end (step_done step11))
      (at end (done step11))
    )
  )
  
  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step12))
      (at start (done step7)) (at start (done step10))
      (at start (done step14)) (at start (done step17))
    )
    :effect (and
      (at start (not (step_pending step12)))
      (at end (step_done step12))
      (at end (done step12))
    )
  )
  
  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step13))
    :effect (and
      (at start (not (step_pending step13)))
      (at end (step_done step13))
      (at end (done step13))
    )
  )
  
  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step14))
      (at start (done step7)) (at start (done step10))
    )
    :effect (and
      (at start (not (step_pending step14)))
      (at end (step_done step14))
      (at end (done step14))
    )
  )
  
  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending step15))
      (at start (done step3)) (at start (done step20))
    )
    :effect (and
      (at start (not (step_pending step15)))
      (at end (step_done step15))
      (at end (done step15))
    )
  )
  
  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending step16))
      (at start (done step7)) (at start (done step10))
      (at start (done step14))
    )
    :effect (and
      (at start (not (step_pending step16)))
      (at end (step_done step16))
      (at end (done step16))
    )
  )
  
  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending step17))
      (at start (done step7)) (at start (done step10))
      (at start (done step14))
    )
    :effect (and
      (at start (not (step_pending step17)))
      (at end (step_done step17))
      (at end (done step17))
    )
  )
  
  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending step18))
      (at start (done step7)) (at start (done step10))
      (at start (done step11)) (at start (done step12))
      (at start (done step14)) (at start (done step17))
    )
    :effect (and
      (at start (not (step_pending step18)))
      (at end (step_done step18))
      (at end (done step18))
    )
  )
  
  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending step19))
      (at start (done step1)) (at start (done step4))
      (at start (done step5)) (at start (done step7))
      (at start (done step8)) (at start (done step9))
      (at start (done step10)) (at start (done step11))
      (at start (done step12)) (at start (done step14))
      (at start (done step17)) (at start (done step18))
    )
    :effect (and
      (at start (not (step_pending step19)))
      (at end (step_done step19))
      (at end (done step19))
    )
  )
  
  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step20))
    :effect (and
      (at start (not (step_pending step20)))
      (at end (step_done step20))
      (at end (done step20))
    )
  )
)