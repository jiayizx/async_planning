(define (domain bleach_removal)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (lemon_juice_located)
    (lemon_juice_scrubbed)
    (cream_applied)
    (paste_prepared)
    (hands_rinsed_cold)
    (orange_sliced)
    (orange_rubbed)
    (vinegar_poured)
    (final_rinse_done)
    (paste_massaged)
    (counter_wiped)
    (towel_located)
    (soap_wash_done)
    (hands_patted_dry)
    (fingertips_soaked)
    (odor_inspected)
    (skin_air_dried)
    (hands_submerged)
    (spoon_rubbed)
    (bottle_opened)
  )

  (:durative-action locate_lemon_juice
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lemon_juice_located)))
  )

  (:durative-action scrub_lemon_juice
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (hands_rinsed_cold)) (at start (towel_located)) (at start (soap_wash_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lemon_juice_scrubbed)))
  )

  (:durative-action apply_cream
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (skin_air_dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cream_applied)))
  )

  (:durative-action prepare_paste
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paste_prepared)))
  )

  (:durative-action rinse_cold
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hands_rinsed_cold)))
  )

  (:durative-action slice_orange
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (orange_sliced)))
  )

  (:durative-action rub_orange
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (orange_sliced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (orange_rubbed)))
  )

  (:durative-action pour_vinegar
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (bottle_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vinegar_poured)))
  )

  (:durative-action final_rinse
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (fingertips_soaked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (final_rinse_done)))
  )

  (:durative-action massage_paste
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (paste_prepared)) (at start (spoon_rubbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paste_massaged)))
  )

  (:durative-action wipe_counter
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (soap_wash_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (counter_wiped)))
  )

  (:durative-action locate_towel
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (towel_located)))
  )

  (:durative-action wash_soap
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (soap_wash_done)))
  )

  (:durative-action pat_dry
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (orange_rubbed)) (at start (odor_inspected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hands_patted_dry)))
  )

  (:durative-action soak_fingertips
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (hands_submerged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fingertips_soaked)))
  )

  (:durative-action inspect_odor
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (odor_inspected)))
  )

  (:durative-action air_dry
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (skin_air_dried)))
  )

  (:durative-action submerge_hands
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (vinegar_poured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hands_submerged)))
  )

  (:durative-action rub_spoon
    :parameters (?s - step)
    :duration (= ?duration 90)
    :condition (and (at start (step_pending ?s)) (at start (hands_rinsed_cold)) (at start (orange_sliced)) (at start (orange_rubbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spoon_rubbed)))
  )

  (:durative-action open_bottle
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (lemon_juice_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottle_opened)))
  )
)