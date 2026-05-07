(define (domain cinnamon_pancakes)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
    (s21_done) (s22_done) (s23_done) (s24_done) (s25_done) (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
    (s31_done) (s32_done) (s33_done) (s34_done) (s35_done) (s36_done) (s37_done) (s38_done) (s39_done) (s40_done)
    (s41_done) (s42_done) (s43_done) (s44_done) (s45_done) (s46_done) (s47_done) (s48_done) (s49_done) (s50_done)
    (s51_done) (s52_done) (s53_done) (s54_done) (s55_done) (s56_done) (s57_done) (s58_done) (s59_done) (s60_done))
  (:durative-action do_step_1
    :parameters (?s - step)
    :duration 30
    :condition (at start (s55_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done))))
  (:durative-action do_step_2
    :parameters (?s - step)
    :duration 120
    :condition (at start)
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done))))
  (:durative-action do_step_3
    :parameters (?s - step)
    :duration 10
    :condition (at start)
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done))))
  (:durative-action do_step_4
    :parameters (?s - step)
    :duration 45
    :condition (at start (s6_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done))))
  (:durative-action do_step_5
    :parameters (?s - step)
    :duration 30
    :condition (at start (s49_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done))))
  (:durative-action do_step_6
    :parameters (?s - step)
    :duration 15
    :condition (at start)
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done))))
  (:durative-action do_step_7
    :parameters (?s - step)
    :duration 120
    :condition (at start (and (s16_done) (s20_done) (s37_done) (s38_done) (s41_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done))))
  (:durative-action do_step_8
    :parameters (?s - step)
    :duration 45
    :condition (at start (s23_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done))))
  (:durative-action do_step_9
    :parameters (?s - step)
    :duration 60
    :condition (at start (and (s19_done) (s29_done) (s53_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done))))
  (:durative-action do_step_10
    :parameters (?s - step)
    :duration 20
    :condition (at start)
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done))))
  (:durative-action do_step_11
    :parameters (?s - step)
    :duration 60
    :condition (at start (and (s4_done) (s6_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done))))
  (:durative-action do_step_12
    :parameters (?s - step)
    :duration 30
    :condition (at start (s16_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done))))
  (:durative-action do_step_13
    :parameters (?s - step)
    :duration 30
    :condition (at start (and (s8_done) (s16_done) (s43_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done))))
  (:durative-action do_step_14
    :parameters (?s - step)
    :duration 120
    :condition (at start (and (s40_done) (s51_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done))))
  (:durative-action do_step_15
    :parameters (?s - step)
    :duration 10
    :condition (at start (and (s37_done) (s53_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done))))
  (:durative-action do_step_16
    :parameters (?s - step)
    :duration 40
    :condition (at start)
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done))))
  (:durative-action do_step_17
    :parameters (?s - step)
    :duration 15
    :condition (at start (and (s15_done) (s21_done) (s53_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done))))
  (:durative-action do_step_18
    :parameters (?s - step)
    :duration 300
    :condition (at start (and (s47_done) (s53_done) (s56_done) (s60_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done))))
  (:durative-action do_step_19
    :parameters (?s - step)
    :duration 60
    :condition (at start (and (s4_done) (s40_done) (s42_done) (s50_done) (s52_done) (s59_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done))))
  (:durative-action do_step_20
    :parameters (?s - step)
    :duration 45
    :condition (at start (and (s31_done) (s53_done) (s57_done) (s60_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done))))
  (:durative-action do_step_21
    :parameters (?s - step)
    :duration 30
    :condition (at start (and (s40_done) (s53_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_done))))
  (:durative-action do_step_22
    :parameters (?s - step)
    :duration 20
    :condition (at start (and (s12_done) (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_done))))
  (:durative-action do_step_23
    :parameters (?s - step)
    :duration 15
    :condition (at start (s31_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_done))))
  (:durative-action do_step_24
    :parameters (?s - step)
    :duration 10
    :condition (at start (and (s4_done) (s10_done) (s40_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_done))))
  (:durative-action do_step_25
    :parameters (?s - step)
    :duration 10
    :condition (at start (and (s1_done) (s37_done) (s57_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_done))))
  (:durative-action do_step_26
    :parameters (?s - step)
    :duration 20
    :condition (at start (and (s21_done) (s42_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_done))))
  (:durative-action do_step_27
    :parameters (?s - step)
    :duration 20
    :condition (at start)
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_done))))
  (:durative-action do_step_28
    :parameters (?s - step)
    :duration 180
    :condition (at start (s34_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_done))))
  (:durative-action do_step_29
    :parameters (?s - step)
    :duration 15
    :condition (at start)
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_done))))
  (:durative-action do_step_30
    :parameters (?s - step)
    :duration 60
    :condition (at start (s32_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_done))))
  (:durative-action do_step_31
    :parameters (?s - step)
    :duration 20
    :condition (at start (s56_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_done))))
  (:durative-action do_step_32
    :parameters (?s - step)
    :duration 30
    :condition (at start (s27_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_done))))
  (:durative-action do_step_33
    :parameters (?s - step)
    :duration 40
    :condition (at start (and (s4_done) (s10_done) (s19_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_done))))
  (:durative-action do_step_34
    :parameters (?s - step)
    :duration 20
    :condition (at start (and (s3_done) (s20_done) (s32_done) (s59_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_done))))
  (:durative-action do_step_35
    :parameters (?s - step)
    :duration 300
    :condition (at start (and (s8_done) (s59_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_done))))
  (:durative-action do_step_36
    :parameters (?s - step)
    :duration 10
    :condition (at start (and (s18_done) (s20_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_done))))
  (:durative-action do_step_37
    :parameters (?s - step)
    :duration 60
    :condition (at start)
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_done))))
  (:durative-action do_step_38
    :parameters (?s - step)
    :duration 10
    :condition (at start)
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_done))))
  (:durative-action do_step_39
    :parameters (?s - step)
    :duration 30
    :condition (at start (and (s5_done) (s37_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_done))))
  (:durative-action do_step_40
    :parameters (?s - step)
    :duration 30
    :condition (at start (and (s6_done) (s56_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_done))))
  (:durative-action do_step_41
    :parameters (?s - step)
    :duration 120
    :condition (at start (s31_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s41_done))))
  (:durative-action do_step_42
    :parameters (?s - step)
    :duration 10
    :condition (at start (s38_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s42_done))))
  (:durative-action do_step_43
    :parameters (?s - step)
    :duration 120
    :condition (at start (s36_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s43_done))))
  (:durative-action do_step_44
    :parameters (?s - step)
    :duration 30
    :condition (at start (and (s2_done) (s34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s44_done))))
  (:durative-action do_step_45
    :parameters (?s - step)
    :duration 60
    :condition (at start (and (s24_done) (s26_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s45_done))))
  (:durative-action do_step_46
    :parameters (?s - step)
    :duration 60
    :condition (at start (and (s20_done) (s28_done) (s29_done) (s57_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s46_done))))
  (:durative-action do_step_47
    :parameters (?s - step)
    :duration 15
    :condition (at start (s57_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s47_done))))
  (:durative-action do_step_48
    :parameters (?s - step)
    :duration 20
    :condition (at start (and (s27_done) (s53_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s48_done))))
  (:durative-action do_step_49
    :parameters (?s - step)
    :duration 45
    :condition (at start (and (s51_done) (s53_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s49_done))))
  (:durative-action do_step_50
    :parameters (?s - step)
    :duration 15
    :condition (at start (and (s41_done) (s49_done) (s52_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s50_done))))
  (:durative-action do_step_51
    :parameters (?s - step)
    :duration 15
    :condition (at start)
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s51_done))))
  (:durative-action do_step_52
    :parameters (?s - step)
    :duration 60
    :condition (at start (s49_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s52_done))))
  (:durative-action do_step_53
    :parameters (?s - step)
    :duration 15
    :condition (at start (and (s6_done) (s40_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s53_done))))
  (:durative-action do_step_54
    :parameters (?s - step)
    :duration 5
    :condition (at start (s56_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s54_done))))
  (:durative-action do_step_55
    :parameters (?s - step)
    :duration 20
    :condition (at start)
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s55_done))))
  (:durative-action do_step_56
    :parameters (?s - step)
    :duration 10
    :condition (at start (s3_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s56_done))))
  (:durative-action do_step_57
    :parameters (?s - step)
    :duration 15
    :condition (at start (s38_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s57_done))))
  (:durative-action do_step_58
    :parameters (?s - step)
    :duration 120
    :condition (at start (and (s18_done) (s24_done) (s50_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s58_done))))
  (:durative-action do_step_59
    :parameters (?s - step)
    :duration 15
    :condition (at start (s24_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s59_done))))
  (:durative-action do_step_60
    :parameters (?s - step)
    :duration 5
    :condition (at start)
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s60_done)))))