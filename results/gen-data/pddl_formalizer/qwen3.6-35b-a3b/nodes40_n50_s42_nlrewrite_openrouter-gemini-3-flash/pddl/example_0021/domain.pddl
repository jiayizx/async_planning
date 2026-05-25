(:domain car_boost
  (:requirements :typing :durative-actions)
  (:types step - object)
  (:predicates (step_pending ?s - step) (step_done ?s - step)
               (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
               (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
               (s21_done) (s22_done) (s23_done) (s24_done) (s25_done) (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
               (s31_done) (s32_done) (s33_done) (s34_done) (s35_done) (s36_done) (s37_done) (s38_done) (s39_done) (s40_done))

  (:durative-action do_step_1 :duration 7200
    :condition (and (at start (step_pending step1)) (at start (s5_done)) (at start (s20_done)) (at start (s22_done)) (at start (s24_done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_done))))

  (:durative-action do_step_2 :duration 14400
    :condition (and (at start (step_pending step2)) (at start (s6_done)) (at start (s21_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_done))))

  (:durative-action do_step_3 :duration 21600
    :condition (and (at start (step_pending step3)) (at start (s18_done)) (at start (s32_done)) (at start (s38_done)) (at start (s39_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_done))))

  (:durative-action do_step_4 :duration 3600
    :condition (and (at start (step_pending step4)) (at start (s14_done)) (at start (s24_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_done))))

  (:durative-action do_step_5 :duration 1800
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_done))))

  (:durative-action do_step_6 :duration 10800
    :condition (and (at start (step_pending step6)) (at start (s14_done)) (at start (s19_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_done))))

  (:durative-action do_step_7 :duration 1200
    :condition (and (at start (step_pending step7)) (at start (s17_done)) (at start (s37_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_done))))

  (:durative-action do_step_8 :duration 1800
    :condition (and (at start (step_pending step8)) (at start (s10_done)) (at start (s39_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_done))))

  (:durative-action do_step_9 :duration 3600
    :condition (and (at start (step_pending step9)) (at start (s34_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_done))))

  (:durative-action do_step_10 :duration 2700
    :condition (and (at start (step_pending step10)) (at start (s25_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_done))))

  (:durative-action do_step_11 :duration 3600
    :condition (and (at start (step_pending step11)) (at start (s17_done)) (at start (s35_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_done))))

  (:durative-action do_step_12 :duration 300
    :condition (and (at start (step_pending step12)) (at start (s7_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_done))))

  (:durative-action do_step_13 :duration 1800
    :condition (and (at start (step_pending step13)) (at start (s4_done)) (at start (s25_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_done))))

  (:durative-action do_step_14 :duration 1200
    :condition (and (at start (step_pending step14)) (at start (s29_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_done))))

  (:durative-action do_step_15 :duration 2700
    :condition (and (at start (step_pending step15)) (at start (s13_done)) (at start (s24_done)) (at start (s33_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_done))))

  (:durative-action do_step_16 :duration 900
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_done))))

  (:durative-action do_step_17 :duration 259200
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_done))))

  (:durative-action do_step_18 :duration 3600
    :condition (and (at start (step_pending step18)) (at start (s22_done)) (at start (s23_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_done))))

  (:durative-action do_step_19 :duration 604800
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_done))))

  (:durative-action do_step_20 :duration 172800
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_done))))

  (:durative-action do_step_21 :duration 1800
    :condition (and (at start (step_pending step21)) (at start (s12_done)) (at start (s17_done)) (at start (s22_done)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_done))))

  (:durative-action do_step_22 :duration 14400
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_done))))

  (:durative-action do_step_23 :duration 259200
    :condition (and (at start (step_pending step23)) (at start (s29_done)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_done))))

  (:durative-action do_step_24 :duration 3600
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_done))))

  (:durative-action do_step_25 :duration 3600
    :condition (at start (step_pending step25))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_done))))

  (:durative-action do_step_26 :duration 7200
    :condition (and (at start (step_pending step26)) (at start (s14_done)) (at start (s34_done)) (at start (s35_done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_done))))

  (:durative-action do_step_27 :duration 2400
    :condition (and (at start (step_pending step27)) (at start (s20_done)) (at start (s23_done)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_done))))

  (:durative-action do_step_28 :duration 10800
    :condition (and (at start (step_pending step28)) (at start (s9_done)) (at start (s25_done)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_done))))

  (:durative-action do_step_29 :duration 7200
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_done))))

  (:durative-action do_step_30 :duration 1200
    :condition (and (at start (step_pending step30)) (at start (s13_done)) (at start (s19_done)) (at start (s25_done)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_done))))

  (:durative-action do_step_31 :duration 600
    :condition (and (at start (step_pending step31)) (at start (s4_done)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_done))))

  (:durative-action do_step_32 :duration 900
    :condition (at start (step_pending step32))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_done))))

  (:durative-action do_step_33 :duration 3600
    :condition (and (at start (step_pending step33)) (at start (s5_done)) (at start (s26_done)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_done))))

  (:durative-action do_step_34 :duration 18000
    :condition (and (at start (step_pending step34)) (at start (s6_done)) (at start (s16_done)) (at start (s30_done)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_done))))

  (:durative-action do_step_35 :duration 3600
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_done))))

  (:durative-action do_step_36 :duration 900
    :condition (and (at start (step_pending step36)) (at start (s13_done)) (at start (s17_done)) (at start (s22_done)) (at start (s23_done)) (at start (s35_done)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_done))))

  (:durative-action do_step_37 :duration 600
    :condition (at start (step_pending step37))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_done))))

  (:durative-action do_step_38 :duration 1800
    :condition (at start (step_pending step38))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_done))))

  (:durative-action do_step_39 :duration 3600
    :condition (and (at start (step_pending step39)) (at start (s28_done)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_done))))

  (:durative-action do_step_40 :duration 1200
    :condition (and (at start (step_pending step40)) (at start (s16_done)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_done))))
)