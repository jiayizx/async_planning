(define (domain panic_treatment)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    ;; pending predicates (one per step)
    (pending_s1) (pending_s2) (pending_s3) (pending_s4) (pending_s5)
    (pending_s6) (pending_s7) (pending_s8) (pending_s9) (pending_s10)
    (pending_s11) (pending_s12) (pending_s13) (pending_s14) (pending_s15)
    (pending_s16) (pending_s17) (pending_s18) (pending_s19) (pending_s20)
    (pending_s21) (pending_s22) (pending_s23) (pending_s24) (pending_s25)
    (pending_s26) (pending_s27) (pending_s28) (pending_s29) (pending_s30)
    (pending_s31) (pending_s32) (pending_s33) (pending_s34) (pending_s35)
    (pending_s36) (pending_s37) (pending_s38) (pending_s39) (pending_s40)
    (pending_s41) (pending_s42) (pending_s43) (pending_s44) (pending_s45)
    (pending_s46) (pending_s47) (pending_s48) (pending_s49) (pending_s50)

    ;; done/semantic predicates (one per step)
    (done_s1) (done_s2) (done_s3) (done_s4) (done_s5)
    (done_s6) (done_s7) (done_s8) (done_s9) (done_s10)
    (done_s11) (done_s12) (done_s13) (done_s14) (done_s15)
    (done_s16) (done_s17) (done_s18) (done_s19) (done_s20)
    (done_s21) (done_s22) (done_s23) (done_s24) (done_s25)
    (done_s26) (done_s27) (done_s28) (done_s29) (done_s30)
    (done_s31) (done_s32) (done_s33) (done_s34) (done_s35)
    (done_s36) (done_s37) (done_s38) (done_s39) (done_s40)
    (done_s41) (done_s42) (done_s43) (done_s44) (done_s45)
    (done_s46) (done_s47) (done_s48) (done_s49) (done_s50)
  )

  ;; One durative-action per step. Each action must include an explicit :parameters list.

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pending_s1)) (at start (done_s26)) (at start (done_s30)))
    :effect (and (at start (not (pending_s1))) (at end (done_s1))))

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (pending_s2))
    :effect (and (at start (not (pending_s2))) (at end (done_s2))))

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 4838400)
    :condition (and (at start (pending_s3)) (at start (done_s37)))
    :effect (and (at start (not (pending_s3))) (at end (done_s3))))

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (pending_s4)) (at start (done_s2)) (at start (done_s6)) (at start (done_s30)) (at start (done_s31)))
    :effect (and (at start (not (pending_s4))) (at end (done_s4))))

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (pending_s5)) (at start (done_s13)) (at start (done_s16)) (at start (done_s17)) (at start (done_s27)))
    :effect (and (at start (not (pending_s5))) (at end (done_s5))))

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (pending_s6))
    :effect (and (at start (not (pending_s6))) (at end (done_s6))))

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (pending_s7)) (at start (done_s13)) (at start (done_s23)) (at start (done_s34)) (at start (done_s41)) (at start (done_s42)) (at start (done_s49)))
    :effect (and (at start (not (pending_s7))) (at end (done_s7))))

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (pending_s8)) (at start (done_s6)))
    :effect (and (at start (not (pending_s8))) (at end (done_s8))))

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pending_s9)) (at start (done_s2)) (at start (done_s6)) (at start (done_s16)) (at start (done_s32)) (at start (done_s35)) (at start (done_s50)))
    :effect (and (at start (not (pending_s9))) (at end (done_s9))))

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (pending_s10)) (at start (done_s6)) (at start (done_s26)) (at start (done_s49)))
    :effect (and (at start (not (pending_s10))) (at end (done_s10))))

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending_s11)) (at start (done_s27)) (at start (done_s33)) (at start (done_s49)))
    :effect (and (at start (not (pending_s11))) (at end (done_s11))))

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (pending_s12)) (at start (done_s1)) (at start (done_s8)) (at start (done_s14)) (at start (done_s42)) (at start (done_s30)))
    :effect (and (at start (not (pending_s12))) (at end (done_s12))))

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pending_s13)) (at start (done_s35)) (at start (done_s47)))
    :effect (and (at start (not (pending_s13))) (at end (done_s13))))

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (pending_s14))
    :effect (and (at start (not (pending_s14))) (at end (done_s14))))

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (pending_s15)) (at start (done_s14)) (at start (done_s16)) (at start (done_s28)) (at start (done_s37)))
    :effect (and (at start (not (pending_s15))) (at end (done_s15))))

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (pending_s16))
    :effect (and (at start (not (pending_s16))) (at end (done_s16))))

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (pending_s17)) (at start (done_s27)) (at start (done_s31)) (at start (done_s33)) (at start (done_s46)))
    :effect (and (at start (not (pending_s17))) (at end (done_s17))))

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (pending_s18)) (at start (done_s33)))
    :effect (and (at start (not (pending_s18))) (at end (done_s18))))

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (pending_s19)) (at start (done_s12)) (at start (done_s43)))
    :effect (and (at start (not (pending_s19))) (at end (done_s19))))

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (pending_s20)) (at start (done_s17)) (at start (done_s27)) (at start (done_s33)) (at start (done_s35)) (at start (done_s37)) (at start (done_s39)))
    :effect (and (at start (not (pending_s20))) (at end (done_s20))))

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (pending_s21)) (at start (done_s1)) (at start (done_s47)))
    :effect (and (at start (not (pending_s21))) (at end (done_s21))))

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pending_s22)) (at start (done_s6)) (at start (done_s37)))
    :effect (and (at start (not (pending_s22))) (at end (done_s22))))

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (pending_s23))
    :effect (and (at start (not (pending_s23))) (at end (done_s23))))

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (pending_s24)) (at start (done_s3)))
    :effect (and (at start (not (pending_s24))) (at end (done_s24))))

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (pending_s25)) (at start (done_s3)) (at start (done_s24)) (at start (done_s26)))
    :effect (and (at start (not (pending_s25))) (at end (done_s25))))

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (pending_s26)) (at start (done_s6)))
    :effect (and (at start (not (pending_s26))) (at end (done_s26))))

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (pending_s27))
    :effect (and (at start (not (pending_s27))) (at end (done_s27))))

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (pending_s28))
    :effect (and (at start (not (pending_s28))) (at end (done_s28))))

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending_s29)) (at start (done_s3)) (at start (done_s35)) (at start (done_s43)))
    :effect (and (at start (not (pending_s29))) (at end (done_s29))))

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (pending_s30))
    :effect (and (at start (not (pending_s30))) (at end (done_s30))))

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (pending_s31)) (at start (done_s25)) (at start (done_s30)) (at start (done_s44)))
    :effect (and (at start (not (pending_s31))) (at end (done_s31))))

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending_s32)) (at start (done_s21)) (at start (done_s26)))
    :effect (and (at start (not (pending_s32))) (at end (done_s32))))

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pending_s33)) (at start (done_s41)))
    :effect (and (at start (not (pending_s33))) (at end (done_s33))))

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (pending_s34)) (at start (done_s31)) (at start (done_s47)))
    :effect (and (at start (not (pending_s34))) (at end (done_s34))))

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (pending_s35))
    :effect (and (at start (not (pending_s35))) (at end (done_s35))))

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending_s36)) (at start (done_s8)) (at start (done_s11)) (at start (done_s33)))
    :effect (and (at start (not (pending_s36))) (at end (done_s36))))

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (pending_s37))
    :effect (and (at start (not (pending_s37))) (at end (done_s37))))

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending_s38)) (at start (done_s1)) (at start (done_s16)))
    :effect (and (at start (not (pending_s38))) (at end (done_s38))))

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (pending_s39))
    :effect (and (at start (not (pending_s39))) (at end (done_s39))))

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (pending_s40)) (at start (done_s3)))
    :effect (and (at start (not (pending_s40))) (at end (done_s40))))

  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending_s41)) (at start (done_s21)))
    :effect (and (at start (not (pending_s41))) (at end (done_s41))))

  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (pending_s42))
    :effect (and (at start (not (pending_s42))) (at end (done_s42))))

  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (pending_s43)) (at start (done_s17)))
    :effect (and (at start (not (pending_s43))) (at end (done_s43))))

  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (pending_s44))
    :effect (and (at start (not (pending_s44))) (at end (done_s44))))

  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (pending_s45)) (at start (done_s3)) (at start (done_s23)))
    :effect (and (at start (not (pending_s45))) (at end (done_s45))))

  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (pending_s46)) (at start (done_s21)) (at start (done_s39)))
    :effect (and (at start (not (pending_s46))) (at end (done_s46))))

  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (pending_s47))
    :effect (and (at start (not (pending_s47))) (at end (done_s47))))

  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pending_s48)) (at start (done_s43)))
    :effect (and (at start (not (pending_s48))) (at end (done_s48))))

  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending_s49)) (at start (done_s1)) (at start (done_s26)) (at start (done_s27)) (at start (done_s28)))
    :effect (and (at start (not (pending_s49))) (at end (done_s49))))

  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (pending_s50)) (at start (done_s37)))
    :effect (and (at start (not (pending_s50))) (at end (done_s50))))
)
