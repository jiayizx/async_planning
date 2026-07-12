(define (domain restrain-dog)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (leash_clipped)
    (dog_calmed)
    (harness_retrieved)
    (safety_buckle_fastened)
    (paws_in_harness_loops)
  )

  (:durative-action clip_leash_onto_collar
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (dog_calmed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (leash_clipped))
    )
  )

  (:durative-action calm_dog_with_treat
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dog_calmed))
    )
  )

  (:durative-action retrieve_harness
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (harness_retrieved))
    )
  )

  (:durative-action fasten_safety_buckle
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (paws_in_harness_loops))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (safety_buckle_fastened))
    )
  )

  (:durative-action guide_paws_into_harness_loops
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (harness_retrieved))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (paws_in_harness_loops))
    )
  )
)