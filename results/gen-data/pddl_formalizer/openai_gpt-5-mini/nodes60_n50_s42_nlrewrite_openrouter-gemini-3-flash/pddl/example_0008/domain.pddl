(define (domain teabag_enrichment)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_ok) (s2_ok) (s3_ok) (s4_ok) (s5_ok) (s6_ok) (s7_ok) (s8_ok) (s9_ok) (s10_ok)
    (s11_ok) (s12_ok) (s13_ok) (s14_ok) (s15_ok) (s16_ok) (s17_ok) (s18_ok) (s19_ok) (s20_ok)
    (s21_ok) (s22_ok) (s23_ok) (s24_ok) (s25_ok) (s26_ok) (s27_ok) (s28_ok) (s29_ok) (s30_ok)
    (s31_ok) (s32_ok) (s33_ok) (s34_ok) (s35_ok) (s36_ok) (s37_ok) (s38_ok) (s39_ok) (s40_ok)
    (s41_ok) (s42_ok) (s43_ok) (s44_ok) (s45_ok) (s46_ok) (s47_ok) (s48_ok) (s49_ok) (s50_ok)
    (s51_ok) (s52_ok) (s53_ok) (s54_ok) (s55_ok) (s56_ok) (s57_ok) (s58_ok) (s59_ok) (s60_ok)
  )

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s11_ok)) (at start (s43_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_ok)))
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_ok)))
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s17_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_ok)))
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s17_ok)) (at start (s26_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_ok)))
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s7_ok)) (at start (s25_ok)) (at start (s30_ok)) (at start (s44_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_ok)))
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s8_ok)) (at start (s12_ok)) (at start (s15_ok)) (at start (s21_ok)) (at start (s39_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_ok)))
  )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (s32_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_ok)))
  )

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s22_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_ok)))
  )

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_ok)))
  )

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s4_ok)) (at start (s19_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_ok)))
  )

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s20_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_ok)))
  )

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_ok)))
  )

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_ok)))
  )

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s12_ok)) (at start (s28_ok)) (at start (s47_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_ok)))
  )

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s43_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_ok)))
  )

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s50_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_ok)))
  )

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_ok)))
  )

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s12_ok)) (at start (s22_ok)) (at start (s30_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_ok)))
  )

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_ok)))
  )

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s21_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_ok)))
  )

  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s3_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_ok)))
  )

  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_ok)))
  )

  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s38_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_ok)))
  )

  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s33_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_ok)))
  )

  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s2_ok)) (at start (s12_ok)) (at start (s28_ok)) (at start (s34_ok)) (at start (s48_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_ok)))
  )

  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s59_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_ok)))
  )

  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s3_ok)) (at start (s32_ok)) (at start (s40_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_ok)))
  )

  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_ok)))
  )

  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s4_ok)) (at start (s37_ok)) (at start (s51_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_ok)))
  )

  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_ok)))
  )

  (:durative-action do_step31
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s8_ok)) (at start (s11_ok)) (at start (s13_ok)) (at start (s35_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_ok)))
  )

  (:durative-action do_step32
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s2_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_ok)))
  )

  (:durative-action do_step33
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_ok)))
  )

  (:durative-action do_step34
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s7_ok)) (at start (s33_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_ok)))
  )

  (:durative-action do_step35
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_ok)))
  )

  (:durative-action do_step36
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_ok)))
  )

  (:durative-action do_step37
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s4_ok)) (at start (s13_ok)) (at start (s20_ok)) (at start (s47_ok)) (at start (s55_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_ok)))
  )

  (:durative-action do_step38
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_ok)))
  )

  (:durative-action do_step39
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_ok)))
  )

  (:durative-action do_step40
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_ok)))
  )

  (:durative-action do_step41
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s8_ok)) (at start (s21_ok)) (at start (s44_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s41_ok)))
  )

  (:durative-action do_step42
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s17_ok)) (at start (s22_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s42_ok)))
  )

  (:durative-action do_step43
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (s12_ok)) (at start (s39_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s43_ok)))
  )

  (:durative-action do_step44
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s30_ok)) (at start (s34_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s44_ok)))
  )

  (:durative-action do_step45
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s3_ok)) (at start (s5_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s45_ok)))
  )

  (:durative-action do_step46
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s5_ok)) (at start (s44_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s46_ok)))
  )

  (:durative-action do_step47
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (s16_ok)) (at start (s21_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s47_ok)))
  )

  (:durative-action do_step48
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s18_ok)) (at start (s36_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s48_ok)))
  )

  (:durative-action do_step49
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s32_ok)) (at start (s54_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s49_ok)))
  )

  (:durative-action do_step50
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s9_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s50_ok)))
  )

  (:durative-action do_step51
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s16_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s51_ok)))
  )

  (:durative-action do_step52
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s12_ok)) (at start (s21_ok)) (at start (s34_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s52_ok)))
  )

  (:durative-action do_step53
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s3_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s53_ok)))
  )

  (:durative-action do_step54
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s36_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s54_ok)))
  )

  (:durative-action do_step55
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s7_ok)) (at start (s23_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s55_ok)))
  )

  (:durative-action do_step56
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s5_ok)) (at start (s7_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s56_ok)))
  )

  (:durative-action do_step57
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s49_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s57_ok)))
  )

  (:durative-action do_step58
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s8_ok)) (at start (s15_ok)) (at start (s17_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s58_ok)))
  )

  (:durative-action do_step59
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (s35_ok)) (at start (s58_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s59_ok)))
  )

  (:durative-action do_step60
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s19_ok)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s60_ok)))
  )
)
