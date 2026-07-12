; Fixes applied:
; 1. Each action parameter now has a unique subtype, so it can only execute for its corresponding step object.
; 2. This reduces grounding from 3600 actions to exactly 60 valid ground actions and prevents actions from satisfying the wrong step_done goal.
; 3. All direct predecessor predicates remain enforced as AND-join conditions.
; 4. Calendar conversions used: 1 week=604800s, 2 weeks=1209600s, 2 months=5184000s, 3 months=7776000s (90 days).
(define (domain better-at-arguing)
  (:requirements :typing :durative-actions)
  (:types
    step - object
    t1 t2 t3 t4 t5 t6 t7 t8 t9 t10
    t11 t12 t13 t14 t15 t16 t17 t18 t19 t20
    t21 t22 t23 t24 t25 t26 t27 t28 t29 t30
    t31 t32 t33 t34 t35 t36 t37 t38 t39 t40
    t41 t42 t43 t44 t45 t46 t47 t48 t49 t50
    t51 t52 t53 t54 t55 t56 t57 t58 t59 t60 - step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1) (s2) (s3) (s4) (s5) (s6) (s7) (s8) (s9) (s10)
    (s11) (s12) (s13) (s14) (s15) (s16) (s17) (s18) (s19) (s20)
    (s21) (s22) (s23) (s24) (s25) (s26) (s27) (s28) (s29) (s30)
    (s31) (s32) (s33) (s34) (s35) (s36) (s37) (s38) (s39) (s40)
    (s41) (s42) (s43) (s44) (s45) (s46) (s47) (s48) (s49) (s50)
    (s51) (s52) (s53) (s54) (s55) (s56) (s57) (s58) (s59) (s60))

  (:durative-action do-step1
    :parameters (?s - t1)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (s12)) (at start (s18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1))))
  (:durative-action do-step2
    :parameters (?s - t2)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2))))
  (:durative-action do-step3
    :parameters (?s - t3)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (s39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3))))
  (:durative-action do-step4
    :parameters (?s - t4)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s2)) (at start (s30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4))))
  (:durative-action do-step5
    :parameters (?s - t5)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (s36)) (at start (s41)) (at start (s51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5))))
  (:durative-action do-step6
    :parameters (?s - t6)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6))))
  (:durative-action do-step7
    :parameters (?s - t7)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s3)) (at start (s48)) (at start (s56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7))))
  (:durative-action do-step8
    :parameters (?s - t8)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8))))
  (:durative-action do-step9
    :parameters (?s - t9)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s37)) (at start (s45)) (at start (s52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9))))
  (:durative-action do-step10
    :parameters (?s - t10)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10))))
  (:durative-action do-step11
    :parameters (?s - t11)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (s19)) (at start (s23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11))))
  (:durative-action do-step12
    :parameters (?s - t12)
    :duration (= ?duration 36000)
    :condition (and (at start (step_pending ?s)) (at start (s40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12))))
  (:durative-action do-step13
    :parameters (?s - t13)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s6)) (at start (s41)) (at start (s49)) (at start (s56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13))))
  (:durative-action do-step14
    :parameters (?s - t14)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s2)) (at start (s11)) (at start (s23)) (at start (s37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14))))
  (:durative-action do-step15
    :parameters (?s - t15)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s4)) (at start (s8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15))))
  (:durative-action do-step16
    :parameters (?s - t16)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s21)) (at start (s31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16))))
  (:durative-action do-step17
    :parameters (?s - t17)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (s9)) (at start (s14)) (at start (s16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17))))
  (:durative-action do-step18
    :parameters (?s - t18)
    :duration (= ?duration 345600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18))))
  (:durative-action do-step19
    :parameters (?s - t19)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19))))
  (:durative-action do-step20
    :parameters (?s - t20)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20))))
  (:durative-action do-step21
    :parameters (?s - t21)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21))))
  (:durative-action do-step22
    :parameters (?s - t22)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (s13)) (at start (s52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22))))
  (:durative-action do-step23
    :parameters (?s - t23)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23))))
  (:durative-action do-step24
    :parameters (?s - t24)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24))))
  (:durative-action do-step25
    :parameters (?s - t25)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s2)) (at start (s8)) (at start (s40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25))))
  (:durative-action do-step26
    :parameters (?s - t26)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s14)) (at start (s20)) (at start (s39)) (at start (s41)) (at start (s56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26))))
  (:durative-action do-step27
    :parameters (?s - t27)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s22)) (at start (s28)) (at start (s49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27))))
  (:durative-action do-step28
    :parameters (?s - t28)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s2)) (at start (s3)) (at start (s22)) (at start (s47)) (at start (s55)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28))))
  (:durative-action do-step29
    :parameters (?s - t29)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29))))
  (:durative-action do-step30
    :parameters (?s - t30)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (s44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30))))
  (:durative-action do-step31
    :parameters (?s - t31)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31))))
  (:durative-action do-step32
    :parameters (?s - t32)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s11)) (at start (s52)) (at start (s58)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32))))
  (:durative-action do-step33
    :parameters (?s - t33)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s2)) (at start (s44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33))))
  (:durative-action do-step34
    :parameters (?s - t34)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (s25)) (at start (s38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34))))
  (:durative-action do-step35
    :parameters (?s - t35)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s29)) (at start (s55)) (at start (s56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35))))
  (:durative-action do-step36
    :parameters (?s - t36)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s22)) (at start (s27)) (at start (s44)) (at start (s47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36))))
  (:durative-action do-step37
    :parameters (?s - t37)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37))))
  (:durative-action do-step38
    :parameters (?s - t38)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (s9)) (at start (s40)) (at start (s45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38))))
  (:durative-action do-step39
    :parameters (?s - t39)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39))))
  (:durative-action do-step40
    :parameters (?s - t40)
    :duration (= ?duration 7776000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40))))
  (:durative-action do-step41
    :parameters (?s - t41)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (s4)) (at start (s10)) (at start (s30)) (at start (s37)) (at start (s48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s41))))
  (:durative-action do-step42
    :parameters (?s - t42)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (s8)) (at start (s32)) (at start (s56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s42))))
  (:durative-action do-step43
    :parameters (?s - t43)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (s34)) (at start (s40)) (at start (s57)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s43))))
  (:durative-action do-step44
    :parameters (?s - t44)
    :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s44))))
  (:durative-action do-step45
    :parameters (?s - t45)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (s49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s45))))
  (:durative-action do-step46
    :parameters (?s - t46)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s36)) (at start (s52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s46))))
  (:durative-action do-step47
    :parameters (?s - t47)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s4)) (at start (s41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s47))))
  (:durative-action do-step48
    :parameters (?s - t48)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s48))))
  (:durative-action do-step49
    :parameters (?s - t49)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (s18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s49))))
  (:durative-action do-step50
    :parameters (?s - t50)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s50))))
  (:durative-action do-step51
    :parameters (?s - t51)
    :duration (= ?duration 5184000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s51))))
  (:durative-action do-step52
    :parameters (?s - t52)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s52))))
  (:durative-action do-step53
    :parameters (?s - t53)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s30)) (at start (s36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s53))))
  (:durative-action do-step54
    :parameters (?s - t54)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s2)) (at start (s10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s54))))
  (:durative-action do-step55
    :parameters (?s - t55)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s55))))
  (:durative-action do-step56
    :parameters (?s - t56)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s56))))
  (:durative-action do-step57
    :parameters (?s - t57)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s17)) (at start (s44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s57))))
  (:durative-action do-step58
    :parameters (?s - t58)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s58))))
  (:durative-action do-step59
    :parameters (?s - t59)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s51)) (at start (s52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s59))))
  (:durative-action do-step60
    :parameters (?s - t60)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s1)) (at start (s31)) (at start (s46)) (at start (s57)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s60))))
)