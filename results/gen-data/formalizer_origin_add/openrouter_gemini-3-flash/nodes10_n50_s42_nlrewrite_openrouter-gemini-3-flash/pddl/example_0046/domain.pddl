(define (domain marathon_participation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (shoes_purchased)
    (training_completed)
    (practice_run_done)
    (recovery_done)
    (carbo_loaded)
    (health_cleared)
    (registered)
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

  (:durative-action research_marathon
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action register_online
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (registered)))
  )

  (:durative-action consult_physician
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (health_cleared)))
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

  (:durative-action carbo_load
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (practice_run_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (carbo_loaded)))
  )

  (:durative-action rest_and_taper
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (carbo_loaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (recovery_done)))
  )

  (:durative-action pick_up_bib
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (shoes_purchased)) (at start (registered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bib_collected)))
  )

  (:durative-action run_marathon
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (recovery_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (marathon_finished)))
  )
)