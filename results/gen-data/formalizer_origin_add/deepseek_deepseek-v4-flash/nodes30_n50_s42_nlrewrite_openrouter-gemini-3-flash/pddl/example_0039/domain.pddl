(define (domain scholarship)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending ?s - step)
    (done ?s - step)
    (result_step1) (result_step2) (result_step3) (result_step4) (result_step5)
    (result_step6) (result_step7) (result_step8) (result_step9) (result_step10)
    (result_step11) (result_step12) (result_step13) (result_step14) (result_step15)
    (result_step16) (result_step17) (result_step18) (result_step19) (result_step20)
    (result_step21) (result_step22) (result_step23) (result_step24) (result_step25)
    (result_step26) (result_step27) (result_step28) (result_step29) (result_step30)
  )
  (:durative-action do_step1
    :duration (= ?duration 14400)
    :condition (at start (pending step1))
    :effect (and (at start (not (pending step1))) (at end (done step1)) (at end (result_step1))))
  (:durative-action do_step2
    :duration (= ?duration 7200)
    :condition (at start (pending step2))
    :effect (and (at start (not (pending step2))) (at end (done step2)) (at end (result_step2))))
  (:durative-action do_step3
    :duration (= ?duration 1209600)
    :condition (at start (pending step3))
    :effect (and (at start (not (pending step3))) (at end (done step3)) (at end (result_step3))))
  (:durative-action do_step4
    :duration (= ?duration 2700)
    :condition (and (at start (pending step4)) (at start (result_step5)) (at start (result_step17)) (at start (result_step18)) (at start (result_step24)))
    :effect (and (at start (not (pending step4))) (at end (done step4)) (at end (result_step4))))
  (:durative-action do_step5
    :duration (= ?duration 900)
    :condition (at start (pending step5))
    :effect (and (at start (not (pending step5))) (at end (done step5)) (at end (result_step5))))
  (:durative-action do_step6
    :duration (= ?duration 432000)
    :condition (and (at start (pending step6)) (at start (result_step5)) (at start (result_step17)) (at start (result_step18)) (at start (result_step19)) (at start (result_step23)) (at start (result_step24)) (at start (result_step30)))
    :effect (and (at start (not (pending step6))) (at end (done step6)) (at end (result_step6))))
  (:durative-action do_step7
    :duration (= ?duration 1800)
    :condition (and (at start (pending step7)) (at start (result_step1)))
    :effect (and (at start (not (pending step7))) (at end (done step7)) (at end (result_step7))))
  (:durative-action do_step8
    :duration (= ?duration 604800)
    :condition (and (at start (pending step8)) (at start (result_step1)) (at start (result_step3)) (at start (result_step7)) (at start (result_step9)))
    :effect (and (at start (not (pending step8))) (at end (done step8)) (at end (result_step8))))
  (:durative-action do_step9
    :duration (= ?duration 3600)
    :condition (and (at start (pending step9)) (at start (result_step3)))
    :effect (and (at start (not (pending step9))) (at end (done step9)) (at end (result_step9))))
  (:durative-action do_step10
    :duration (= ?duration 259200)
    :condition (and (at start (pending step10)) (at start (result_step3)) (at start (result_step5)) (at start (result_step9))
                  (at start (result_step14)) (at start (result_step17)) (at start (result_step18)) (at start (result_step23))
                  (at start (result_step24)) (at start (result_step26)) (at start (result_step28)) (at start (result_step30)))
    :effect (and (at start (not (pending step10))) (at end (done step10)) (at end (result_step10))))
  (:durative-action do_step11
    :duration (= ?duration 18000)
    :condition (and (at start (pending step11)) (at start (result_step1)) (at start (result_step3)) (at start (result_step7))
                  (at start (result_step8)) (at start (result_step9)))
    :effect (and (at start (not (pending step11))) (at end (done step11)) (at end (result_step11))))
  (:durative-action do_step12
    :duration (= ?duration 2592000)
    :condition (and (at start (pending step12)) (at start (result_step3)) (at start (result_step5)) (at start (result_step9))
                  (at start (result_step14)) (at start (result_step17)) (at start (result_step18)) (at start (result_step23))
                  (at start (result_step24)) (at start (result_step26)) (at start (result_step28)) (at start (result_step30)))
    :effect (and (at start (not (pending step12))) (at end (done step12)) (at end (result_step12))))
  (:durative-action do_step13
    :duration (= ?duration 172800)
    :condition (and (at start (pending step13)) (at start (result_step3)) (at start (result_step9)) (at start (result_step26)))
    :effect (and (at start (not (pending step13))) (at end (done step13)) (at end (result_step13))))
  (:durative-action do_step14
    :duration (= ?duration 14400)
    :condition (and (at start (pending step14)) (at start (result_step3)) (at start (result_step9)) (at start (result_step26)))
    :effect (and (at start (not (pending step14))) (at end (done step14)) (at end (result_step14))))
  (:durative-action do_step15
    :duration (= ?duration 600)
    :condition (and (at start (pending step15)) (at start (result_step1)) (at start (result_step3)) (at start (result_step5))
                  (at start (result_step9)) (at start (result_step10)) (at start (result_step14)) (at start (result_step17))
                  (at start (result_step18)) (at start (result_step23)) (at start (result_step24)) (at start (result_step26))
                  (at start (result_step28)) (at start (result_step30)))
    :effect (and (at start (not (pending step15))) (at end (done step15)) (at end (result_step15))))
  (:durative-action do_step16
    :duration (= ?duration 10800)
    :condition (and (at start (pending step16)) (at start (result_step17)) (at start (result_step24)) (at start (result_step25)))
    :effect (and (at start (not (pending step16))) (at end (done step16)) (at end (result_step16))))
  (:durative-action do_step17
    :duration (= ?duration 3600)
    :condition (and (at start (pending step17)) (at start (result_step24)))
    :effect (and (at start (not (pending step17))) (at end (done step17)) (at end (result_step17))))
  (:durative-action do_step18
    :duration (= ?duration 7200)
    :condition (and (at start (pending step18)) (at start (result_step5)) (at start (result_step17)) (at start (result_step24)))
    :effect (and (at start (not (pending step18))) (at end (done step18)) (at end (result_step18))))
  (:durative-action do_step19
    :duration (= ?duration 3600)
    :condition (at start (pending step19))
    :effect (and (at start (not (pending step19))) (at end (done step19)) (at end (result_step19))))
  (:durative-action do_step20
    :duration (= ?duration 900)
    :condition (and (at start (pending step20)) (at start (result_step3)) (at start (result_step5)) (at start (result_step9))
                  (at start (result_step10)) (at start (result_step14)) (at start (result_step17)) (at start (result_step18))
                  (at start (result_step23)) (at start (result_step24)) (at start (result_step26)) (at start (result_step28))
                  (at start (result_step30)))
    :effect (and (at start (not (pending step20))) (at end (done step20)) (at end (result_step20))))
  (:durative-action do_step21
    :duration (= ?duration 1200)
    :condition (and (at start (pending step21)) (at start (result_step3)) (at start (result_step5)) (at start (result_step9))
                  (at start (result_step12)) (at start (result_step14)) (at start (result_step17)) (at start (result_step18))
                  (at start (result_step23)) (at start (result_step24)) (at start (result_step26)) (at start (result_step28))
                  (at start (result_step30)))
    :effect (and (at start (not (pending step21))) (at end (done step21)) (at end (result_step21))))
  (:durative-action do_step22
    :duration (= ?duration 3600)
    :condition (and (at start (pending step22)) (at start (result_step3)) (at start (result_step5)) (at start (result_step9))
                  (at start (result_step12)) (at start (result_step14)) (at start (result_step17)) (at start (result_step18))
                  (at start (result_step21)) (at start (result_step23)) (at start (result_step24)) (at start (result_step26))
                  (at start (result_step28)) (at start (result_step30)))
    :effect (and (at start (not (pending step22))) (at end (done step22)) (at end (result_step22))))
  (:durative-action do_step23
    :duration (= ?duration 600)
    :condition (and (at start (pending step23)) (at start (result_step5)) (at start (result_step17)) (at start (result_step18))
                  (at start (result_step24)) (at start (result_step30)))
    :effect (and (at start (not (pending step23))) (at end (done step23)) (at end (result_step23))))
  (:durative-action do_step24
    :duration (= ?duration 3600)
    :condition (at start (pending step24))
    :effect (and (at start (not (pending step24))) (at end (done step24)) (at end (result_step24))))
  (:durative-action do_step25
    :duration (= ?duration 7776000)
    :condition (at start (pending step25))
    :effect (and (at start (not (pending step25))) (at end (done step25)) (at end (result_step25))))
  (:durative-action do_step26
    :duration (= ?duration 7200)
    :condition (and (at start (pending step26)) (at start (result_step3)) (at start (result_step9)))
    :effect (and (at start (not (pending step26))) (at end (done step26)) (at end (result_step26))))
  (:durative-action do_step27
    :duration (= ?duration 900)
    :condition (and (at start (pending step27)) (at start (result_step3)) (at start (result_step5)) (at start (result_step9))
                  (at start (result_step12)) (at start (result_step14)) (at start (result_step17)) (at start (result_step18))
                  (at start (result_step21)) (at start (result_step22)) (at start (result_step23)) (at start (result_step24))
                  (at start (result_step26)) (at start (result_step28)) (at start (result_step30)))
    :effect (and (at start (not (pending step27))) (at end (done step27)) (at end (result_step27))))
  (:durative-action do_step28
    :duration (= ?duration 1209600)
    :condition (and (at start (pending step28)) (at start (result_step3)) (at start (result_step5)) (at start (result_step9))
                  (at start (result_step14)) (at start (result_step17)) (at start (result_step18)) (at start (result_step23))
                  (at start (result_step24)) (at start (result_step26)) (at start (result_step30)))
    :effect (and (at start (not (pending step28))) (at end (done step28)) (at end (result_step28))))
  (:durative-action do_step29
    :duration (= ?duration 1800)
    :condition (and (at start (pending step29)) (at start (result_step2)) (at start (result_step16)) (at start (result_step17))
                  (at start (result_step24)) (at start (result_step25)))
    :effect (and (at start (not (pending step29))) (at end (done step29)) (at end (result_step29))))
  (:durative-action do_step30
    :duration (= ?duration 10800)
    :condition (and (at start (pending step30)) (at start (result_step5)) (at start (result_step17)) (at start (result_step18)) (at start (result_step24)))
    :effect (and (at start (not (pending step30))) (at end (done step30)) (at end (result_step30))))
)