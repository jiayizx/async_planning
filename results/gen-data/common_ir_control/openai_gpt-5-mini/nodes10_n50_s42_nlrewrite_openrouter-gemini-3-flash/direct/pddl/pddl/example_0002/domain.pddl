(define (domain remember_great_lakes)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_completed)
    (s2_completed)
    (s3_completed)
    (s4_completed)
    (s5_completed)
    (s6_completed)
    (s7_completed)
    (s8_completed)
    (s9_completed)
    (s10_completed)
  )

  ; Step 1: Research the geographic location of each lake (2700s)
  (:durative-action do_step1_research_locations
    :duration (= ?duration 2700)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_completed))
    )
  )

  ; Step 2: Recite the names aloud from memory (300s)
  (:durative-action do_step2_recite_names
    :duration (= ?duration 300)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_completed))
    )
  )

  ; Step 3: Read a brief history of the shipping industry on the lakes (3600s)
  (:durative-action do_step3_read_history
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step3)) (at start (s9_completed)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_completed))
    )
  )

  ; Step 4: Draw a color-coded map of the Great Lakes region (1800s)
  (:durative-action do_step4_draw_map
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step4)) (at start (s1_completed)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_completed))
    )
  )

  ; Step 5: Take a self-administered practice quiz on the lake names (600s)
  (:durative-action do_step5_take_quiz
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step5)) (at start (s2_completed)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (s5_completed))
    )
  )

  ; Step 6: Watch a documentary about the Great Lakes ecosystem (5400s)
  (:durative-action do_step6_watch_documentary
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending step6)) (at start (s3_completed)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (s6_completed))
    )
  )

  ; Step 7: Review the quiz results and correct any mistakes (900s)
  (:durative-action do_step7_review_quiz
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step7)) (at start (s5_completed)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (s7_completed))
    )
  )

  ; Step 8: Create a mnemonic device using the first letter of each lake (1200s)
  (:durative-action do_step8_create_mnemonic
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step8)) (at start (s6_completed)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (s8_completed))
    )
  )

  ; Step 9: Purchase a reference book about North American geography (900s)
  (:durative-action do_step9_purchase_book
    :duration (= ?duration 900)
    :condition (at start (step_pending step9))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (s9_completed))
    )
  )

  ; Step 10: Explain the "HOMES" acronym to a friend to solidify memory (600s)
  ; This action produces the final semantic predicate s10_completed which is required in the goal
  (:durative-action do_step10_explain_homes
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step10)) (at start (s2_completed)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (s10_completed))
    )
  )
)
