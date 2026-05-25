(define (domain roast-turnips)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; unique semantic predicates produced by each step
    (purchased)
    (oven_preheated)
    (garnished)
    (tossed)
    (whisked)
    (washed)
    (greased)
    (peeled)
    (roasted)
    (patted)
  )

  ; Step 1: Purchase fresh turnips (2700s)
  (:durative-action do_purchase_turnips
    :duration (= ?duration 2700)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (purchased))
    )
  )

  ; Step 2: Preheat oven to 400F (900s)
  (:durative-action do_preheat_oven
    :duration (= ?duration 900)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (oven_preheated))
    )
  )

  ; Step 3: Garnish with parsley (120s) -- final semantic predicate
  (:durative-action do_garnish_parsley
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step3)) (at start (patted)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (garnished))
    )
  )

  ; Step 4: Toss turnips in oil & spice (180s) ; requires whisked
  (:durative-action do_toss_turnips
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step4)) (at start (whisked)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (tossed))
    )
  )

  ; Step 5: Whisk oil, salt, rosemary (300s)
  (:durative-action do_whisk_oil_mixture
    :duration (= ?duration 300)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (whisked))
    )
  )

  ; Step 6: Wash and scrub turnips (600s)
  (:durative-action do_wash_turnips
    :duration (= ?duration 600)
    :condition (at start (step_pending step6))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (washed))
    )
  )

  ; Step 7: Lightly grease baking sheet (60s) ; requires oven_preheated
  (:durative-action do_grease_sheet
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step7)) (at start (oven_preheated)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (greased))
    )
  )

  ; Step 8: Peel and dice turnips (1200s) ; requires purchased
  (:durative-action do_peel_and_dice
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step8)) (at start (purchased)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (peeled))
    )
  )

  ; Step 9: Roast turnips (2100s) ; requires oven_preheated, greased, peeled
  (:durative-action do_roast_turnips
    :duration (= ?duration 2100)
    :condition (and (at start (step_pending step9)) (at start (oven_preheated)) (at start (greased)) (at start (peeled)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (roasted))
    )
  )

  ; Step 10: Pat dry with towel (120s) ; requires washed
  (:durative-action do_pat_dry
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step10)) (at start (washed)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (patted))
    )
  )
)
