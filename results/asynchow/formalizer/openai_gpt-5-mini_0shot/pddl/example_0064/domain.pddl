(define (domain exit_house)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (keys_taken)
    (shoes_on)
    (passed_door)
    (door_locked)
    (jacket_on)
  )

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 25)
    :condition (at start (and (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (keys_taken))
            )
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 25)
    :condition (at start (and (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (shoes_on))
            )
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 25)
    :condition (at start (and (step_pending ?s) (keys_taken) (shoes_on) (jacket_on)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (passed_door))
            )
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 35)
    :condition (at start (and (step_pending ?s) (passed_door)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (door_locked))
            )
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 25)
    :condition (at start (and (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (jacket_on))
            )
  )
)
