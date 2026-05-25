(define (domain roast-turnips)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (purchased)
    (oven_preheated)
    (garnished)
    (tossed)
    (whisked)
    (washed)
    (greased)
    (peeled)
    (roasted)
    (patted)
  )

  (:durative-action do_step1
    :duration (= ?duration 2700)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (purchased))
    )
  )

  (:durative-action do_step2
    :duration (= ?duration 900)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (oven_preheated))
    )
  )

  (:durative-action do_step3
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending step3))
      (at start (purchased))
      (at start (oven_preheated))
      (at start (tossed))
      (at start (whisked))
      (at start (washed))
      (at start (greased))
      (at start (peeled))
      (at start (roasted))
      (at start (patted))
    )
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (garnished))
    )
  )

  (:durative-action do_step4
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending step4))
      (at start (purchased))
      (at start (whisked))
      (at start (washed))
      (at start (peeled))
      (at start (patted))
    )
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (tossed))
    )
  )

  (:durative-action do_step5
    :duration (= ?duration 300)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (whisked))
    )
  )

  (:durative-action do_step6
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step6))
      (at start (purchased))
    )
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (washed))
    )
  )

  (:durative-action do_step7
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending step7))
      (at start (oven_preheated))
    )
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (greased))
    )
  )

  (:durative-action do_step8
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending step8))
      (at start (purchased))
      (at start (washed))
      (at start (patted))
    )
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (peeled))
    )
  )

  (:durative-action do_step9
    :duration (= ?duration 2100)
    :condition (and
      (at start (step_pending step9))
      (at start (purchased))
      (at start (oven_preheated))
      (at start (tossed))
      (at start (whisked))
      (at start (washed))
      (at start (greased))
      (at start (peeled))
      (at start (patted))
    )
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (roasted))
    )
  )

  (:durative-action do_step10
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending step10))
      (at start (purchased))
      (at start (washed))
    )
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (patted))
    )
  )
)
