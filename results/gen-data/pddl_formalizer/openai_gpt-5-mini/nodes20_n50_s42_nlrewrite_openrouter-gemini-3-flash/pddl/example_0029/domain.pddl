(define (domain going-to-movie)
  (:requirements :typing :durative-actions)
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

  (:durative-action do_step1
    :parameters (?duration)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step1)) (at start (completed5)) (at start (completed9)) (at start (completed8)) (at start (completed4)) (at start (completed18)) (at start (completed11)) (at start (completed12)) (at start (completed17)) (at start (completed14)) (at start (completed7)) (at start (completed10)) (at start (completed3)) (at start (completed20)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (completed1)))
  )

  (:durative-action do_step2
    :parameters (?duration)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step2)) (at start (completed6)) (at start (completed13)) (at start (completed8)) (at start (completed4)) (at start (completed18)) (at start (completed11)) (at start (completed12)) (at start (completed17)) (at start (completed14)) (at start (completed7)) (at start (completed10)) (at start (completed1)) (at start (completed9)) (at start (completed5)) (at start (completed3)) (at start (completed20)) (at start (completed19)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (completed2)))
  )

  (:durative-action do_step3
    :parameters (?duration)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (completed20)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (completed3)))
  )

  (:durative-action do_step4
    :parameters (?duration)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (completed18)) (at start (completed11)) (at start (completed12)) (at start (completed17)) (at start (completed14)) (at start (completed7)) (at start (completed10)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (completed4)))
  )

  (:durative-action do_step5
    :parameters (?duration)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step5)) (at start (completed12)) (at start (completed17)) (at start (completed14)) (at start (completed7)) (at start (completed10)) (at start (completed3)) (at start (completed20)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (completed5)))
  )

  (:durative-action do_step6
    :parameters (?duration)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step6)) (at start (completed19)) (at start (completed1)) (at start (completed5)) (at start (completed9)) (at start (completed8)) (at start (completed4)) (at start (completed18)) (at start (completed11)) (at start (completed12)) (at start (completed17)) (at start (completed14)) (at start (completed7)) (at start (completed10)) (at start (completed20)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (completed6)))
  )

  (:durative-action do_step7
    :parameters (?duration)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step7)) (at start (completed10)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (completed7)))
  )

  (:durative-action do_step8
    :parameters (?duration)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step8)) (at start (completed4)) (at start (completed18)) (at start (completed11)) (at start (completed12)) (at start (completed17)) (at start (completed14)) (at start (completed7)) (at start (completed10)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (completed8)))
  )

  (:durative-action do_step9
    :parameters (?duration)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step9)) (at start (completed8)) (at start (completed4)) (at start (completed18)) (at start (completed11)) (at start (completed12)) (at start (completed17)) (at start (completed14)) (at start (completed7)) (at start (completed10)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (completed9)))
  )

  (:durative-action do_step10
    :parameters (?duration)
    :duration (= ?duration 60)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (completed10)))
  )

  (:durative-action do_step11
    :parameters (?duration)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step11)) (at start (completed12)) (at start (completed17)) (at start (completed14)) (at start (completed7)) (at start (completed10)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (completed11)))
  )

  (:durative-action do_step12
    :parameters (?duration)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step12)) (at start (completed17)) (at start (completed14)) (at start (completed7)) (at start (completed10)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (completed12)))
  )

  (:durative-action do_step13
    :parameters (?duration)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step13)) (at start (completed8)) (at start (completed4)) (at start (completed18)) (at start (completed11)) (at start (completed12)) (at start (completed17)) (at start (completed14)) (at start (completed7)) (at start (completed10)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (completed13)))
  )

  (:durative-action do_step14
    :parameters (?duration)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step14)) (at start (completed7)) (at start (completed10)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (completed14)))
  )

  (:durative-action do_step15
    :parameters (?duration)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step15)) (at start (completed3)) (at start (completed20)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (completed15)))
  )

  (:durative-action do_step16
    :parameters (?duration)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step16)) (at start (completed14)) (at start (completed7)) (at start (completed10)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (completed16)))
  )

  (:durative-action do_step17
    :parameters (?duration)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step17)) (at start (completed14)) (at start (completed7)) (at start (completed10)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (completed17)))
  )

  (:durative-action do_step18
    :parameters (?duration)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step18)) (at start (completed11)) (at start (completed12)) (at start (completed17)) (at start (completed14)) (at start (completed7)) (at start (completed10)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (completed18)))
  )

  (:durative-action do_step19
    :parameters (?duration)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step19)) (at start (completed1)) (at start (completed5)) (at start (completed9)) (at start (completed8)) (at start (completed4)) (at start (completed18)) (at start (completed11)) (at start (completed12)) (at start (completed17)) (at start (completed14)) (at start (completed7)) (at start (completed10)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (completed19)))
  )

  (:durative-action do_step20
    :parameters (?duration)
    :duration (= ?duration 900)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (completed20)))
  )
)
