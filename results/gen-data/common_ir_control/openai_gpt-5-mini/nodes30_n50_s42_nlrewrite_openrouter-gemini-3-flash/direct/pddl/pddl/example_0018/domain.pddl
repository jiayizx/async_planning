(define (domain dance-tryout)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; unique semantic predicates for each step
    (s1_complete) (s2_complete) (s3_complete) (s4_complete) (s5_complete)
    (s6_complete) (s7_complete) (s8_complete) (s9_complete) (s10_complete)
    (s11_complete) (s12_complete) (s13_complete) (s14_complete) (s15_complete)
    (s16_complete) (s17_complete) (s18_complete) (s19_complete) (s20_complete)
    (s21_complete) (s22_complete) (s23_complete) (s24_complete) (s25_complete)
    (s26_complete) (s27_complete) (s28_complete) (s29_complete) (s30_complete)
  )

  ; Step 1
  (:durative-action do_step1
    :duration (= ?duration 600)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_complete))
    )
  )

  ; Step 2
  (:durative-action do_step2
    :duration (= ?duration 7200)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_complete))
    )
  )

  ; Step 3 (predecessors: 5, 8, 12, 20, 30)
  (:durative-action do_step3
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending step3))
      (at start (s5_complete)) (at start (s8_complete)) (at start (s12_complete)) (at start (s20_complete)) (at start (s30_complete))
    )
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_complete))
    )
  )

  ; Step 4 (predecessors: 3, 15)
  (:durative-action do_step4
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending step4))
      (at start (s3_complete)) (at start (s15_complete))
    )
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_complete))
    )
  )

  ; Step 5
  (:durative-action do_step5
    :duration (= ?duration 3600)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (s5_complete))
    )
  )

  ; Step 6 (predecessors: 10, 17, 29)
  (:durative-action do_step6
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending step6))
      (at start (s10_complete)) (at start (s17_complete)) (at start (s29_complete))
    )
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (s6_complete))
    )
  )

  ; Step 7 (predecessor: 24)
  (:durative-action do_step7
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending step7))
      (at start (s24_complete))
    )
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (s7_complete))
    )
  )

  ; Step 8 (predecessors: 11, 30)
  (:durative-action do_step8
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending step8))
      (at start (s11_complete)) (at start (s30_complete))
    )
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (s8_complete))
    )
  )

  ; Step 9 (predecessors: 1, 18)
  (:durative-action do_step9
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending step9))
      (at start (s1_complete)) (at start (s18_complete))
    )
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (s9_complete))
    )
  )

  ; Step 10 (predecessor: 4)
  (:durative-action do_step10
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step10))
      (at start (s4_complete))
    )
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (s10_complete))
    )
  )

  ; Step 11 (predecessor: 16)
  (:durative-action do_step11
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending step11))
      (at start (s16_complete))
    )
    :effect (and
      (at start (not (step_pending step11)))
      (at end (step_done step11))
      (at end (s11_complete))
    )
  )

  ; Step 12 (predecessors: 24, 28)
  (:durative-action do_step12
    :duration (= ?duration 432000)
    :condition (and
      (at start (step_pending step12))
      (at start (s24_complete)) (at start (s28_complete))
    )
    :effect (and
      (at start (not (step_pending step12)))
      (at end (step_done step12))
      (at end (s12_complete))
    )
  )

  ; Step 13
  (:durative-action do_step13
    :duration (= ?duration 3600)
    :condition (at start (step_pending step13))
    :effect (and
      (at start (not (step_pending step13)))
      (at end (step_done step13))
      (at end (s13_complete))
    )
  )

  ; Step 14 (predecessors: 13, 22, 23)
  (:durative-action do_step14
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending step14))
      (at start (s13_complete)) (at start (s22_complete)) (at start (s23_complete))
    )
    :effect (and
      (at start (not (step_pending step14)))
      (at end (step_done step14))
      (at end (s14_complete))
    )
  )

  ; Step 15 (predecessors: 9, 30)
  (:durative-action do_step15
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending step15))
      (at start (s9_complete)) (at start (s30_complete))
    )
    :effect (and
      (at start (not (step_pending step15)))
      (at end (step_done step15))
      (at end (s15_complete))
    )
  )

  ; Step 16
  (:durative-action do_step16
    :duration (= ?duration 604800)
    :condition (at start (step_pending step16))
    :effect (and
      (at start (not (step_pending step16)))
      (at end (step_done step16))
      (at end (s16_complete))
    )
  )

  ; Step 17
  (:durative-action do_step17
    :duration (= ?duration 600)
    :condition (at start (step_pending step17))
    :effect (and
      (at start (not (step_pending step17)))
      (at end (step_done step17))
      (at end (s17_complete))
    )
  )

  ; Step 18 (predecessor: 27)
  (:durative-action do_step18
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending step18))
      (at start (s27_complete))
    )
    :effect (and
      (at start (not (step_pending step18)))
      (at end (step_done step18))
      (at end (s18_complete))
    )
  )

  ; Step 19 (predecessor: 25)
  (:durative-action do_step19
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending step19))
      (at start (s25_complete))
    )
    :effect (and
      (at start (not (step_pending step19)))
      (at end (step_done step19))
      (at end (s19_complete))
    )
  )

  ; Step 20 (predecessor: 2)
  (:durative-action do_step20
    :duration (= ?duration 345600)
    :condition (and
      (at start (step_pending step20))
      (at start (s2_complete))
    )
    :effect (and
      (at start (not (step_pending step20)))
      (at end (step_done step20))
      (at end (s20_complete))
    )
  )

  ; Step 21 (predecessors: 13, 23)
  (:durative-action do_step21
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending step21))
      (at start (s13_complete)) (at start (s23_complete))
    )
    :effect (and
      (at start (not (step_pending step21)))
      (at end (step_done step21))
      (at end (s21_complete))
    )
  )

  ; Step 22
  (:durative-action do_step22
    :duration (= ?duration 2700)
    :condition (at start (step_pending step22))
    :effect (and
      (at start (not (step_pending step22)))
      (at end (step_done step22))
      (at end (s22_complete))
    )
  )

  ; Step 23
  (:durative-action do_step23
    :duration (= ?duration 1800)
    :condition (at start (step_pending step23))
    :effect (and
      (at start (not (step_pending step23)))
      (at end (step_done step23))
      (at end (s23_complete))
    )
  )

  ; Step 24
  (:durative-action do_step24
    :duration (= ?duration 900)
    :condition (at start (step_pending step24))
    :effect (and
      (at start (not (step_pending step24)))
      (at end (step_done step24))
      (at end (s24_complete))
    )
  )

  ; Step 25 (predecessor: 21)
  (:durative-action do_step25
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending step25))
      (at start (s21_complete))
    )
    :effect (and
      (at start (not (step_pending step25)))
      (at end (step_done step25))
      (at end (s25_complete))
    )
  )

  ; Step 26 (predecessors: 21, 23)
  (:durative-action do_step26
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending step26))
      (at start (s21_complete)) (at start (s23_complete))
    )
    :effect (and
      (at start (not (step_pending step26)))
      (at end (step_done step26))
      (at end (s26_complete))
    )
  )

  ; Step 27 (predecessors: 24, 29)
  (:durative-action do_step27
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending step27))
      (at start (s24_complete)) (at start (s29_complete))
    )
    :effect (and
      (at start (not (step_pending step27)))
      (at end (step_done step27))
      (at end (s27_complete))
    )
  )

  ; Step 28 (predecessor: 23)
  (:durative-action do_step28
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending step28))
      (at start (s23_complete))
    )
    :effect (and
      (at start (not (step_pending step28)))
      (at end (step_done step28))
      (at end (s28_complete))
    )
  )

  ; Step 29
  (:durative-action do_step29
    :duration (= ?duration 2700)
    :condition (at start (step_pending step29))
    :effect (and
      (at start (not (step_pending step29)))
      (at end (step_done step29))
      (at end (s29_complete))
    )
  )

  ; Step 30 (predecessor: 7)
  (:durative-action do_step30
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step30))
      (at start (s7_complete))
    )
    :effect (and
      (at start (not (step_pending step30)))
      (at end (step_done step30))
      (at end (s30_complete))
    )
  )
)
