(define (domain kwanzaa_explanation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (history_researched)
    (script_drafted)
    (symbols_collected)
    (slides_created)
    (hall_rented)
    (heritage_read)
    (handout_designed)
    (presentation_delivered)
    (themes_outlined)
    (historian_consulted)
  )

  (:durative-action research_history
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (themes_outlined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (history_researched)))
  )

  (:durative-action draft_script
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (symbols_collected)) (at start (historian_consulted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (script_drafted)))
  )

  (:durative-action collect_symbols
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (heritage_read)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (symbols_collected)))
  )

  (:durative-action create_slides
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (script_drafted)) (at start (heritage_read)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (slides_created)))
  )

  (:durative-action rent_hall
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hall_rented)))
  )

  (:durative-action read_heritage
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (heritage_read)))
  )

  (:durative-action design_handout
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (history_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (handout_designed)))
  )

  (:durative-action deliver_presentation
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (hall_rented)) (at start (handout_designed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (presentation_delivered)))
  )

  (:durative-action outline_themes
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (themes_outlined)))
  )

  (:durative-action consult_historian
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (themes_outlined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (historian_consulted)))
  )
)