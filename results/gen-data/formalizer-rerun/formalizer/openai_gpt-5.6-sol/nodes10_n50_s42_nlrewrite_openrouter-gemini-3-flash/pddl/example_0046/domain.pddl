(define (domain marathon-planning)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (shoes_purchased)
    (base_training_completed)
    (long_run_completed)
    (rest_and_taper_completed)
    (carbo_loading_completed)
    (health_clearance_obtained)
    (marathon_registration_completed)
    (marathon_research_completed)
    (race_bib_obtained)
    (marathon_completed)
  )

  (:durative-action purchase_running_shoes
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shoes_purchased))))

  (:durative-action complete_base_training
    :parameters (?s - step)
    :duration (= ?duration 6048000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (health_clearance_obtained)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (base_training_completed))))

  (:durative-action perform_long_practice_run
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (base_training_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (long_run_completed))))

  (:durative-action rest_and_taper
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (carbo_loading_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rest_and_taper_completed))))

  (:durative-action carbohydrate_load
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (long_run_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (carbo_loading_completed))))

  (:durative-action consult_sports_physician
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (marathon_research_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (health_clearance_obtained))))

  (:durative-action register_for_marathon
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (marathon_registration_completed))))

  (:durative-action research_marathon
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (marathon_research_completed))))

  (:durative-action pick_up_race_bib
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (shoes_purchased))
      (at start (marathon_registration_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (race_bib_obtained))))

  (:durative-action run_marathon
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (rest_and_taper_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (marathon_completed))))
)