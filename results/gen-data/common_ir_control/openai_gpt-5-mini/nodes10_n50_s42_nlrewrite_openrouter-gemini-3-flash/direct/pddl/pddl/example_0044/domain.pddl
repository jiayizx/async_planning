(define (domain pico_de_gallo)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (s6_done)
    (s7_done)
    (s8_done)
    (s9_done)
    (s10_done)
  )

  ;; Step 1: Finely dice the Roma tomatoes (480s)
  (:durative-action do_step1_dice_tomatoes
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step1)) (at start (s2_done)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_done))
    )
  )

  ;; Step 2: Wash all fresh produce under cold water (120s)
  (:durative-action do_step2_wash_produce
    :duration (= ?duration 120)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_done))
    )
  )

  ;; Step 3: Mince the white onion (300s)
  (:durative-action do_step3_mince_onion
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (s1_done)) (at start (s2_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_done))
    )
  )

  ;; Step 4: Chill the mixture in the refrigerator (1800s)
  (:durative-action do_step4_chill_mixture
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step4)) (at start (s8_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_done))
    )
  )

  ;; Step 5: Juice a fresh lime (60s)
  (:durative-action do_step5_juice_lime
    :duration (= ?duration 60)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (s5_done))
    )
  )

  ;; Step 6: Season with sea salt and black pepper (30s)
  (:durative-action do_step6_season
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step6)) (at start (s9_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (s6_done))
    )
  )

  ;; Step 7: Finely chop cilantro (240s)
  (:durative-action do_step7_chop_cilantro
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step7)) (at start (s10_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (s7_done))
    )
  )

  ;; Step 8: Seed and mince jalapeño (180s)
  (:durative-action do_step8_mince_jalapeno
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step8)) (at start (s7_done)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (s8_done))
    )
  )

  ;; Step 9: Combine lime juice with chopped vegetables (120s)
  (:durative-action do_step9_combine_lime_and_veggies
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step9)) (at start (s5_done)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (s9_done))
    )
  )

  ;; Step 10: Toss the tomatoes and onions together (60s)
  (:durative-action do_step10_toss_tomatoes_onions
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step10)) (at start (s3_done)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (s10_done))
    )
  )
)
