(define (domain impress_popular_girls)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (research_done)
    (determine_done)
    (find_done)
    (travel_done)
    (impress_done)
  )

  ;; Step 1: Research popular girl interests
  (:durative-action do_research
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (research_done))
            )
  )

  ;; Step 2: Determine who popular girls are
  (:durative-action do_determine
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (determine_done))
            )
  )

  ;; Step 3: Find out where the popular girls hang out
  (:durative-action do_find_location
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (and (step_pending ?s) (determine_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (find_done))
            )
  )

  ;; Step 4: Travel to location popular girls are
  (:durative-action do_travel
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending ?s) (find_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (travel_done))
            )
  )

  ;; Step 5: Impress popular girls with knowledge of interests
  (:durative-action do_impress
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending ?s) (research_done) (travel_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (impress_done))
            )
  )
)
