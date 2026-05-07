(define (domain visit_ruins)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (sem1) (sem2) (sem3) (sem4) (sem5) (sem6) (sem7) (sem8) (sem9) (sem10)
    (sem11) (sem12) (sem13) (sem14) (sem15) (sem16) (sem17) (sem18) (sem19) (sem20)
    (sem21) (sem22) (sem23) (sem24) (sem25) (sem26) (sem27) (sem28) (sem29) (sem30)
  )

  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step1)) (at start (sem10)) (at start (sem14)) (at start (sem29)) (at start (sem7)) (at start (sem30)) (at start (sem28)) (at start (sem13)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (sem1)))
  )

  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step2)) (at start (sem30)) (at start (sem11)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (sem2)))
  )

  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step3)) (at start (sem20)) (at start (sem23)) (at start (sem8)) (at start (sem21)) (at start (sem10)) (at start (sem7)) (at start (sem30)) (at start (sem11)) (at start (sem19)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (sem3)))
  )

  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step4)) (at start (sem6)) (at start (sem11)) (at start (sem20)) (at start (sem8)) (at start (sem21)) (at start (sem10)) (at start (sem7)) (at start (sem30)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (sem4)))
  )

  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (sem3)) (at start (sem11)) (at start (sem20)) (at start (sem23)) (at start (sem8)) (at start (sem21)) (at start (sem10)) (at start (sem7)) (at start (sem30)) (at start (sem19)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (sem5)))
  )

  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step6)) (at start (sem11)) (at start (sem20)) (at start (sem8)) (at start (sem21)) (at start (sem10)) (at start (sem7)) (at start (sem30)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (sem6)))
  )

  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step7)) (at start (sem30)) (at start (sem11)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (sem7)))
  )

  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step8)) (at start (sem21)) (at start (sem10)) (at start (sem7)) (at start (sem30)) (at start (sem11)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (sem8)))
  )

  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step9)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (sem9)))
  )

  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step10)) (at start (sem7)) (at start (sem30)) (at start (sem11)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (sem10)))
  )

  (:durative-action do-step11
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step11)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (sem11)))
  )

  (:durative-action do-step12
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step12)) (at start (sem13)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (sem12)))
  )

  (:durative-action do-step13
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step13)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (sem13)))
  )

  (:durative-action do-step14
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step14)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (sem14)))
  )

  (:durative-action do-step15
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step15)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (sem15)))
  )

  (:durative-action do-step16
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step16)) (at start (sem20)) (at start (sem8)) (at start (sem21)) (at start (sem10)) (at start (sem7)) (at start (sem30)) (at start (sem11)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (sem16)))
  )

  (:durative-action do-step17
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step17)) (at start (sem13)) (at start (sem19)) (at start (sem10)) (at start (sem7)) (at start (sem30)) (at start (sem11)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (sem17)))
  )

  (:durative-action do-step18
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step18)) (at start (sem17)) (at start (sem13)) (at start (sem19)) (at start (sem10)) (at start (sem7)) (at start (sem30)) (at start (sem11)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (sem18)))
  )

  (:durative-action do-step19
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step19)) (at start (sem10)) (at start (sem30)) (at start (sem7)) (at start (sem11)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (sem19)))
  )

  (:durative-action do-step20
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step20)) (at start (sem8)) (at start (sem21)) (at start (sem10)) (at start (sem7)) (at start (sem30)) (at start (sem11)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (sem20)))
  )

  (:durative-action do-step21
    :parameters ()
    :duration (= ?duration 3628800)
    :condition (and (at start (step_pending step21)) (at start (sem10)) (at start (sem7)) (at start (sem30)) (at start (sem11)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (sem21)))
  )

  (:durative-action do-step22
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step22)) (at start (sem27)) (at start (sem3)) (at start (sem4)) (at start (sem6)) (at start (sem9)) (at start (sem23)) (at start (sem29)) (at start (sem20)) (at start (sem8)) (at start (sem21)) (at start (sem10)) (at start (sem7)) (at start (sem30)) (at start (sem11)) (at start (sem19)) (at start (sem28)) (at start (sem13)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (sem22)))
  )

  (:durative-action do-step23
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step23)) (at start (sem11)) (at start (sem19)) (at start (sem10)) (at start (sem7)) (at start (sem30)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (sem23)))
  )

  (:durative-action do-step24
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step24)) (at start (sem25)) (at start (sem6)) (at start (sem22)) (at start (sem27)) (at start (sem3)) (at start (sem4)) (at start (sem9)) (at start (sem23)) (at start (sem29)) (at start (sem20)) (at start (sem8)) (at start (sem21)) (at start (sem10)) (at start (sem7)) (at start (sem30)) (at start (sem11)) (at start (sem19)) (at start (sem28)) (at start (sem13)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (sem24)))
  )

  (:durative-action do-step25
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step25)) (at start (sem6)) (at start (sem22)) (at start (sem11)) (at start (sem20)) (at start (sem8)) (at start (sem21)) (at start (sem10)) (at start (sem7)) (at start (sem30)) (at start (sem27)) (at start (sem3)) (at start (sem4)) (at start (sem9)) (at start (sem23)) (at start (sem29)) (at start (sem19)) (at start (sem28)) (at start (sem13)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (sem25)))
  )

  (:durative-action do-step26
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step26)) (at start (sem1)) (at start (sem15)) (at start (sem10)) (at start (sem14)) (at start (sem29)) (at start (sem7)) (at start (sem30)) (at start (sem28)) (at start (sem13)) (at start (sem11)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (sem26)))
  )

  (:durative-action do-step27
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step27)) (at start (sem3)) (at start (sem4)) (at start (sem6)) (at start (sem9)) (at start (sem23)) (at start (sem29)) (at start (sem20)) (at start (sem8)) (at start (sem21)) (at start (sem10)) (at start (sem7)) (at start (sem30)) (at start (sem11)) (at start (sem19)) (at start (sem28)) (at start (sem13)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (sem27)))
  )

  (:durative-action do-step28
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step28)) (at start (sem13)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (sem28)))
  )

  (:durative-action do-step29
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step29)) (at start (sem28)) (at start (sem13)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (sem29)))
  )

  (:durative-action do-step30
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step30)) (at start (sem11)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (sem30)))
  )
)
