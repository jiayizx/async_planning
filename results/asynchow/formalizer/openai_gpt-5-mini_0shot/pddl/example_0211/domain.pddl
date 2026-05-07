(define (domain write-paper)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ;; semantic predicates produced by each step
    (calm_done)
    (guidelines_done)
    (research_done)
    (sources_done)
    (evidence_done)
  )

  ;; Step 1: Calm down
  (:durative-action do_step1_calm_down
    :parameters (?s - step)
    :duration (= ?duration 600)  ; 10 minutes = 600 seconds
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (calm_done))
            )
  )

  ;; Step 2: Read the assignment guidelines
  (:durative-action do_step2_read_guidelines
    :parameters (?s - step)
    :duration (= ?duration 600)  ; 10 minutes
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (guidelines_done))
            )
  )

  ;; Step 3: Research your topic (must follow step2)
  (:durative-action do_step3_research_topic
    :parameters (?s - step)
    :duration (= ?duration 1800)  ; 30 minutes
    :condition (and (at start (step_pending ?s)) (at start (guidelines_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (research_done))
            )
  )

  ;; Step 4: Find the best sources (must follow step3)
  (:durative-action do_step4_find_sources
    :parameters (?s - step)
    :duration (= ?duration 1200)  ; 20 minutes
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (sources_done))
            )
  )

  ;; Step 5: Pick a few pieces of good evidence (must follow step4)
  (:durative-action do_step5_pick_evidence
    :parameters (?s - step)
    :duration (= ?duration 1500)  ; 25 minutes
    :condition (and (at start (step_pending ?s)) (at start (sources_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (evidence_done))
            )
  )
)
