(define (domain clean_fireplace)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (scoop_step ?s - step)
    (apply_step ?s - step)
    (remove_step ?s - step)
    (wipe_step ?s - step)
    (scoop_done)
    (apply_done)
    (remove_done)
    (wipe_done)
  )

  (:durative-action do_scoop
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (scoop_step ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scoop_done)))
  )

  (:durative-action do_apply
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (apply_step ?s))
                   (at start (scoop_done)) (at start (wipe_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (apply_done)))
  )

  (:durative-action do_remove
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (remove_step ?s))
                   (at start (apply_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (remove_done)))
  )

  (:durative-action do_wipe
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (wipe_step ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wipe_done)))
  )
)