(define (domain paint_furniture)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (finished1)
    (finished2)
    (finished3)
    (finished4)
    (finished5)
    (finished6)
    (finished7)
    (finished8)
    (finished9)
    (finished10)
    (finished11)
    (finished12)
    (finished13)
    (finished14)
    (finished15)
    (finished16)
    (finished17)
    (finished18)
    (finished19)
    (finished20)
    (finished21)
    (finished22)
    (finished23)
    (finished24)
    (finished25)
    (finished26)
    (finished27)
    (finished28)
    (finished29)
    (finished30)
  )

  ; Step 1
  (:durative-action do_step1
    :duration (= ?duration 2700)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (finished1))
    )
  )

  ; Step 2
  (:durative-action do_step2
    :duration (= ?duration 3600)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (finished2))
    )
  )

  ; Step 3 (pre: 1)
  (:durative-action do_step3
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step3)) (at start (finished1)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (finished3))
    )
  )

  ; Step 4 (pre: 23,29,30)
  (:durative-action do_step4
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step4)) (at start (finished23)) (at start (finished29)) (at start (finished30)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (finished4))
    )
  )

  ; Step 5
  (:durative-action do_step5
    :duration (= ?duration 7200)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (finished5))
    )
  )

  ; Step 6 (pre: 17, and 5->17 ensures 17 before 6 via finished17)
  (:durative-action do_step6
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step6)) (at start (finished17)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (finished6))
    )
  )

  ; Step 7 (pre: 12)
  (:durative-action do_step7
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step7)) (at start (finished12)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (finished7))
    )
  )

  ; Step 8 (pre: 27)
  (:durative-action do_step8
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step8)) (at start (finished27)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (finished8))
    )
  )

  ; Step 9 (pre: 18)
  (:durative-action do_step9
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step9)) (at start (finished18)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (finished9))
    )
  )

  ; Step 10 (pre: 11)
  (:durative-action do_step10
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step10)) (at start (finished11)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (finished10))
    )
  )

  ; Step 11 (pre: 3)
  (:durative-action do_step11
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step11)) (at start (finished3)))
    :effect (and
      (at start (not (step_pending step11)))
      (at end (step_done step11))
      (at end (finished11))
    )
  )

  ; Step 12 (pre: 24)
  (:durative-action do_step12
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step12)) (at start (finished24)))
    :effect (and
      (at start (not (step_pending step12)))
      (at end (step_done step12))
      (at end (finished12))
    )
  )

  ; Step 13 (pre: 29)
  (:durative-action do_step13
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step13)) (at start (finished29)))
    :effect (and
      (at start (not (step_pending step13)))
      (at end (step_done step13))
      (at end (finished13))
    )
  )

  ; Step 14 (pre: 7,19)
  (:durative-action do_step14
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step14)) (at start (finished7)) (at start (finished19)))
    :effect (and
      (at start (not (step_pending step14)))
      (at end (step_done step14))
      (at end (finished14))
    )
  )

  ; Step 15 (pre: 1)
  (:durative-action do_step15
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step15)) (at start (finished1)))
    :effect (and
      (at start (not (step_pending step15)))
      (at end (step_done step15))
      (at end (finished15))
    )
  )

  ; Step 16 (pre: 28)
  (:durative-action do_step16
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step16)) (at start (finished28)))
    :effect (and
      (at start (not (step_pending step16)))
      (at end (step_done step16))
      (at end (finished16))
    )
  )

  ; Step 17 (pre: 5)
  (:durative-action do_step17
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step17)) (at start (finished5)))
    :effect (and
      (at start (not (step_pending step17)))
      (at end (step_done step17))
      (at end (finished17))
    )
  )

  ; Step 18
  (:durative-action do_step18
    :duration (= ?duration 1800)
    :condition (at start (step_pending step18))
    :effect (and
      (at start (not (step_pending step18)))
      (at end (step_done step18))
      (at end (finished18))
    )
  )

  ; Step 19 (pre: 26,30)
  (:durative-action do_step19
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step19)) (at start (finished26)) (at start (finished30)))
    :effect (and
      (at start (not (step_pending step19)))
      (at end (step_done step19))
      (at end (finished19))
    )
  )

  ; Step 20 (pre: 5,10,23)
  (:durative-action do_step20
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step20)) (at start (finished5)) (at start (finished10)) (at start (finished23)))
    :effect (and
      (at start (not (step_pending step20)))
      (at end (step_done step20))
      (at end (finished20))
    )
  )

  ; Step 21 (pre: 13,29)
  (:durative-action do_step21
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step21)) (at start (finished13)) (at start (finished29)))
    :effect (and
      (at start (not (step_pending step21)))
      (at end (step_done step21))
      (at end (finished21))
    )
  )

  ; Step 22 (pre: 23,26)
  (:durative-action do_step22
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step22)) (at start (finished23)) (at start (finished26)))
    :effect (and
      (at start (not (step_pending step22)))
      (at end (step_done step22))
      (at end (finished22))
    )
  )

  ; Step 23
  (:durative-action do_step23
    :duration (= ?duration 2700)
    :condition (at start (step_pending step23))
    :effect (and
      (at start (not (step_pending step23)))
      (at end (step_done step23))
      (at end (finished23))
    )
  )

  ; Step 24 (pre: 2)
  (:durative-action do_step24
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step24)) (at start (finished2)))
    :effect (and
      (at start (not (step_pending step24)))
      (at end (step_done step24))
      (at end (finished24))
    )
  )

  ; Step 25 (pre: 24)
  (:durative-action do_step25
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step25)) (at start (finished24)))
    :effect (and
      (at start (not (step_pending step25)))
      (at end (step_done step25))
      (at end (finished25))
    )
  )

  ; Step 26 (pre: 6,8)
  (:durative-action do_step26
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step26)) (at start (finished6)) (at start (finished8)))
    :effect (and
      (at start (not (step_pending step26)))
      (at end (step_done step26))
      (at end (finished26))
    )
  )

  ; Step 27 (pre: 18)
  (:durative-action do_step27
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step27)) (at start (finished18)))
    :effect (and
      (at start (not (step_pending step27)))
      (at end (step_done step27))
      (at end (finished27))
    )
  )

  ; Step 28
  (:durative-action do_step28
    :duration (= ?duration 1200)
    :condition (at start (step_pending step28))
    :effect (and
      (at start (not (step_pending step28)))
      (at end (step_done step28))
      (at end (finished28))
    )
  )

  ; Step 29 (pre: 7,26)
  (:durative-action do_step29
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step29)) (at start (finished7)) (at start (finished26)))
    :effect (and
      (at start (not (step_pending step29)))
      (at end (step_done step29))
      (at end (finished29))
    )
  )

  ; Step 30 (pre: none but needed for 4 and 19)
  (:durative-action do_step30
    :duration (= ?duration 900)
    :condition (at start (step_pending step30))
    :effect (and
      (at start (not (step_pending step30)))
      (at end (step_done step30))
      (at end (finished30))
    )
  )
)
