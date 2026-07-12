(define (domain fruit-punch)
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
    (fruit_sliced)
    (mixture_poured)
    (juices_combined)
    (fruit_infused)
    (decorative_ice_added)
  )

  (:durative-action wash_and_slice_fruit
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fruit_sliced))
    )
  )

  (:durative-action pour_mixture_into_bowl
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (juices_combined))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mixture_poured))
    )
  )

  (:durative-action combine_juices_and_ginger_ale
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (juices_combined))
    )
  )

  (:durative-action infuse_sliced_fruit
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (fruit_sliced))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fruit_infused))
    )
  )

  (:durative-action add_decorative_ice_rings
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (fruit_infused))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (decorative_ice_added))
    )
  )
)