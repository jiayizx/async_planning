(define (domain herb_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending_1) (step_done_1) (s1_done)
    (step_pending_2) (step_done_2) (s2_done)
    (step_pending_3) (step_done_3) (s3_done)
    (step_pending_4) (step_done_4) (s4_done)
    (step_pending_5) (step_done_5) (s5_done)
    (step_pending_6) (step_done_6) (s6_done)
    (step_pending_7) (step_done_7) (s7_done)
    (step_pending_8) (step_done_8) (s8_done)
    (step_pending_9) (step_done_9) (s9_done)
    (step_pending_10) (step_done_10) (s10_done)
    (step_pending_11) (step_done_11) (s11_done)
    (step_pending_12) (step_done_12) (s12_done)
    (step_pending_13) (step_done_13) (s13_done)
    (step_pending_14) (step_done_14) (s14_done)
    (step_pending_15) (step_done_15) (s15_done)
    (step_pending_16) (step_done_16) (s16_done)
    (step_pending_17) (step_done_17) (s17_done)
    (step_pending_18) (step_done_18) (s18_done)
    (step_pending_19) (step_done_19) (s19_done)
    (step_pending_20) (step_done_20) (s20_done)
    (step_pending_21) (step_done_21) (s21_done)
    (step_pending_22) (step_done_22) (s22_done)
    (step_pending_23) (step_done_23) (s23_done)
    (step_pending_24) (step_done_24) (s24_done)
    (step_pending_25) (step_done_25) (s25_done)
    (step_pending_26) (step_done_26) (s26_done)
    (step_pending_27) (step_done_27) (s27_done)
    (step_pending_28) (step_done_28) (s28_done)
    (step_pending_29) (step_done_29) (s29_done)
    (step_pending_30) (step_done_30) (s30_done)
    (step_pending_31) (step_done_31) (s31_done)
    (step_pending_32) (step_done_32) (s32_done)
    (step_pending_33) (step_done_33) (s33_done)
    (step_pending_34) (step_done_34) (s34_done)
    (step_pending_35) (step_done_35) (s35_done)
    (step_pending_36) (step_done_36) (s36_done)
    (step_pending_37) (step_done_37) (s37_done)
    (step_pending_38) (step_done_38) (s38_done)
    (step_pending_39) (step_done_39) (s39_done)
    (step_pending_40) (step_done_40) (s40_done)
    (step_pending_41) (step_done_41) (s41_done)
    (step_pending_42) (step_done_42) (s42_done)
    (step_pending_43) (step_done_43) (s43_done)
    (step_pending_44) (step_done_44) (s44_done)
    (step_pending_45) (step_done_45) (s45_done)
    (step_pending_46) (step_done_46) (s46_done)
    (step_pending_47) (step_done_47) (s47_done)
    (step_pending_48) (step_done_48) (s48_done)
    (step_pending_49) (step_done_49) (s49_done)
    (step_pending_50) (step_done_50) (s50_done))
  (:durative-action do_step1 :duration 120
    :condition (at start (step_pending_1))
    :effect (and (at start (not (step_pending_1))) (at end (step_done_1)) (at end (s1_done))))
  (:durative-action do_step2 :duration 60
    :condition (at start (step_pending_2))
    :effect (and (at start (not (step_pending_2))) (at end (step_done_2)) (at end (s2_done))))
  (:durative-action do_step3 :duration 120
    :condition (and (at start (step_pending_3)) (at start (s13_done)) (at start (s20_done)))
    :effect (and (at start (not (step_pending_3))) (at end (step_done_3)) (at end (s3_done))))
  (:durative-action do_step4 :duration 30
    :condition (and (at start (step_pending_4)) (at start (s1_done)))
    :effect (and (at start (not (step_pending_4))) (at end (step_done_4)) (at end (s4_done))))
  (:durative-action do_step5 :duration 60
    :condition (at start (step_pending_5))
    :effect (and (at start (not (step_pending_5))) (at end (step_done_5)) (at end (s5_done))))
  (:durative-action do_step6 :duration 45
    :condition (and (at start (step_pending_6)) (at start (s11_done)))
    :effect (and (at start (not (step_pending_6))) (at end (step_done_6)) (at end (s6_done))))
  (:durative-action do_step7 :duration 120
    :condition (and (at start (step_pending_7)) (at start (s33_done)) (at start (s49_done)))
    :effect (and (at start (not (step_pending_7))) (at end (step_done_7)) (at end (s7_done))))
  (:durative-action do_step8 :duration 300
    :condition (and (at start (step_pending_8)) (at start (s10_done)) (at start (s34_done)) (at start (s36_done)))
    :effect (and (at start (not (step_pending_8))) (at end (step_done_8)) (at end (s8_done))))
  (:durative-action do_step9 :duration 15
    :condition (and (at start (step_pending_9)) (at start (s15_done)) (at start (s16_done)) (at start (s28_done)))
    :effect (and (at start (not (step_pending_9))) (at end (step_done_9)) (at end (s9_done))))
  (:durative-action do_step10 :duration 180
    :condition (and (at start (step_pending_10)) (at start (s18_done)) (at start (s46_done)))
    :effect (and (at start (not (step_pending_10))) (at end (step_done_10)) (at end (s10_done))))
  (:durative-action do_step11 :duration 240
    :condition (and (at start (step_pending_11)) (at start (s4_done)) (at start (s47_done)))
    :effect (and (at start (not (step_pending_11))) (at end (step_done_11)) (at end (s11_done))))
  (:durative-action do_step12 :duration 60
    :condition (and (at start (step_pending_12)) (at start (s1_done)) (at start (s18_done)) (at start (s34_done)))
    :effect (and (at start (not (step_pending_12))) (at end (step_done_12)) (at end (s12_done))))
  (:durative-action do_step13 :duration 180
    :condition (at start (step_pending_13))
    :effect (and (at start (not (step_pending_13))) (at end (step_done_13)) (at end (s13_done))))
  (:durative-action do_step14 :duration 120
    :condition (and (at start (step_pending_14)) (at start (s4_done)) (at start (s16_done)) (at start (s26_done)) (at start (s49_done)))
    :effect (and (at start (not (step_pending_14))) (at end (step_done_14)) (at end (s14_done))))
  (:durative-action do_step15 :duration 60
    :condition (at start (step_pending_15))
    :effect (and (at start (not (step_pending_15))) (at end (step_done_15)) (at end (s15_done))))
  (:durative-action do_step16 :duration 120
    :condition (and (at start (step_pending_16)) (at start (s27_done)))
    :effect (and (at start (not (step_pending_16))) (at end (step_done_16)) (at end (s16_done))))
  (:durative-action do_step17 :duration 300
    :condition (at start (step_pending_17))
    :effect (and (at start (not (step_pending_17))) (at end (step_done_17)) (at end (s17_done))))
  (:durative-action do_step18 :duration 240
    :condition (at start (step_pending_18))
    :effect (and (at start (not (step_pending_18))) (at end (step_done_18)) (at end (s18_done))))
  (:durative-action do_step19 :duration 180
    :condition (and (at start (step_pending_19)) (at start (s7_done)) (at start (s37_done)) (at start (s50_done)))
    :effect (and (at start (not (step_pending_19))) (at end (step_done_19)) (at end (s19_done))))
  (:durative-action do_step20 :duration 60
    :condition (at start (step_pending_20))
    :effect (and (at start (not (step_pending_20))) (at end (step_done_20)) (at end (s20_done))))
  (:durative-action do_step21 :duration 300
    :condition (and (at start (step_pending_21)) (at start (s33_done)))
    :effect (and (at start (not (step_pending_21))) (at end (step_done_21)) (at end (s21_done))))
  (:durative-action do_step22 :duration 180
    :condition (and (at start (step_pending_22)) (at start (s13_done)) (at start (s16_done)))
    :effect (and (at start (not (step_pending_22))) (at end (step_done_22)) (at end (s22_done))))
  (:durative-action do_step23 :duration 30
    :condition (and (at start (step_pending_23)) (at start (s38_done)))
    :effect (and (at start (not (step_pending_23))) (at end (step_done_23)) (at end (s23_done))))
  (:durative-action do_step24 :duration 45
    :condition (and (at start (step_pending_24)) (at start (s4_done)) (at start (s15_done)) (at start (s30_done)))
    :effect (and (at start (not (step_pending_24))) (at end (step_done_24)) (at end (s24_done))))
  (:durative-action do_step25 :duration 240
    :condition (and (at start (step_pending_25)) (at start (s4_done)) (at start (s47_done)))
    :effect (and (at start (not (step_pending_25))) (at end (step_done_25)) (at end (s25_done))))
  (:durative-action do_step26 :duration 600
    :condition (and (at start (step_pending_26)) (at start (s5_done)) (at start (s22_done)) (at start (s25_done)))
    :effect (and (at start (not (step_pending_26))) (at end (step_done_26)) (at end (s26_done))))
  (:durative-action do_step27 :duration 30
    :condition (and (at start (step_pending_27)) (at start (s1_done)))
    :effect (and (at start (not (step_pending_27))) (at end (step_done_27)) (at end (s27_done))))
  (:durative-action do_step28 :duration 10
    :condition (and (at start (step_pending_28)) (at start (s25_done)))
    :effect (and (at start (not (step_pending_28))) (at end (step_done_28)) (at end (s28_done))))
  (:durative-action do_step29 :duration 180
    :condition (at start (step_pending_29))
    :effect (and (at start (not (step_pending_29))) (at end (step_done_29)) (at end (s29_done))))
  (:durative-action do_step30 :duration 60
    :condition (and (at start (step_pending_30)) (at start (s2_done)) (at start (s23_done)) (at start (s31_done)) (at start (s45_done)))
    :effect (and (at start (not (step_pending_30))) (at end (step_done_30)) (at end (s30_done))))
  (:durative-action do_step31 :duration 20
    :condition (and (at start (step_pending_31)) (at start (s33_done)) (at start (s45_done)))
    :effect (and (at start (not (step_pending_31))) (at end (step_done_31)) (at end (s31_done))))
  (:durative-action do_step32 :duration 30
    :condition (and (at start (step_pending_32)) (at start (s23_done)) (at start (s50_done)))
    :effect (and (at start (not (step_pending_32))) (at end (step_done_32)) (at end (s32_done))))
  (:durative-action do_step33 :duration 120
    :condition (and (at start (step_pending_33)) (at start (s15_done)))
    :effect (and (at start (not (step_pending_33))) (at end (step_done_33)) (at end (s33_done))))
  (:durative-action do_step34 :duration 60
    :condition (at start (step_pending_34))
    :effect (and (at start (not (step_pending_34))) (at end (step_done_34)) (at end (s34_done))))
  (:durative-action do_step35 :duration 300
    :condition (and (at start (step_pending_35)) (at start (s1_done)) (at start (s5_done)) (at start (s16_done)) (at start (s17_done)) (at start (s38_done)))
    :effect (and (at start (not (step_pending_35))) (at end (step_done_35)) (at end (s35_done))))
  (:durative-action do_step36 :duration 60
    :condition (and (at start (step_pending_36)) (at start (s2_done)) (at start (s29_done)) (at start (s31_done)) (at start (s48_done)))
    :effect (and (at start (not (step_pending_36))) (at end (step_done_36)) (at end (s36_done))))
  (:durative-action do_step37 :duration 60
    :condition (and (at start (step_pending_37)) (at start (s24_done)))
    :effect (and (at start (not (step_pending_37))) (at end (step_done_37)) (at end (s37_done))))
  (:durative-action do_step38 :duration 120
    :condition (and (at start (step_pending_38)) (at start (s4_done)) (at start (s14_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending_38))) (at end (step_done_38)) (at end (s38_done))))
  (:durative-action do_step39 :duration 120
    :condition (and (at start (step_pending_39)) (at start (s22_done)))
    :effect (and (at start (not (step_pending_39))) (at end (step_done_39)) (at end (s39_done))))
  (:durative-action do_step40 :duration 60
    :condition (and (at start (step_pending_40)) (at start (s12_done)) (at start (s17_done)) (at start (s35_done)))
    :effect (and (at start (not (step_pending_40))) (at end (step_done_40)) (at end (s40_done))))
  (:durative-action do_step41 :duration 120
    :condition (and (at start (step_pending_41)) (at start (s1_done)) (at start (s3_done)))
    :effect (and (at start (not (step_pending_41))) (at end (step_done_41)) (at end (s41_done))))
  (:durative-action do_step42 :duration 60
    :condition (and (at start (step_pending_42)) (at start (s34_done)) (at start (s50_done)))
    :effect (and (at start (not (step_pending_42))) (at end (step_done_42)) (at end (s42_done))))
  (:durative-action do_step43 :duration 180
    :condition (and (at start (step_pending_43)) (at start (s4_done)))
    :effect (and (at start (not (step_pending_43))) (at end (step_done_43)) (at end (s43_done))))
  (:durative-action do_step44 :duration 30
    :condition (and (at start (step_pending_44)) (at start (s42_done)))
    :effect (and (at start (not (step_pending_44))) (at end (step_done_44)) (at end (s44_done))))
  (:durative-action do_step45 :duration 45
    :condition (and (at start (step_pending_45)) (at start (s5_done)) (at start (s22_done)))
    :effect (and (at start (not (step_pending_45))) (at end (step_done_45)) (at end (s45_done))))
  (:durative-action do_step46 :duration 300
    :condition (and (at start (step_pending_46)) (at start (s50_done)))
    :effect (and (at start (not (step_pending_46))) (at end (step_done_46)) (at end (s46_done))))
  (:durative-action do_step47 :duration 60
    :condition (and (at start (step_pending_47)) (at start (s39_done)))
    :effect (and (at start (not (step_pending_47))) (at end (step_done_47)) (at end (s47_done))))
  (:durative-action do_step48 :duration 30
    :condition (and (at start (step_pending_48)) (at start (s25_done)))
    :effect (and (at start (not (step_pending_48))) (at end (step_done_48)) (at end (s48_done))))
  (:durative-action do_step49 :duration 240
    :condition (at start (step_pending_49))
    :effect (and (at start (not (step_pending_49))) (at end (step_done_49)) (at end (s49_done))))
  (:durative-action do_step50 :duration 180
    :condition (at start (step_pending_50))
    :effect (and (at start (not (step_pending_50))) (at end (step_done_50)) (at end (s50_done))))
)