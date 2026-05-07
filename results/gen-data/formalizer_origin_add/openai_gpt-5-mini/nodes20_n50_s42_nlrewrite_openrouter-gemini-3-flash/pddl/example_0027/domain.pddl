(define (domain scholarship_app)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (completed1)
    (completed2)
    (completed3)
    (completed4)
    (completed5)
    (completed6)
    (completed7)
    (completed8)
    (completed9)
    (completed10)
    (completed11)
    (completed12)
    (completed13)
    (completed14)
    (completed15)
    (completed16)
    (completed17)
    (completed18)
    (completed19)
    (completed20)
  )

  ;; Each durative action corresponds exactly to one step object and refers to that object
  (:durative-action do_step1
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step1))
                    (at start (completed6)) (at start (completed4)) (at start (completed7)) (at start (completed11))
                    (at start (completed10)) (at start (completed19)) (at start (completed9)) (at start (completed12))
                    (at start (completed13)) (at start (completed14)) (at start (completed15)) (at start (completed16))
                    (at start (completed17)) (at start (completed8)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (completed1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step2))
                    (at start (completed10)) (at start (completed16)) (at start (completed18)) (at start (completed6))
                    (at start (completed4)) (at start (completed7)) (at start (completed11)) (at start (completed19))
                    (at start (completed9)) (at start (completed12)) (at start (completed13)) (at start (completed14))
                    (at start (completed15)) (at start (completed17)) (at start (completed8)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (completed2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step3)) (at start (completed12)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (completed3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 14400)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (completed4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step5))
                    (at start (completed8)) (at start (completed12)) (at start (completed15)) (at start (completed14))
                    (at start (completed9)) (at start (completed18)) (at start (completed13)) (at start (completed16))
                    (at start (completed17)) (at start (completed11)) (at start (completed19)) (at start (completed6))
                    (at start (completed4)) (at start (completed7)) (at start (completed10)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (completed5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 600)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (completed6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step7)) (at start (completed4)) (at start (completed6)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (completed7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 604800)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (completed8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step9)) (at start (completed4)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (completed9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step10))
                    (at start (completed11)) (at start (completed14)) (at start (completed19)) (at start (completed7))
                    (at start (completed6)) (at start (completed4)) (at start (completed9)) (at start (completed12))
                    (at start (completed13)) (at start (completed15)) (at start (completed16)) (at start (completed17))
                    (at start (completed8)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (completed10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending step11)) (at start (completed6)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (completed11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 1209600)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (completed12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step13)) (at start (completed14)) (at start (completed4)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (completed13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step14)) (at start (completed4)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (completed14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step15)) (at start (completed14)) (at start (completed4)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (completed15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 1209600)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (completed16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step17)) (at start (completed16)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (completed17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 10800)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (completed18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step19)) (at start (completed6)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (completed19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step20))
                    (at start (completed9)) (at start (completed10)) (at start (completed17)) (at start (completed11))
                    (at start (completed14)) (at start (completed19)) (at start (completed6)) (at start (completed4))
                    (at start (completed7)) (at start (completed12)) (at start (completed13)) (at start (completed15))
                    (at start (completed16)) (at start (completed8)) (at start (completed18)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (completed20)))
  )
)
