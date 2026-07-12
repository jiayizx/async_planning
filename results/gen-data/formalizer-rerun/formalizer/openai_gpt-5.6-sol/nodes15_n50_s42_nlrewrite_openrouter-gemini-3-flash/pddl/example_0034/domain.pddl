(define (domain cook-lamb)
  (:requirements :durative-actions :typing)
  (:types
    step
    step1-type step2-type step3-type step4-type step5-type
    step6-type step7-type step8-type step9-type step10-type
    step11-type step12-type step13-type step14-type step15-type - step
  )

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (garlic_rosemary_minced)
    (meat_carved)
    (root_vegetables_chopped)
    (oven_preheated)
    (lamb_seared)
    (lamb_roasted)
    (lamb_rubbed)
    (gravy_reduced)
    (onions_diced)
    (vegetables_seasoned)
    (vegetables_on_tray)
    (pan_deglazed)
    (lamb_room_temperature)
    (onions_sauteed)
    (lamb_rested)
  )

  (:durative-action mince-garlic-and-rosemary
    :parameters (?s - step1-type)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (garlic_rosemary_minced))
    )
  )

  (:durative-action carve-meat-into-chops
    :parameters (?s - step2-type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (lamb_rested))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (meat_carved))
    )
  )

  (:durative-action wash-and-chop-root-vegetables
    :parameters (?s - step3-type)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (root_vegetables_chopped))
    )
  )

  (:durative-action preheat-oven
    :parameters (?s - step4-type)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (oven_preheated))
    )
  )

  (:durative-action sear-lamb-shoulder
    :parameters (?s - step5-type)
    :duration (= ?duration 720)
    :condition (and
      (at start (step_pending ?s))
      (at start (lamb_room_temperature))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lamb_seared))
    )
  )

  (:durative-action roast-lamb-and-vegetables
    :parameters (?s - step6-type)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (root_vegetables_chopped))
      (at start (onions_diced))
      (at start (onions_sauteed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lamb_roasted))
    )
  )

  (:durative-action rub-lamb-with-herb-butter
    :parameters (?s - step7-type)
    :duration (= ?duration 480)
    :condition (and
      (at start (step_pending ?s))
      (at start (garlic_rosemary_minced))
      (at start (oven_preheated))
      (at start (lamb_seared))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lamb_rubbed))
    )
  )

  (:durative-action reduce-pan-juices
    :parameters (?s - step8-type)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (vegetables_on_tray))
      (at start (pan_deglazed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (gravy_reduced))
    )
  )

  (:durative-action peel-and-dice-onions
    :parameters (?s - step9-type)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (onions_diced))
    )
  )

  (:durative-action season-vegetables
    :parameters (?s - step10-type)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (root_vegetables_chopped))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vegetables_seasoned))
    )
  )

  (:durative-action spread-vegetables-on-tray
    :parameters (?s - step11-type)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (vegetables_seasoned))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vegetables_on_tray))
    )
  )

  (:durative-action deglaze-roasting-pan
    :parameters (?s - step12-type)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pan_deglazed))
    )
  )

  (:durative-action bring-lamb-to-room-temperature
    :parameters (?s - step13-type)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lamb_room_temperature))
    )
  )

  (:durative-action saute-onions
    :parameters (?s - step14-type)
    :duration (= ?duration 480)
    :condition (and
      (at start (step_pending ?s))
      (at start (onions_diced))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (onions_sauteed))
    )
  )

  (:durative-action rest-roasted-lamb
    :parameters (?s - step15-type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (pan_deglazed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lamb_rested))
    )
  )
)