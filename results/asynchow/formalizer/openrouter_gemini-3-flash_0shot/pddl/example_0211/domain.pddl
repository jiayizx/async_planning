(define (domain paper_writing)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (calmed_down)
    (guidelines_read)
    (topic_researched)
    (sources_found)
    (evidence_picked)
  )

  (:durative-action calm_down
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (calmed_down)))
  )

  (:durative-action read_guidelines
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (guidelines_read)))
  )

  (:durative-action research_topic
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (guidelines_read)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (topic_researched)))
  )

  (:durative-action find_sources
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (topic_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sources_found)))
  )

  (:durative-action pick_evidence
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (sources_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (evidence_picked)))
  )
)