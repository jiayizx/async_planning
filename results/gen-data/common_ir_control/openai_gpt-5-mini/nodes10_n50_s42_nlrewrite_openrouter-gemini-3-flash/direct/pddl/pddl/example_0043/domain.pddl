(define (domain obtain-book-name)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done1)
    (done2)
    (done3)
    (done4)
    (done5)
    (done6)
    (done7)
    (done8)
    (done9)
    (done10)
  )

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (and (step_pending ?s) (done7)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done1))
    )
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (and (step_pending ?s) (done10)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done2))
    )
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (done4) (done5)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done3))
    )
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done4))
    )
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (at start (and (step_pending ?s) (done4)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done5))
    )
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending ?s) (done1)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done6))
    )
  )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done7))
    )
  )

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (and (step_pending ?s) (done3)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done8))
    )
  )

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s) (done6) (done8)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done9))
    )
  )

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done10))
    )
  )
)
