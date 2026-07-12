(define (domain steamed-ginger-pudding)
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
    (ginger_grated)
    (eggs_sugar_whisked)
    (pudding_prepared)
    (fresh_ginger_bought)
    (eggs_room_temperature)
  )

  (:durative-action peel_and_grate_ginger
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (fresh_ginger_bought))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ginger_grated))
    )
  )

  (:durative-action whisk_eggs_and_sugar
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (eggs_room_temperature))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (eggs_sugar_whisked))
    )
  )

  (:durative-action combine_and_pour_into_molds
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (ginger_grated))
      (at start (fresh_ginger_bought))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pudding_prepared))
    )
  )

  (:durative-action buy_fresh_ginger
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fresh_ginger_bought))
    )
  )

  (:durative-action bring_eggs_to_room_temperature
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (eggs_room_temperature))
    )
  )
)