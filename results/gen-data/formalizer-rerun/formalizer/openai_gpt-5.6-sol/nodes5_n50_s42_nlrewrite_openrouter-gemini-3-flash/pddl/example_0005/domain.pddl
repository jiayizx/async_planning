(define (domain new-york-strip-steak)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (steak_seasoned)
    (steak_restored_to_room_temperature)
    (steak_removed_from_packaging)
    (steak_surface_dried)
    (steak_seared)
  )

  (:durative-action season_steak
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (steak_surface_dried))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (steak_seasoned))
    )
  )

  (:durative-action rest_steak
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (steak_surface_dried))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (steak_restored_to_room_temperature))
    )
  )

  (:durative-action remove_packaging
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (steak_removed_from_packaging))
    )
  )

  (:durative-action pat_steak_dry
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (steak_removed_from_packaging))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (steak_surface_dried))
    )
  )

  (:durative-action sear_steak
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (steak_seasoned))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (steak_seared))
    )
  )
)