(define (domain obtain-book-name)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1-done) (s2-done) (s3-done) (s4-done) (s5-done) (s6-done) (s7-done) (s8-done) (s9-done) (s10-done)
    (s11-done) (s12-done) (s13-done) (s14-done) (s15-done) (s16-done) (s17-done) (s18-done) (s19-done) (s20-done)
    (s21-done) (s22-done) (s23-done) (s24-done) (s25-done) (s26-done) (s27-done) (s28-done) (s29-done) (s30-done)
    (s31-done) (s32-done) (s33-done) (s34-done) (s35-done) (s36-done) (s37-done) (s38-done) (s39-done) (s40-done)
  )

  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step1)) (at start (s15-done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1-done)))
  )

  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step2)) (at start (s33-done)) (at start (s17-done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2-done)))
  )

  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step3)) (at start (s5-done)) (at start (s16-done)) (at start (s32-done)) (at start (s38-done)) (at start (s13-done)) (at start (s26-done)) (at start (s22-done)) (at start (s15-done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3-done)))
  )

  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step4)) (at start (s1-done)) (at start (s15-done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4-done)))
  )

  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step5)) (at start (s16-done)) (at start (s32-done)) (at start (s11-done)) (at start (s39-done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5-done)))
  )

  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step6)) (at start (s4-done)) (at start (s1-done)) (at start (s15-done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6-done)))
  )

  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step7)) (at start (s13-done)) (at start (s15-done)) (at start (s26-done)) (at start (s22-done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7-done)))
  )

  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step8)) (at start (s20-done)) (at start (s26-done)) (at start (s22-done)) (at start (s15-done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8-done)))
  )

  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step9)) (at start (s32-done)) (at start (s11-done)) (at start (s39-done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9-done)))
  )

  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step10)) (at start (s19-done)) (at start (s14-done)) (at start (s1-done)) (at start (s15-done)) (at start (s30-done)) (at start (s39-done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10-done)))
  )

  (:durative-action do-step11
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11-done)))
  )

  (:durative-action do-step12
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step12)) (at start (s4-done)) (at start (s1-done)) (at start (s15-done)) (at start (s40-done)) (at start (s20-done)) (at start (s13-done)) (at start (s26-done)) (at start (s22-done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12-done)))
  )

  (:durative-action do-step13
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step13)) (at start (s15-done)) (at start (s26-done)) (at start (s22-done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13-done)))
  )

  (:durative-action do-step14
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step14)) (at start (s1-done)) (at start (s15-done)) (at start (s26-done)) (at start (s22-done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14-done)))
  )

  (:durative-action do-step15
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15-done)))
  )

  (:durative-action do-step16
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step16)) (at start (s32-done)) (at start (s11-done)) (at start (s39-done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16-done)))
  )

  (:durative-action do-step17
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17-done)))
  )

  (:durative-action do-step18
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step18)) (at start (s7-done)) (at start (s13-done)) (at start (s15-done)) (at start (s26-done)) (at start (s22-done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18-done)))
  )

  (:durative-action do-step19
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step19)) (at start (s14-done)) (at start (s1-done)) (at start (s15-done)) (at start (s26-done)) (at start (s22-done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19-done)))
  )

  (:durative-action do-step20
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step20)) (at start (s26-done)) (at start (s22-done)) (at start (s15-done)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20-done)))
  )

  (:durative-action do-step21
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step21)) (at start (s37-done)) (at start (s14-done)) (at start (s1-done)) (at start (s15-done)) (at start (s11-done)) (at start (s26-done)) (at start (s22-done)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21-done)))
  )

  (:durative-action do-step22
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step22)) (at start (s15-done)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22-done)))
  )

  (:durative-action do-step23
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step23)) (at start (s12-done)) (at start (s4-done)) (at start (s1-done)) (at start (s15-done)) (at start (s20-done)) (at start (s26-done)) (at start (s22-done)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23-done)))
  )

  (:durative-action do-step24
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step24)) (at start (s8-done)) (at start (s20-done)) (at start (s26-done)) (at start (s22-done)) (at start (s15-done)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24-done)))
  )

  (:durative-action do-step25
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step25)) (at start (s1-done)) (at start (s15-done)) (at start (s22-done)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25-done)))
  )

  (:durative-action do-step26
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step26)) (at start (s22-done)) (at start (s15-done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26-done)))
  )

  (:durative-action do-step27
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step27)) (at start (s4-done)) (at start (s1-done)) (at start (s15-done)) (at start (s13-done)) (at start (s19-done)) (at start (s26-done)) (at start (s20-done)) (at start (s40-done)) (at start (s22-done)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27-done)))
  )

  (:durative-action do-step28
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step28)) (at start (s6-done)) (at start (s4-done)) (at start (s1-done)) (at start (s15-done)) (at start (s16-done)) (at start (s5-done)) (at start (s31-done)) (at start (s3-done)) (at start (s22-done)) (at start (s32-done)) (at start (s38-done)) (at start (s13-done)) (at start (s26-done)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28-done)))
  )

  (:durative-action do-step29
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step29)) (at start (s27-done)) (at start (s4-done)) (at start (s1-done)) (at start (s15-done)) (at start (s13-done)) (at start (s19-done)) (at start (s26-done)) (at start (s20-done)) (at start (s40-done)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29-done)))
  )

  (:durative-action do-step30
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step30)) (at start (s23-done)) (at start (s12-done)) (at start (s4-done)) (at start (s1-done)) (at start (s15-done)) (at start (s20-done)) (at start (s26-done)) (at start (s22-done)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30-done)))
  )

  (:durative-action do-step31
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step31)) (at start (s3-done)) (at start (s5-done)) (at start (s16-done)) (at start (s32-done)) (at start (s38-done)) (at start (s13-done)) (at start (s26-done)) (at start (s22-done)) (at start (s15-done)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31-done)))
  )

  (:durative-action do-step32
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step32)) (at start (s11-done)) (at start (s39-done)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32-done)))
  )

  (:durative-action do-step33
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step33)) (at start (s17-done)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33-done)))
  )

  (:durative-action do-step34
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step34)) (at start (s18-done)) (at start (s7-done)) (at start (s13-done)) (at start (s15-done)) (at start (s16-done)) (at start (s26-done)) (at start (s22-done)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34-done)))
  )

  (:durative-action do-step35
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step35)) (at start (s17-done)) (at start (s23-done)) (at start (s12-done)) (at start (s4-done)) (at start (s1-done)) (at start (s15-done)) (at start (s20-done)) (at start (s26-done)) (at start (s22-done)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35-done)))
  )

  (:durative-action do-step36
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step36)) (at start (s24-done)) (at start (s8-done)) (at start (s20-done)) (at start (s26-done)) (at start (s22-done)) (at start (s15-done)) (at start (s4-done)) (at start (s1-done)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36-done)))
  )

  (:durative-action do-step37
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step37)) (at start (s14-done)) (at start (s1-done)) (at start (s15-done)) (at start (s11-done)) (at start (s26-done)) (at start (s22-done)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37-done)))
  )

  (:durative-action do-step38
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step38)) (at start (s7-done)) (at start (s13-done)) (at start (s15-done)) (at start (s26-done)) (at start (s22-done)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38-done)))
  )

  (:durative-action do-step39
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39-done)))
  )

  (:durative-action do-step40
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step40)) (at start (s20-done)) (at start (s26-done)) (at start (s22-done)) (at start (s15-done)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40-done)))
  )
)
