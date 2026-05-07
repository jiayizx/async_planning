(define (domain squash_jersey)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (clothes_off)
    (shower_on)
    (shower_taken)
    (dried_off)
    (lotion_applied)
  )

  (:durative-action take_clothes_off
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothes_off)))
  )

  (:durative-action turn_on_shower
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shower_on)))
  )

  (:durative-action take_shower
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and 
        (at start (step_pending ?s)) 
        (at start (clothes_off)) 
        (at start (shower_on))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shower_taken)))
  )

  (:durative-action dry_off
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and 
        (at start (step_pending ?s)) 
        (at start (shower_taken))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dried_off)))
  )

  (:durative-action apply_lotion
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and 
        (at start (step_pending ?s)) 
        (at start (dried_off))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lotion_applied)))
  )
)