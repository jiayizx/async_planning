(define (domain grill_asparagus)
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

  ;; Step 1
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step1)) (at start (done_s5)) (at start (done_s3)) (at start (done_s6)) (at start (done_s24)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done_s1))))

  ;; Step 2
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step2)) (at start (done_s9)) (at start (done_s23)) (at start (done_s24)) (at start (done_s30)) (at start (done_s29)) (at start (done_s6)) (at start (done_s21)) (at start (done_s26)) (at start (done_s18)) (at start (done_s7)) (at start (done_s27)) (at start (done_s1)) (at start (done_s5)) (at start (done_s3)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done_s2))))

  ;; Step 3
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step3)) (at start (done_s6)) (at start (done_s24)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done_s3))))

  ;; Step 4
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done_s4))))

  ;; Step 5
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step5)) (at start (done_s3)) (at start (done_s6)) (at start (done_s24)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done_s5))))

  ;; Step 6
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done_s6))))

  ;; Step 7
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step7)) (at start (done_s27)) (at start (done_s9)) (at start (done_s22)) (at start (done_s23)) (at start (done_s24)) (at start (done_s30)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done_s7))))

  ;; Step 8
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step8)) (at start (done_s2)) (at start (done_s14)) (at start (done_s9)) (at start (done_s23)) (at start (done_s24)) (at start (done_s30)) (at start (done_s29)) (at start (done_s6)) (at start (done_s21)) (at start (done_s26)) (at start (done_s18)) (at start (done_s7)) (at start (done_s27)) (at start (done_s1)) (at start (done_s5)) (at start (done_s3)) (at start (done_s19)) (at start (done_s22)) (at start (done_s19)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done_s8))))

  ;; Step 9
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step9)) (at start (done_s23)) (at start (done_s24)) (at start (done_s30)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done_s9))))

  ;; Step 10
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step10)) (at start (done_s25)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done_s10))))

  ;; Step 11
  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step11)) (at start (done_s10)) (at start (done_s25)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done_s11))))

  ;; Step 12
  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step12)) (at start (done_s11)) (at start (done_s10)) (at start (done_s25)) (at start (done_s13)) (at start (done_s20)) (at start (done_s22)) (at start (done_s23)) (at start (done_s4)) (at start (done_s30)) (at start (done_s24)) (at start (done_s16)) (at start (done_s15)) (at start (done_s27)) (at start (done_s9)) (at start (done_s19)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done_s12))))

  ;; Step 13
  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step13)) (at start (done_s20)) (at start (done_s22)) (at start (done_s23)) (at start (done_s4)) (at start (done_s30)) (at start (done_s24)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done_s13))))

  ;; Step 14
  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step14)) (at start (done_s19)) (at start (done_s23)) (at start (done_s9)) (at start (done_s24)) (at start (done_s30)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done_s14))))

  ;; Step 15
  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step15)) (at start (done_s27)) (at start (done_s9)) (at start (done_s22)) (at start (done_s23)) (at start (done_s24)) (at start (done_s30)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done_s15))))

  ;; Step 16
  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step16)) (at start (done_s15)) (at start (done_s27)) (at start (done_s9)) (at start (done_s22)) (at start (done_s23)) (at start (done_s24)) (at start (done_s30)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done_s16))))

  ;; Step 17
  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step17)) (at start (done_s11)) (at start (done_s10)) (at start (done_s25)) (at start (done_s22)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done_s17))))

  ;; Step 18
  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step18)) (at start (done_s1)) (at start (done_s5)) (at start (done_s3)) (at start (done_s6)) (at start (done_s24)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done_s18))))

  ;; Step 19
  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step19)) (at start (done_s9)) (at start (done_s23)) (at start (done_s24)) (at start (done_s30)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done_s19))))

  ;; Step 20
  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step20)) (at start (done_s4)) (at start (done_s22)) (at start (done_s30)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done_s20))))

  ;; Step 21
  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step21)) (at start (done_s25)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done_s21))))

  ;; Step 22
  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done_s22))))

  ;; Step 23
  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step23)) (at start (done_s24)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done_s23))))

  ;; Step 24
  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done_s24))))

  ;; Step 25
  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step25))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done_s25))))

  ;; Step 26
  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step26)) (at start (done_s7)) (at start (done_s18)) (at start (done_s27)) (at start (done_s9)) (at start (done_s22)) (at start (done_s23)) (at start (done_s24)) (at start (done_s30)) (at start (done_s1)) (at start (done_s5)) (at start (done_s3)) (at start (done_s6)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done_s26))))

  ;; Step 27
  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step27)) (at start (done_s9)) (at start (done_s22)) (at start (done_s23)) (at start (done_s24)) (at start (done_s30)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done_s27))))

  ;; Step 28
  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step28)) (at start (done_s8)) (at start (done_s2)) (at start (done_s14)) (at start (done_s9)) (at start (done_s23)) (at start (done_s24)) (at start (done_s30)) (at start (done_s29)) (at start (done_s6)) (at start (done_s21)) (at start (done_s26)) (at start (done_s18)) (at start (done_s7)) (at start (done_s27)) (at start (done_s1)) (at start (done_s5)) (at start (done_s3)) (at start (done_s19)) (at start (done_s22)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done_s28))))

  ;; Step 29
  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step29)) (at start (done_s6)) (at start (done_s21)) (at start (done_s25)) (at start (done_s24)) (at start (done_s26)) (at start (done_s7)) (at start (done_s18)) (at start (done_s1)) (at start (done_s5)) (at start (done_s3)) (at start (done_s27)) (at start (done_s9)) (at start (done_s22)) (at start (done_s23)) (at start (done_s30)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done_s29))))

  ;; Step 30
  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done_s30))))
)
