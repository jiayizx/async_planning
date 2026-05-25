(define (domain healthy_breakfast)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done_s1)
    (done_s2)
    (done_s3)
    (done_s4)
    (done_s5)
    (done_s6)
    (done_s7)
    (done_s8)
    (done_s9)
    (done_s10)
    (done_s11)
    (done_s12)
    (done_s13)
    (done_s14)
    (done_s15)
    (done_s16)
    (done_s17)
    (done_s18)
    (done_s19)
    (done_s20)
    (done_s21)
    (done_s22)
    (done_s23)
    (done_s24)
    (done_s25)
    (done_s26)
    (done_s27)
    (done_s28)
    (done_s29)
    (done_s30)
  )

  ; Step 1. Plate the finished meal (120s)
  (:durative-action do_step1
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step1) (done_s6) (done_s26)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (done_s1))
    )
  )

  ; Step 2. Sit down and eat (900s)
  (:durative-action do_step2
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step2) (done_s15) (done_s21) (done_s22) (done_s23)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (done_s2))
    )
  )

  ; Step 3. Retrieve ingredients from the pantry (300s)
  (:durative-action do_step3
    :duration (= ?duration 300)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (done_s3))
    )
  )

  ; Step 4. Garnish with fresh herbs (60s)
  (:durative-action do_step4
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step4) (done_s16) (done_s24)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (done_s4))
    )
  )

  ; Step 5. Boil water for poached eggs (480s)
  (:durative-action do_step5
    :duration (= ?duration 480)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (done_s5))
    )
  )

  ; Step 6. Slice whole grain bread (30s)
  (:durative-action do_step6
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step6) (done_s3) (done_s25)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (done_s6))
    )
  )

  ; Step 7. Wash the spinach (120s)
  (:durative-action do_step7
    :duration (= ?duration 120)
    :condition (at start (step_pending step7))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (done_s7))
    )
  )

  ; Step 8. Sauté the spinach (240s)
  (:durative-action do_step8
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step8) (done_s7) (done_s10)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (done_s8))
    )
  )

  ; Step 9. Measure out oats for porridge (60s)
  (:durative-action do_step9
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step9) (done_s3)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (done_s9))
    )
  )

  ; Step 10. Bring milk to a simmer (360s)
  (:durative-action do_step10
    :duration (= ?duration 360)
    :condition (at start (and (step_pending step10) (done_s9)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (done_s10))
    )
  )

  ; Step 11. Steep green tea (180s)
  (:durative-action do_step11
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step11) (done_s29)))
    :effect (and
      (at start (not (step_pending step11)))
      (at end (step_done step11))
      (at end (done_s11))
    )
  )

  ; Step 12. Grind fresh coffee beans (45s)
  (:durative-action do_step12
    :duration (= ?duration 45)
    :condition (at start (step_pending step12))
    :effect (and
      (at start (not (step_pending step12)))
      (at end (step_done step12))
      (at end (done_s12))
    )
  )

  ; Step 13. Drop eggs into the boiling water (240s)
  (:durative-action do_step13
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step13) (done_s5)))
    :effect (and
      (at start (not (step_pending step13)))
      (at end (step_done step13))
      (at end (done_s13))
    )
  )

  ; Step 14. Mix honey into the oats (30s)
  (:durative-action do_step14
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step14) (done_s9) (done_s19)))
    :effect (and
      (at start (not (step_pending step14)))
      (at end (step_done step14))
      (at end (done_s14))
    )
  )

  ; Step 15. Drain the poached eggs (60s)
  (:durative-action do_step15
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step15) (done_s13)))
    :effect (and
      (at start (not (step_pending step15)))
      (at end (step_done step15))
      (at end (done_s15))
    )
  )

  ; Step 16. Slice a fresh avocado (120s)
  (:durative-action do_step16
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step16) (done_s18)))
    :effect (and
      (at start (not (step_pending step16)))
      (at end (step_done step16))
      (at end (done_s16))
    )
  )

  ; Step 17. Mash avocado onto toast (120s)
  (:durative-action do_step17
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step17) (done_s9) (done_s16) (done_s28)))
    :effect (and
      (at start (not (step_pending step17)))
      (at end (step_done step17))
      (at end (done_s17))
    )
  )

  ; Step 18. Select a ripe avocado from the basket (30s)
  (:durative-action do_step18
    :duration (= ?duration 30)
    :condition (at start (step_pending step18))
    :effect (and
      (at start (not (step_pending step18)))
      (at end (step_done step18))
      (at end (done_s18))
    )
  )

  ; Step 19. Peel a banana (15s)
  (:durative-action do_step19
    :duration (= ?duration 15)
    :condition (at start (step_pending step19))
    :effect (and
      (at start (not (step_pending step19)))
      (at end (step_done step19))
      (at end (done_s19))
    )
  )

  ; Step 20. Season the eggs with pepper (20s)
  (:durative-action do_step20
    :duration (= ?duration 20)
    :condition (at start (and (step_pending step20) (done_s21)))
    :effect (and
      (at start (not (step_pending step20)))
      (at end (step_done step20))
      (at end (done_s20))
    )
  )

  ; Step 21. Place eggs on top of toast (45s)
  (:durative-action do_step21
    :duration (= ?duration 45)
    :condition (at start (and (step_pending step21) (done_s13)))
    :effect (and
      (at start (not (step_pending step21)))
      (at end (step_done step21))
      (at end (done_s21))
    )
  )

  ; Step 22. Pour a glass of orange juice (30s)
  (:durative-action do_step22
    :duration (= ?duration 30)
    :condition (at start (step_pending step22))
    :effect (and
      (at start (not (step_pending step22)))
      (at end (step_done step22))
      (at end (done_s22))
    )
  )

  ; Step 23. Sprinkle red pepper flakes on avocado (10s)
  (:durative-action do_step23
    :duration (= ?duration 10)
    :condition (at start (and (step_pending step23) (done_s17)))
    :effect (and
      (at start (not (step_pending step23)))
      (at end (step_done step23))
      (at end (done_s23))
    )
  )

  ; Step 24. Slice the banana into rounds (60s)
  (:durative-action do_step24
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step24) (done_s19) (done_s16)))
    :effect (and
      (at start (not (step_pending step24)))
      (at end (step_done step24))
      (at end (done_s24))
    )
  )

  ; Step 25. Dry the spinach leaves (120s)
  (:durative-action do_step25
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step25) (done_s7)))
    :effect (and
      (at start (not (step_pending step25)))
      (at end (step_done step25))
      (at end (done_s25))
    )
  )

  ; Step 26. Lightly toast the bread (180s)
  (:durative-action do_step26
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step26) (done_s28)))
    :effect (and
      (at start (not (step_pending step26)))
      (at end (step_done step26))
      (at end (done_s26))
    )
  )

  ; Step 27. Brew the coffee (300s)
  (:durative-action do_step27
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step27) (done_s12)))
    :effect (and
      (at start (not (step_pending step27)))
      (at end (step_done step27))
      (at end (done_s27))
    )
  )

  ; Step 28. Set the dining table (300s)
  (:durative-action do_step28
    :duration (= ?duration 300)
    :condition (at start (step_pending step28))
    :effect (and
      (at start (not (step_pending step28)))
      (at end (step_done step28))
      (at end (done_s28))
    )
  )

  ; Step 29. Heat the teapot (120s)
  (:durative-action do_step29
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step29) (done_s3)))
    :effect (and
      (at start (not (step_pending step29)))
      (at end (step_done step29))
      (at end (done_s29))
    )
  )

  ; Step 30. Pour the tea into a cup (30s)
  (:durative-action do_step30
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step30) (done_s11)))
    :effect (and
      (at start (not (step_pending step30)))
      (at end (step_done step30))
      (at end (done_s30))
    )
  )
)
