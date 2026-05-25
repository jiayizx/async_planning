(define (domain soccer)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1) (s2) (s3) (s4) (s5) (s6) (s7) (s8) (s9) (s10)
    (s11) (s12) (s13) (s14) (s15) (s16) (s17) (s18) (s19) (s20)
    (s21) (s22) (s23) (s24) (s25) (s26) (s27) (s28) (s29) (s30)
    (s31) (s32) (s33) (s34) (s35) (s36) (s37) (s38) (s39) (s40))
  (:durative-action do_step1
    :duration (= ?duration 1800)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1))))
  (:durative-action do_step2
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step2)) (at start (s7)) (at start (s9)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2))))
  (:durative-action do_step3
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step3)) (at start (s31)) (at start (s40)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3))))
  (:durative-action do_step4
    :duration (= ?duration 3600)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4))))
  (:durative-action do_step5
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending step5)) (at start (s23)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5))))
  (:durative-action do_step6
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step6)) (at start (s2)) (at start (s20)) (at start (s33)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6))))
  (:durative-action do_step7
    :duration (= ?duration 3600)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7))))
  (:durative-action do_step8
    :duration (= ?duration 3600)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8))))
  (:durative-action do_step9
    :duration (= ?duration 3600)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9))))
  (:durative-action do_step10
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step10)) (at start (s1)) (at start (s31)) (at start (s32)) (at start (s36)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10))))
  (:durative-action do_step11
    :duration (= ?duration 2419200)
    :condition (and (at start (step_pending step11)) (at start (s38)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11))))
  (:durative-action do_step12
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step12)) (at start (s9)) (at start (s17)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12))))
  (:durative-action do_step13
    :duration (= ?duration 18000)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13))))
  (:durative-action do_step14
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step14)) (at start (s4)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14))))
  (:durative-action do_step15
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step15)) (at start (s14)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15))))
  (:durative-action do_step16
    :duration (= ?duration 7200)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16))))
  (:durative-action do_step17
    :duration (= ?duration 2700)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17))))
  (:durative-action do_step18
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step18)) (at start (s33)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18))))
  (:durative-action do_step19
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending step19)) (at start (s1)) (at start (s6)) (at start (s13)) (at start (s14)) (at start (s27)) (at start (s28)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19))))
  (:durative-action do_step20
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step20)) (at start (s18)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20))))
  (:durative-action do_step21
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step21)) (at start (s1)) (at start (s37)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21))))
  (:durative-action do_step22
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step22)) (at start (s11)) (at start (s34)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22))))
  (:durative-action do_step23
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step23)) (at start (s8)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23))))
  (:durative-action do_step24
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step24)) (at start (s31)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24))))
  (:durative-action do_step25
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step25)) (at start (s14)) (at start (s26)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25))))
  (:durative-action do_step26
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step26)) (at start (s5)) (at start (s15)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26))))
  (:durative-action do_step27
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step27)) (at start (s17)) (at start (s20)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27))))
  (:durative-action do_step28
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step28)) (at start (s27)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28))))
  (:durative-action do_step29
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step29)) (at start (s40)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29))))
  (:durative-action do_step30
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step30)) (at start (s2)) (at start (s25)) (at start (s35)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30))))
  (:durative-action do_step31
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step31)) (at start (s40)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31))))
  (:durative-action do_step32
    :duration (= ?duration 7200)
    :condition (at start (step_pending step32))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32))))
  (:durative-action do_step33
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step33)) (at start (s4)) (at start (s24)) (at start (s29)) (at start (s35)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33))))
  (:durative-action do_step34
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step34)) (at start (s8)) (at start (s17)) (at start (s40)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34))))
  (:durative-action do_step35
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step35)) (at start (s16)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35))))
  (:durative-action do_step36
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step36)) (at start (s8)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36))))
  (:durative-action do_step37
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step37)) (at start (s26)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37))))
  (:durative-action do_step38
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step38)) (at start (s8)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38))))
  (:durative-action do_step39
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step39)) (at start (s13)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39))))
  (:durative-action do_step40
    :duration (= ?duration 3600)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40)))))