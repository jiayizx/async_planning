(define (domain chickpea-salad)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (soaked)
    (diced)
    (whisked)
    (chilled)
    (combined)
    (garnished)
    (garlic_added)
    (boiled)
    (tossed)
    (parsley_washed)
  )

  (:durative-action do_step1_soak_chickpeas
    :duration (= ?duration 43200)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (soaked))
    )
  )

  (:durative-action do_step2_dice_veg
    :duration (= ?duration 600)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (diced))
    )
  )

  (:durative-action do_step3_whisk_dressing
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (diced)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (whisked))
    )
  )

  (:durative-action do_step4_chill_dressing
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step4)) (at start (whisked)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (chilled))
    )
  )

  (:durative-action do_step5_combine_legumes
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step5)) (at start (boiled)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (combined))
    )
  )

  (:durative-action do_step6_garnish_parsley
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step6)) (at start (parsley_washed)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (garnished))
    )
  )

  (:durative-action do_step7_add_garlic_to_dressing
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step7)) (at start (chilled)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (garlic_added))
    )
  )

  (:durative-action do_step8_boil_chickpeas
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step8)) (at start (soaked)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (boiled))
    )
  )

  (:durative-action do_step9_pour_and_toss
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step9)) (at start (diced)) (at start (whisked)) (at start (garlic_added)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (tossed))
    )
  )

  (:durative-action do_step10_wash_parsley
    :duration (= ?duration 300)
    :condition (at start (step_pending step10))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (parsley_washed))
    )
  )
)
