(define (domain garden_protection)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending1)
    (step_done1)
    (done_1)
    (step_pending2)
    (step_done2)
    (done_2)
    (step_pending3)
    (step_done3)
    (done_3)
    (step_pending4)
    (step_done4)
    (done_4)
    (step_pending5)
    (step_done5)
    (done_5)
    (step_pending6)
    (step_done6)
    (done_6)
    (step_pending7)
    (step_done7)
    (done_7)
    (step_pending8)
    (step_done8)
    (done_8)
    (step_pending9)
    (step_done9)
    (done_9)
    (step_pending10)
    (step_done10)
    (done_10)
  )

  (:durative-action do_step1
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending1))
      (at start (done_2))
      (at start (done_3))
      (at start (done_5))
      (at start (done_6))
      (at start (done_7))
      (at start (done_8))
    )
    :effect (and
      (at start (not (step_pending1)))
      (at end (step_done1))
      (at end (done_1))
    )
  )

  (:durative-action do_step2
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending2))
      (at start (done_8))
    )
    :effect (and
      (at start (not (step_pending2)))
      (at end (step_done2))
      (at end (done_2))
    )
  )

  (:durative-action do_step3
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending3))
    )
    :effect (and
      (at start (not (step_pending3)))
      (at end (step_done3))
      (at end (done_3))
    )
  )

  (:durative-action do_step4
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending4))
      (at start (done_3))
      (at start (done_5))
      (at start (done_6))
      (at start (done_7))
    )
    :effect (and
      (at start (not (step_pending4)))
      (at end (step_done4))
      (at end (done_4))
    )
  )

  (:durative-action do_step5
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending5))
      (at start (done_3))
      (at start (done_7))
    )
    :effect (and
      (at start (not (step_pending5)))
      (at end (step_done5))
      (at end (done_5))
    )
  )

  (:durative-action do_step6
    :duration (= ?duration 5400)
    :condition (and
      (at start (step_pending6))
      (at start (done_3))
      (at start (done_5))
      (at start (done_7))
    )
    :effect (and
      (at start (not (step_pending6)))
      (at end (step_done6))
      (at end (done_6))
    )
  )

  (:durative-action do_step7
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending7))
      (at start (done_3))
    )
    :effect (and
      (at start (not (step_pending7)))
      (at end (step_done7))
      (at end (done_7))
    )
  )

  (:durative-action do_step8
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending8))
    )
    :effect (and
      (at start (not (step_pending8)))
      (at end (step_done8))
      (at end (done_8))
    )
  )

  (:durative-action do_step9
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending9))
    )
    :effect (and
      (at start (not (step_pending9)))
      (at end (step_done9))
      (at end (done_9))
    )
  )

  (:durative-action do_step10
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending10))
      (at start (done_9))
    )
    :effect (and
      (at start (not (step_pending10)))
      (at end (step_done10))
      (at end (done_10))
    )
  )
)
