(define (domain reflexology_charts)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s_done ?s - step)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step1)) (at start (s_done step7)) (at start (s_done step15)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s_done step1)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step2)) (at start (s_done step4)) (at start (s_done step13)) (at start (s_done step6)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s_done step2)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step3)) (at start (s_done step5)) (at start (s_done step2)) (at start (s_done step14)) (at start (s_done step4)) (at start (s_done step13)) (at start (s_done step6)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s_done step3)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step4)) (at start (s_done step13)) (at start (s_done step6)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s_done step4)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step5)) (at start (s_done step14)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s_done step5)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step6)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s_done step6)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step7)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s_done step7)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step8)) (at start (s_done step1)) (at start (s_done step7)) (at start (s_done step15)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s_done step8)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step9)) (at start (s_done step2)) (at start (s_done step13)) (at start (s_done step4)) (at start (s_done step6)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s_done step9)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending step10)) (at start (s_done step9)) (at start (s_done step13)) (at start (s_done step2)) (at start (s_done step4)) (at start (s_done step6)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s_done step10)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step11)) (at start (s_done step4)) (at start (s_done step8)) (at start (s_done step9)) (at start (s_done step10)) (at start (s_done step1)) (at start (s_done step7)) (at start (s_done step15)) (at start (s_done step2)) (at start (s_done step13)) (at start (s_done step6)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s_done step11)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step12)) (at start (s_done step3)) (at start (s_done step5)) (at start (s_done step11)) (at start (s_done step2)) (at start (s_done step14)) (at start (s_done step4)) (at start (s_done step13)) (at start (s_done step6)) (at start (s_done step1)) (at start (s_done step7)) (at start (s_done step15)) (at start (s_done step8)) (at start (s_done step9)) (at start (s_done step10)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s_done step12)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step13)) (at start (s_done step6)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s_done step13)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step14)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s_done step14)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step15)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s_done step15)))
  )
)
