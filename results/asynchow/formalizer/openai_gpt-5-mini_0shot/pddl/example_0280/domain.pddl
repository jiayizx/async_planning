(define (domain balloon_decor)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (select_hat_done)
    (buy_glue_done)
    (blow_balloons_done)
    (add_hat_done)
  )

  (:durative-action do_select_hat
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (select_hat_done))
            )
  )

  (:durative-action do_buy_glue
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (buy_glue_done))
            )
  )

  (:durative-action do_blow_balloons
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (blow_balloons_done))
            )
  )

  (:durative-action do_add_hat
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
                 (at start (step_pending ?s))
                 (at start (select_hat_done))
                 (at start (buy_glue_done))
                 (at start (blow_balloons_done))
               )
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (add_hat_done))
            )
  )
)
