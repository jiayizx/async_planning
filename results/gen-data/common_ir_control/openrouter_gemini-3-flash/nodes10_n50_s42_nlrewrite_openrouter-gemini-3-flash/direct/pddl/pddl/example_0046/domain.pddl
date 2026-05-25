(define (domain marathon_participation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (shoes_purchased)
    (training_completed)
    (practice_run_done)
    (tapering_done)
    (carbo_loading_done)
    (health_cleared)
    (registration_done)
    (research_done)
    (bib_collected)
    (marathon_finished)
  )

  (:durative-action purchase_shoes
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_purchased)))
  )

  (:durative-action endurance_training
    :parameters (?s - step)
    :duration (= ?duration 6048000)
    :condition (and (at start (step_pending ?s)) (at start (health_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (training_completed)))
  )

  (:durative-action practice_run
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (training_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (practice_run_done)))
  )

  (:durative-action taper_recovery
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (carbo_loading_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tapering_done)))
  )

  (:durative-action carbo_load
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (practice_run_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (carbo_loading_done)))
  )

  (:durative-action consult_physician
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (health_cleared)))
  )

  (:durative-action register_online
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (registration_done)))
  )

  (:durative-action research_dates
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action pick_up_bib
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (shoes_purchased)) (at start (registration_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bib_collected)))
  )

  (:durative-action run_marathon
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (tapering_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (marathon_finished)))
  )
)