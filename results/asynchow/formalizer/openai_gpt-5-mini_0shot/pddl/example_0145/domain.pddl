(define (domain deter-squirrels)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (bought_done)
    (made_done)
    (deterred)
  )

  ;; Step 2: buy a baffle (10 minutes = 600 seconds)
  (:durative-action do_step2_buy_baffle
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (bought_done))
            )
  )

  ;; Step 3: make your own baffle (15 minutes = 900 seconds)
  (:durative-action do_step3_make_baffle
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (made_done))
            )
  )

  ;; Step 1: hang bird feeder (5 minutes = 300 seconds) - must wait for bought_done AND made_done
  (:durative-action do_step1_hang_feeder
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (bought_done)) (at start (made_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (deterred))
            )
  )
)
