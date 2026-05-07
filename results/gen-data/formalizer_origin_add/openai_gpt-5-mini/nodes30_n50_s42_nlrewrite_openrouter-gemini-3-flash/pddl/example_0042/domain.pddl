(define (domain go-walk)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (completed_s1)
    (completed_s2)
    (completed_s3)
    (completed_s4)
    (completed_s5)
    (completed_s6)
    (completed_s7)
    (completed_s8)
    (completed_s9)
    (completed_s10)
    (completed_s11)
    (completed_s12)
    (completed_s13)
    (completed_s14)
    (completed_s15)
    (completed_s16)
    (completed_s17)
    (completed_s18)
    (completed_s19)
    (completed_s20)
    (completed_s21)
    (completed_s22)
    (completed_s23)
    (completed_s24)
    (completed_s25)
    (completed_s26)
    (completed_s27)
    (completed_s28)
    (completed_s29)
    (completed_s30)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step1)) (at start (completed_s10)) (at start (completed_s15)) (at start (completed_s16)) (at start (completed_s18)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (completed_s1))))

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step2)) (at start (completed_s16)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (completed_s2))))

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step3)) (at start (completed_s20)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (completed_s3))))

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step4)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (completed_s4))))

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (completed_s28)) (at start (completed_s16)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (completed_s5))))

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step6)) (at start (completed_s23)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (completed_s6))))

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step7)) (at start (completed_s8)) (at start (completed_s12)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (completed_s7))))

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step8)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (completed_s8))))

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step9)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (completed_s9))))

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step10)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (completed_s10))))

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step11)) (at start (completed_s28)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (completed_s11))))

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step12)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (completed_s12))))

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step13)) (at start (completed_s1)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (completed_s13))))

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step14)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (completed_s14))))

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step15)) (at start (completed_s16)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (completed_s15))))

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step16)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (completed_s16))))

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step17)) (at start (completed_s22)) (at start (completed_s27)) (at start (completed_s21)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (completed_s17))))

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step18)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (completed_s18))))

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step19)) (at start (completed_s11)) (at start (completed_s18)) (at start (completed_s23)) (at start (completed_s16)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (completed_s19))))

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step20)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (completed_s20))))

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step21)) (at start (completed_s2)) (at start (completed_s9)) (at start (completed_s16)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (completed_s21))))

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step22)) (at start (completed_s14)) (at start (completed_s23)) (at start (completed_s25)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (completed_s22))))

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step23)) (at start (completed_s24)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (completed_s23))))

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step24)) (at start (completed_s12)) (at start (completed_s16)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (completed_s24))))

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step25)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (completed_s25))))

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step26)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (completed_s26))))

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step27)) (at start (completed_s10)) (at start (completed_s12)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (completed_s27))))

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step28)) (at start (completed_s1)) (at start (completed_s4)) (at start (completed_s23)) (at start (completed_s13)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (completed_s28))))

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step29)) (at start (completed_s13)) (at start (completed_s15)) (at start (completed_s25)) (at start (completed_s21)) (at start (completed_s3)) (at start (completed_s6)) (at start (completed_s8)) (at start (completed_s19)) (at start (completed_s28)) (at start (completed_s22)) (at start (completed_s23)) (at start (completed_s5)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (completed_s29))))

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step30)) (at start (completed_s3)) (at start (completed_s17)) (at start (completed_s21)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (completed_s30))))
)
