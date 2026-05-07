(define (domain film_learning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (area_decided)
    (online_research_done)
    (library_research_done)
    (reading_done)
    (respect_enjoyed)
  )

  (:durative-action decide_area
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (area_decided)))
  )

  (:durative-action research_online
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (area_decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (online_research_done)))
  )

  (:durative-action go_library
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (area_decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (library_research_done)))
  )

  (:durative-action read_research
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (online_research_done)) (at start (library_research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (reading_done)))
  )

  (:durative-action enjoy_respect
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (reading_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (respect_enjoyed)))
  )
)