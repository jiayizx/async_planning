(define (domain calm-rabbit)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done_sem1)
    (done_sem2)
    (done_sem3)
    (done_sem4)
    (done_sem5)
    (done_sem6)
    (done_sem7)
    (done_sem8)
    (done_sem9)
    (done_sem10)
    (done_sem11)
    (done_sem12)
    (done_sem13)
    (done_sem14)
    (done_sem15)
    (done_sem16)
    (done_sem17)
    (done_sem18)
    (done_sem19)
    (done_sem20)
    (done_sem21)
    (done_sem22)
    (done_sem23)
    (done_sem24)
    (done_sem25)
    (done_sem26)
    (done_sem27)
    (done_sem28)
    (done_sem29)
    (done_sem30)
  )

  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step1)) (at start (done_sem21)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done_sem1)))
  )

  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step2)) (at start (done_sem6)) (at start (done_sem9)) (at start (done_sem15)) (at start (done_sem23)) (at start (done_sem24)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done_sem2)))
  )

  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step3)) (at start (done_sem14)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done_sem3)))
  )

  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (done_sem10)) (at start (done_sem27)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done_sem4)))
  )

  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step5)) (at start (done_sem13)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done_sem5)))
  )

  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step6)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done_sem6)))
  )

  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step7)) (at start (done_sem20)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done_sem7)))
  )

  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step8)) (at start (done_sem4)) (at start (done_sem15)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done_sem8)))
  )

  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step9)) (at start (done_sem30)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done_sem9)))
  )

  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step10)) (at start (done_sem9)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done_sem10)))
  )

  (:durative-action do-step11
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step11)) (at start (done_sem4)) (at start (done_sem14)) (at start (done_sem16)) (at start (done_sem26)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done_sem11)))
  )

  (:durative-action do-step12
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step12)) (at start (done_sem22)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done_sem12)))
  )

  (:durative-action do-step13
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step13)) (at start (done_sem17)) (at start (done_sem29)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done_sem13)))
  )

  (:durative-action do-step14
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step14)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done_sem14)))
  )

  (:durative-action do-step15
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step15)) (at start (done_sem23)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done_sem15)))
  )

  (:durative-action do-step16
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step16)) (at start (done_sem18)) (at start (done_sem23)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done_sem16)))
  )

  (:durative-action do-step17
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step17)) (at start (done_sem1)) (at start (done_sem15)) (at start (done_sem24)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done_sem17)))
  )

  (:durative-action do-step18
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step18)) (at start (done_sem23)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done_sem18)))
  )

  (:durative-action do-step19
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step19)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done_sem19)))
  )

  (:durative-action do-step20
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step20)) (at start (done_sem21)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done_sem20)))
  )

  (:durative-action do-step21
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step21)) (at start (done_sem4)) (at start (done_sem9)) (at start (done_sem19)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done_sem21)))
  )

  (:durative-action do-step22
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step22)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done_sem22)))
  )

  (:durative-action do-step23
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step23)) (at start (done_sem7)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done_sem23)))
  )

  (:durative-action do-step24
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step24)) (at start (done_sem25)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done_sem24)))
  )

  (:durative-action do-step25
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step25)) (at start (done_sem20)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done_sem25)))
  )

  (:durative-action do-step26
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step26)) (at start (done_sem28)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done_sem26)))
  )

  (:durative-action do-step27
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step27)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done_sem27)))
  )

  (:durative-action do-step28
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step28)) (at start (done_sem2)) (at start (done_sem21)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done_sem28)))
  )

  (:durative-action do-step29
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step29)) (at start (done_sem21)) (at start (done_sem14)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done_sem29)))
  )

  (:durative-action do-step30
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step30)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done_sem30)))
  )
)
