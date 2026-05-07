(define (domain dog_restraint)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (leash_clipped)
    (dog_calmed)
    (harness_retrieved)
    (buckle_fastened)
    (paws_guided)
  )

  (:durative-action clip_leash
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (dog_calmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (leash_clipped)))
  )

  (:durative-action calm_dog
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dog_calmed)))
  )

  (:durative-action retrieve_harness
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (harness_retrieved)))
  )

  (:durative-action fasten_buckle
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (paws_guided)) (at start (harness_retrieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (buckle_fastened)))
  )

  (:durative-action guide_paws
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (harness_retrieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paws_guided)))
  )
)