(define (domain corn-salsa)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (completed-s1)
    (completed-s2)
    (completed-s3)
    (completed-s4)
    (completed-s5)
    (completed-s6)
    (completed-s7)
    (completed-s8)
    (completed-s9)
    (completed-s10)
    (completed-s11)
    (completed-s12)
    (completed-s13)
    (completed-s14)
    (completed-s15)
    (completed-s16)
    (completed-s17)
    (completed-s18)
    (completed-s19)
    (completed-s20)
    (completed-s21)
    (completed-s22)
    (completed-s23)
    (completed-s24)
    (completed-s25)
    (completed-s26)
    (completed-s27)
    (completed-s28)
    (completed-s29)
    (completed-s30)
    (completed-s31)
    (completed-s32)
    (completed-s33)
    (completed-s34)
    (completed-s35)
    (completed-s36)
    (completed-s37)
    (completed-s38)
    (completed-s39)
    (completed-s40)
    (completed-s41)
    (completed-s42)
    (completed-s43)
    (completed-s44)
    (completed-s45)
    (completed-s46)
    (completed-s47)
    (completed-s48)
    (completed-s49)
    (completed-s50)
  )

  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s1)) (at start (completed-s17)) (at start (completed-s25)) (at start (completed-s26)) (at start (completed-s40)))
    :effect (and (at start (not (step_pending s1))) (at end (step_done s1)) (at end (completed-s1))))

  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending s2))
    :effect (and (at start (not (step_pending s2))) (at end (step_done s2)) (at end (completed-s2))))

  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s3)) (at start (completed-s2)))
    :effect (and (at start (not (step_pending s3))) (at end (step_done s3)) (at end (completed-s3))))

  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s4)) (at start (completed-s12)) (at start (completed-s30)) (at start (completed-s39)))
    :effect (and (at start (not (step_pending s4))) (at end (step_done s4)) (at end (completed-s4))))

  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s5)) (at start (completed-s2)) (at start (completed-s7)))
    :effect (and (at start (not (step_pending s5))) (at end (step_done s5)) (at end (completed-s5))))

  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s6)) (at start (completed-s24)) (at start (completed-s45)))
    :effect (and (at start (not (step_pending s6))) (at end (step_done s6)) (at end (completed-s6))))

  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending s7))
    :effect (and (at start (not (step_pending s7))) (at end (step_done s7)) (at end (completed-s7))))

  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending s8)) (at start (completed-s3)) (at start (completed-s25)))
    :effect (and (at start (not (step_pending s8))) (at end (step_done s8)) (at end (completed-s8))))

  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending s9))
    :effect (and (at start (not (step_pending s9))) (at end (step_done s9)) (at end (completed-s9))))

  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s10)) (at start (completed-s50)))
    :effect (and (at start (not (step_pending s10))) (at end (step_done s10)) (at end (completed-s10))))

  (:durative-action do-step11
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (step_pending s11)) (at start (completed-s37)) (at start (completed-s39)))
    :effect (and (at start (not (step_pending s11))) (at end (step_done s11)) (at end (completed-s11))))

  (:durative-action do-step12
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s12)) (at start (completed-s5)) (at start (completed-s20)) (at start (completed-s24)) (at start (completed-s42)))
    :effect (and (at start (not (step_pending s12))) (at end (step_done s12)) (at end (completed-s12))))

  (:durative-action do-step13
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending s13)) (at start (completed-s40)))
    :effect (and (at start (not (step_pending s13))) (at end (step_done s13)) (at end (completed-s13))))

  (:durative-action do-step14
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending s14)) (at start (completed-s23)))
    :effect (and (at start (not (step_pending s14))) (at end (step_done s14)) (at end (completed-s14))))

  (:durative-action do-step15
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s15)) (at start (completed-s1)) (at start (completed-s48)))
    :effect (and (at start (not (step_pending s15))) (at end (step_done s15)) (at end (completed-s15))))

  (:durative-action do-step16
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s16)) (at start (completed-s29)) (at start (completed-s45)))
    :effect (and (at start (not (step_pending s16))) (at end (step_done s16)) (at end (completed-s16))))

  (:durative-action do-step17
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending s17))
    :effect (and (at start (not (step_pending s17))) (at end (step_done s17)) (at end (completed-s17))))

  (:durative-action do-step18
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s18)) (at start (completed-s22)))
    :effect (and (at start (not (step_pending s18))) (at end (step_done s18)) (at end (completed-s18))))

  (:durative-action do-step19
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending s19)) (at start (completed-s3)))
    :effect (and (at start (not (step_pending s19))) (at end (step_done s19)) (at end (completed-s19))))

  (:durative-action do-step20
    :parameters ()
    :duration (= ?duration 420)
    :condition (and (at start (step_pending s20)) (at start (completed-s17)) (at start (completed-s34)) (at start (completed-s48)))
    :effect (and (at start (not (step_pending s20))) (at end (step_done s20)) (at end (completed-s20))))

  (:durative-action do-step21
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending s21))
    :effect (and (at start (not (step_pending s21))) (at end (step_done s21)) (at end (completed-s21))))

  (:durative-action do-step22
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s22)) (at start (completed-s17)))
    :effect (and (at start (not (step_pending s22))) (at end (step_done s22)) (at end (completed-s22))))

  (:durative-action do-step23
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s23)) (at start (completed-s8)) (at start (completed-s15)) (at start (completed-s26)) (at start (completed-s35)))
    :effect (and (at start (not (step_pending s23))) (at end (step_done s23)) (at end (completed-s23))))

  (:durative-action do-step24
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending s24))
    :effect (and (at start (not (step_pending s24))) (at end (step_done s24)) (at end (completed-s24))))

  (:durative-action do-step25
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s25)) (at start (completed-s37)) (at start (completed-s46)) (at start (completed-s50)))
    :effect (and (at start (not (step_pending s25))) (at end (step_done s25)) (at end (completed-s25))))

  (:durative-action do-step26
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s26)) (at start (completed-s21)))
    :effect (and (at start (not (step_pending s26))) (at end (step_done s26)) (at end (completed-s26))))

  (:durative-action do-step27
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (step_pending s27)) (at start (completed-s13)) (at start (completed-s26)))
    :effect (and (at start (not (step_pending s27))) (at end (step_done s27)) (at end (completed-s27))))

  (:durative-action do-step28
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending s28)) (at start (completed-s13)))
    :effect (and (at start (not (step_pending s28))) (at end (step_done s28)) (at end (completed-s28))))

  (:durative-action do-step29
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s29)) (at start (completed-s18)) (at start (completed-s27)))
    :effect (and (at start (not (step_pending s29))) (at end (step_done s29)) (at end (completed-s29))))

  (:durative-action do-step30
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s30)) (at start (completed-s5)) (at start (completed-s17)) (at start (completed-s40)))
    :effect (and (at start (not (step_pending s30))) (at end (step_done s30)) (at end (completed-s30))))

  (:durative-action do-step31
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s31)) (at start (completed-s27)))
    :effect (and (at start (not (step_pending s31))) (at end (step_done s31)) (at end (completed-s31))))

  (:durative-action do-step32
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s32)) (at start (completed-s18)) (at start (completed-s39)))
    :effect (and (at start (not (step_pending s32))) (at end (step_done s32)) (at end (completed-s32))))

  (:durative-action do-step33
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s33)) (at start (completed-s46)))
    :effect (and (at start (not (step_pending s33))) (at end (step_done s33)) (at end (completed-s33))))

  (:durative-action do-step34
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending s34))
    :effect (and (at start (not (step_pending s34))) (at end (step_done s34)) (at end (completed-s34))))

  (:durative-action do-step35
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s35)) (at start (completed-s8)))
    :effect (and (at start (not (step_pending s35))) (at end (step_done s35)) (at end (completed-s35))))

  (:durative-action do-step36
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s36)) (at start (completed-s48)))
    :effect (and (at start (not (step_pending s36))) (at end (step_done s36)) (at end (completed-s36))))

  (:durative-action do-step37
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s37)) (at start (completed-s28)) (at start (completed-s38)))
    :effect (and (at start (not (step_pending s37))) (at end (step_done s37)) (at end (completed-s37))))

  (:durative-action do-step38
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s38)) (at start (completed-s3)) (at start (completed-s20)))
    :effect (and (at start (not (step_pending s38))) (at end (step_done s38)) (at end (completed-s38))))

  (:durative-action do-step39
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s39)) (at start (completed-s2)) (at start (completed-s33)))
    :effect (and (at start (not (step_pending s39))) (at end (step_done s39)) (at end (completed-s39))))

  (:durative-action do-step40
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending s40))
    :effect (and (at start (not (step_pending s40))) (at end (step_done s40)) (at end (completed-s40))))

  (:durative-action do-step41
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending s41)) (at start (completed-s3)) (at start (completed-s28)) (at start (completed-s50)))
    :effect (and (at start (not (step_pending s41))) (at end (step_done s41)) (at end (completed-s41))))

  (:durative-action do-step42
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s42)) (at start (completed-s24)) (at start (completed-s34)))
    :effect (and (at start (not (step_pending s42))) (at end (step_done s42)) (at end (completed-s42))))

  (:durative-action do-step43
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s43)) (at start (completed-s34)) (at start (completed-s38)) (at start (completed-s46)))
    :effect (and (at start (not (step_pending s43))) (at end (step_done s43)) (at end (completed-s43))))

  (:durative-action do-step44
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s44)) (at start (completed-s9)) (at start (completed-s43)))
    :effect (and (at start (not (step_pending s44))) (at end (step_done s44)) (at end (completed-s44))))

  (:durative-action do-step45
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s45)) (at start (completed-s17)) (at start (completed-s19)) (at start (completed-s25)) (at start (completed-s27)) (at start (completed-s49)))
    :effect (and (at start (not (step_pending s45))) (at end (step_done s45)) (at end (completed-s45))))

  (:durative-action do-step46
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending s46))
    :effect (and (at start (not (step_pending s46))) (at end (step_done s46)) (at end (completed-s46))))

  (:durative-action do-step47
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending s47)) (at start (completed-s11)) (at start (completed-s46)))
    :effect (and (at start (not (step_pending s47))) (at end (step_done s47)) (at end (completed-s47))))

  (:durative-action do-step48
    :parameters ()
    :duration (= ?duration 420)
    :condition (and (at start (step_pending s48)) (at start (completed-s27)))
    :effect (and (at start (not (step_pending s48))) (at end (step_done s48)) (at end (completed-s48))))

  (:durative-action do-step49
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending s49))
    :effect (and (at start (not (step_pending s49))) (at end (step_done s49)) (at end (completed-s49))))

  (:durative-action do-step50
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending s50))
    :effect (and (at start (not (step_pending s50))) (at end (step_done s50)) (at end (completed-s50))))
)
