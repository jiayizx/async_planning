(define (domain lasagna)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (went_to_store_done)
    (bought_noodles_done)
    (bought_sauce_done)
    (arrived_home_done)
    (assembled_done)
    (preheated_done)
    (covered_done)
  )

  (:durative-action do_step1_go_to_store
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (and (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (went_to_store_done))
            )
  )

  (:durative-action do_step2_buy_noodles
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (and (step_pending ?s) (went_to_store_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (bought_noodles_done))
            )
  )

  (:durative-action do_step3_buy_sauce
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (and (step_pending ?s) (went_to_store_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (bought_sauce_done))
            )
  )

  (:durative-action do_step4_go_home
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (and (step_pending ?s) (bought_noodles_done) (bought_sauce_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (arrived_home_done))
            )
  )

  (:durative-action do_step5_assemble
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending ?s) (arrived_home_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (assembled_done))
            )
  )

  (:durative-action do_step6_preheat
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (and (step_pending ?s) (arrived_home_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (preheated_done))
            )
  )

  (:durative-action do_step7_cover_dish
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (and (step_pending ?s) (arrived_home_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (covered_done))
            )
  )
)
