(define (domain trampoline_assembly)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1) (s2) (s3) (s4) (s5) (s6) (s7) (s8) (s9) (s10)
    (s11) (s12) (s13) (s14) (s15) (s16) (s17) (s18) (s19) (s20)
    (s21) (s22) (s23) (s24) (s25) (s26) (s27) (s28) (s29) (s30)
    (s31) (s32) (s33) (s34) (s35) (s36) (s37) (s38) (s39) (s40)
    (s41) (s42) (s43) (s44) (s45) (s46) (s47) (s48) (s49) (s50)
    (s51) (s52) (s53) (s54) (s55) (s56) (s57) (s58) (s59) (s60))
  (:durative-action do_step1 :duration 300
    :condition (and (at start (step_pending step1)) (at start (s7)) (at start (s42)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1))))
  (:durative-action do_step2 :duration 600
    :condition (and (at start (step_pending step2)) (at start (s10)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2))))
  (:durative-action do_step3 :duration 900
    :condition (and (at start (step_pending step3)) (at start (s6)) (at start (s24)) (at start (s31)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3))))
  (:durative-action do_step4 :duration 600
    :condition (and (at start (step_pending step4)) (at start (s16)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4))))
  (:durative-action do_step5 :duration 600
    :condition (and (at start (step_pending step5)) (at start (s2)) (at start (s22)) (at start (s45)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5))))
  (:durative-action do_step6 :duration 1200
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6))))
  (:durative-action do_step7 :duration 1800
    :condition (and (at start (step_pending step7)) (at start (s11)) (at start (s42)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7))))
  (:durative-action do_step8 :duration 300
    :condition (and (at start (step_pending step8)) (at start (s5)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8))))
  (:durative-action do_step9 :duration 300
    :condition (and (at start (step_pending step9)) (at start (s42)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9))))
  (:durative-action do_step10 :duration 600
    :condition (and (at start (step_pending step10)) (at start (s48)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10))))
  (:durative-action do_step11 :duration 900
    :condition (and (at start (step_pending step11)) (at start (s45)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11))))
  (:durative-action do_step12 :duration 600
    :condition (and (at start (step_pending step12)) (at start (s31)) (at start (s36)) (at start (s45)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12))))
  (:durative-action do_step13 :duration 2700
    :condition (and (at start (step_pending step13)) (at start (s2)) (at start (s3)) (at start (s27)) (at start (s30)) (at start (s36)) (at start (s46)) (at start (s54)) (at start (s60)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13))))
  (:durative-action do_step14 :duration 1200
    :condition (and (at start (step_pending step14)) (at start (s26)) (at start (s38)) (at start (s39)) (at start (s45)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14))))
  (:durative-action do_step15 :duration 900
    :condition (and (at start (step_pending step15)) (at start (s17)) (at start (s18)) (at start (s20)) (at start (s33)) (at start (s34)) (at start (s48)) (at start (s50)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15))))
  (:durative-action do_step16 :duration 600
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16))))
  (:durative-action do_step17 :duration 1800
    :condition (and (at start (step_pending step17)) (at start (s22)) (at start (s38)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17))))
  (:durative-action do_step18 :duration 1500
    :condition (and (at start (step_pending step18)) (at start (s24)) (at start (s36)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18))))
  (:durative-action do_step19 :duration 1800
    :condition (and (at start (step_pending step19)) (at start (s9)) (at start (s18)) (at start (s25)) (at start (s30)) (at start (s31)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19))))
  (:durative-action do_step20 :duration 300
    :condition (and (at start (step_pending step20)) (at start (s39)) (at start (s41)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20))))
  (:durative-action do_step21 :duration 1200
    :condition (and (at start (step_pending step21)) (at start (s2)) (at start (s4)) (at start (s18)) (at start (s45)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21))))
  (:durative-action do_step22 :duration 600
    :condition (and (at start (step_pending step22)) (at start (s35)) (at start (s41)) (at start (s42)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22))))
  (:durative-action do_step23 :duration 120
    :condition (and (at start (step_pending step23)) (at start (s34)) (at start (s37)) (at start (s42)) (at start (s44)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23))))
  (:durative-action do_step24 :duration 900
    :condition (and (at start (step_pending step24)) (at start (s54)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24))))
  (:durative-action do_step25 :duration 1200
    :condition (and (at start (step_pending step25)) (at start (s3)) (at start (s29)) (at start (s32)) (at start (s39)) (at start (s47)) (at start (s48)) (at start (s54)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25))))
  (:durative-action do_step26 :duration 3600
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26))))
  (:durative-action do_step27 :duration 300
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27))))
  (:durative-action do_step28 :duration 300
    :condition (and (at start (step_pending step28)) (at start (s50)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28))))
  (:durative-action do_step29 :duration 300
    :condition (and (at start (step_pending step29)) (at start (s14)) (at start (s26)) (at start (s30)) (at start (s37)) (at start (s42)) (at start (s45)) (at start (s46)) (at start (s48)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29))))
  (:durative-action do_step30 :duration 600
    :condition (and (at start (step_pending step30)) (at start (s39)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30))))
  (:durative-action do_step31 :duration 600
    :condition (and (at start (step_pending step31)) (at start (s36)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31))))
  (:durative-action do_step32 :duration 900
    :condition (and (at start (step_pending step32)) (at start (s36)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32))))
  (:durative-action do_step33 :duration 600
    :condition (and (at start (step_pending step33)) (at start (s37)) (at start (s55)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33))))
  (:durative-action do_step34 :duration 300
    :condition (and (at start (step_pending step34)) (at start (s4)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34))))
  (:durative-action do_step35 :duration 900
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35))))
  (:durative-action do_step36 :duration 300
    :condition (at start (step_pending step36))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36))))
  (:durative-action do_step37 :duration 600
    :condition (and (at start (step_pending step37)) (at start (s34)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37))))
  (:durative-action do_step38 :duration 120
    :condition (and (at start (step_pending step38)) (at start (s16)) (at start (s56)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38))))
  (:durative-action do_step39 :duration 600
    :condition (and (at start (step_pending step39)) (at start (s28)) (at start (s50)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39))))
  (:durative-action do_step40 :duration 300
    :condition (and (at start (step_pending step40)) (at start (s9)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40))))
  (:durative-action do_step41 :duration 120
    :condition (and (at start (step_pending step41)) (at start (s10)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (s41))))
  (:durative-action do_step42 :duration 300
    :condition (at start (step_pending step42))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (s42))))
  (:durative-action do_step43 :duration 1200
    :condition (and (at start (step_pending step43)) (at start (s9)) (at start (s47)) (at start (s50)) (at start (s56)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (s43))))
  (:durative-action do_step44 :duration 120
    :condition (and (at start (step_pending step44)) (at start (s59)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (s44))))
  (:durative-action do_step45 :duration 1200
    :condition (and (at start (step_pending step45)) (at start (s50)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (s45))))
  (:durative-action do_step46 :duration 600
    :condition (and (at start (step_pending step46)) (at start (s4)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (s46))))
  (:durative-action do_step47 :duration 300
    :condition (at start (step_pending step47))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (s47))))
  (:durative-action do_step48 :duration 600
    :condition (at start (step_pending step48))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (s48))))
  (:durative-action do_step49 :duration 60
    :condition (and (at start (step_pending step49)) (at start (s24)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (s49))))
  (:durative-action do_step50 :duration 120
    :condition (at start (step_pending step50))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (s50))))
  (:durative-action do_step51 :duration 60
    :condition (and (at start (step_pending step51)) (at start (s40)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (s51))))
  (:durative-action do_step52 :duration 300
    :condition (and (at start (step_pending step52)) (at start (s32)) (at start (s43)) (at start (s47)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (s52))))
  (:durative-action do_step53 :duration 120
    :condition (and (at start (step_pending step53)) (at start (s9)) (at start (s22)) (at start (s54)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (s53))))
  (:durative-action do_step54 :duration 300
    :condition (and (at start (step_pending step54)) (at start (s36)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (s54))))
  (:durative-action do_step55 :duration 1800
    :condition (and (at start (step_pending step55)) (at start (s2)) (at start (s24)) (at start (s31)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (s55))))
  (:durative-action do_step56 :duration 600
    :condition (and (at start (step_pending step56)) (at start (s7)) (at start (s39)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (s56))))
  (:durative-action do_step57 :duration 300
    :condition (and (at start (step_pending step57)) (at start (s23)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (s57))))
  (:durative-action do_step58 :duration 600
    :condition (and (at start (step_pending step58)) (at start (s16)) (at start (s21)) (at start (s37)) (at start (s47)) (at start (s59)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (s58))))
  (:durative-action do_step59 :duration 600
    :condition (and (at start (step_pending step59)) (at start (s31)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (s59))))
  (:durative-action do_step60 :duration 300
    :condition (and (at start (step_pending step60)) (at start (s27)) (at start (s41)) (at start (s53)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (s60))))
)