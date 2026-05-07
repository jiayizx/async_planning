(define (domain evolve-munchlax)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (traded)
    (caught)
    (friendship_raised)
    (rarecandy_used)
  )

  (:durative-action do_step1_trade_cinccino
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step1)) (at start (caught)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (traded))
    )
  )

  (:durative-action do_step2_catch_cinccino
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (caught))
    )
  )

  (:durative-action do_step3_raise_friendship
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step3)) (at start (traded)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (friendship_raised))
    )
  )

  (:durative-action do_step4_use_rarecandy
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step4)) (at start (traded)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (rarecandy_used))
    )
  )
)
