(define (domain visit_ruins)
  (:requirements :durative-actions)
  (:predicates
    (step_1_pending) (step_1_done)
    (step_2_pending) (step_2_done)
    (step_3_pending) (step_3_done)
    (step_4_pending) (step_4_done)
    (step_5_pending) (step_5_done)
    (step_6_pending) (step_6_done)
    (step_7_pending) (step_7_done)
    (step_8_pending) (step_8_done)
    (step_9_pending) (step_9_done)
    (step_10_pending) (step_10_done)
    (step_11_pending) (step_11_done)
    (step_12_pending) (step_12_done)
    (step_13_pending) (step_13_done)
    (step_14_pending) (step_14_done)
    (step_15_pending) (step_15_done)
    (step_16_pending) (step_16_done)
    (step_17_pending) (step_17_done)
    (step_18_pending) (step_18_done)
    (step_19_pending) (step_19_done)
    (step_20_pending) (step_20_done)
    (step_21_pending) (step_21_done)
    (step_22_pending) (step_22_done)
    (step_23_pending) (step_23_done)
    (step_24_pending) (step_24_done)
    (step_25_pending) (step_25_done)
    (step_26_pending) (step_26_done)
    (step_27_pending) (step_27_done)
    (step_28_pending) (step_28_done)
    (step_29_pending) (step_29_done)
    (step_30_pending) (step_30_done)
    (step_31_pending) (step_31_done)
    (step_32_pending) (step_32_done)
    (step_33_pending) (step_33_done)
    (step_34_pending) (step_34_done)
    (step_35_pending) (step_35_done)
    (step_36_pending) (step_36_done)
    (step_37_pending) (step_37_done)
    (step_38_pending) (step_38_done)
    (step_39_pending) (step_39_done)
    (step_40_pending) (step_40_done)
    (step_41_pending) (step_41_done)
    (step_42_pending) (step_42_done)
    (step_43_pending) (step_43_done)
    (step_44_pending) (step_44_done)
    (step_45_pending) (step_45_done)
    (step_46_pending) (step_46_done)
    (step_47_pending) (step_47_done)
    (step_48_pending) (step_48_done)
    (step_49_pending) (step_49_done)
    (step_50_pending) (step_50_done)
  )

  ; Step 1: 600s
  (:durative-action step_1
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_1_pending))
    :effect (and (at start (not (step_1_pending))) (at end (step_1_done)))
  )

  ; Step 2: 2700s. Predecessors: 36, 42, 36 was listed once; 36 and 42 and 36 duplicate removed. Also 36->2 and 42->2 and 36 present. No other preds in list.
  (:durative-action step_2
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_2_pending)) (at start (step_36_done)) (at start (step_42_done)))
    :effect (and (at start (not (step_2_pending))) (at end (step_2_done)))
  )

  ; Step 3: 10800s
  (:durative-action step_3
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step_3_pending))
    :effect (and (at start (not (step_3_pending))) (at end (step_3_done)))
  )

  ; Step 4: 3600s
  (:durative-action step_4
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_4_pending))
    :effect (and (at start (not (step_4_pending))) (at end (step_4_done)))
  )

  ; Step 5: 7200s
  (:durative-action step_5
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_5_pending))
    :effect (and (at start (not (step_5_pending))) (at end (step_5_done)))
  )

  ; Step 6: 1200s. Predecessor: 43
  (:durative-action step_6
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_6_pending)) (at start (step_43_done)))
    :effect (and (at start (not (step_6_pending))) (at end (step_6_done)))
  )

  ; Step 7: 1800s. Predecessor: 46
  (:durative-action step_7
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_7_pending)) (at start (step_46_done)))
    :effect (and (at start (not (step_7_pending))) (at end (step_7_done)))
  )

  ; Step 8: 3600s. Predecessor: 20
  (:durative-action step_8
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_8_pending)) (at start (step_20_done)))
    :effect (and (at start (not (step_8_pending))) (at end (step_8_done)))
  )

  ; Step 9: 1800s. Predecessor: 14
  (:durative-action step_9
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_9_pending)) (at start (step_14_done)))
    :effect (and (at start (not (step_9_pending))) (at end (step_9_done)))
  )

  ; Step 10: 1200s. Predecessors: 5,14,20
  (:durative-action step_10
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_10_pending)) (at start (step_5_done)) (at start (step_14_done)) (at start (step_20_done)))
    :effect (and (at start (not (step_10_pending))) (at end (step_10_done)))
  )

  ; Step 11: 900s. Predecessor: 32
  (:durative-action step_11
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_11_pending)) (at start (step_32_done)))
    :effect (and (at start (not (step_11_pending))) (at end (step_11_done)))
  )

  ; Step 12: 600s. Predecessor: 26
  (:durative-action step_12
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_12_pending)) (at start (step_26_done)))
    :effect (and (at start (not (step_12_pending))) (at end (step_12_done)))
  )

  ; Step 13: 3600s. Predecessors: 8,24,26,34,40,50
  (:durative-action step_13
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_13_pending)) (at start (step_8_done)) (at start (step_24_done)) (at start (step_26_done)) (at start (step_34_done)) (at start (step_40_done)) (at start (step_50_done)))
    :effect (and (at start (not (step_13_pending))) (at end (step_13_done)))
  )

  ; Step 14: 2 weeks = 1209600s
  (:durative-action step_14
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (step_14_pending))
    :effect (and (at start (not (step_14_pending))) (at end (step_14_done)))
  )

  ; Step 15: 3600s. Predecessor: 49
  (:durative-action step_15
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_15_pending)) (at start (step_49_done)))
    :effect (and (at start (not (step_15_pending))) (at end (step_15_done)))
  )

  ; Step 16: 900s. Predecessors: 1,14
  (:durative-action step_16
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_16_pending)) (at start (step_1_done)) (at start (step_14_done)))
    :effect (and (at start (not (step_16_pending))) (at end (step_16_done)))
  )

  ; Step 17: 1800s. Predecessors: 8,20,29
  (:durative-action step_17
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_17_pending)) (at start (step_8_done)) (at start (step_20_done)) (at start (step_29_done)))
    :effect (and (at start (not (step_17_pending))) (at end (step_17_done)))
  )

  ; Step 18: 7200s
  (:durative-action step_18
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_18_pending))
    :effect (and (at start (not (step_18_pending))) (at end (step_18_done)))
  )

  ; Step 19: 1800s. Predecessors: 2,25,35,44,49
  (:durative-action step_19
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_19_pending)) (at start (step_2_done)) (at start (step_25_done)) (at start (step_35_done)) (at start (step_44_done)) (at start (step_49_done)))
    :effect (and (at start (not (step_19_pending))) (at end (step_19_done)))
  )

  ; Step 20: 1800s. Predecessors: 29,43
  (:durative-action step_20
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_20_pending)) (at start (step_29_done)) (at start (step_43_done)))
    :effect (and (at start (not (step_20_pending))) (at end (step_20_done)))
  )

  ; Step 21: 600s. Predecessor: 9
  (:durative-action step_21
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_21_pending)) (at start (step_9_done)))
    :effect (and (at start (not (step_21_pending))) (at end (step_21_done)))
  )

  ; Step 22: 7200s. Predecessors: 6,29
  (:durative-action step_22
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_22_pending)) (at start (step_6_done)) (at start (step_29_done)))
    :effect (and (at start (not (step_22_pending))) (at end (step_22_done)))
  )

  ; Step 23: 345600s. Predecessor: 49
  (:durative-action step_23
    :parameters ()
    :duration (= ?duration 345600)
    :condition (and (at start (step_23_pending)) (at start (step_49_done)))
    :effect (and (at start (not (step_23_pending))) (at end (step_23_done)))
  )

  ; Step 24: 900s. Predecessors: 15,40
  (:durative-action step_24
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_24_pending)) (at start (step_15_done)) (at start (step_40_done)))
    :effect (and (at start (not (step_24_pending))) (at end (step_24_done)))
  )

  ; Step 25: 7200s. Predecessors: 5,14
  (:durative-action step_25
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_25_pending)) (at start (step_5_done)) (at start (step_14_done)))
    :effect (and (at start (not (step_25_pending))) (at end (step_25_done)))
  )

  ; Step 26: 7200s. Predecessor: 3
  (:durative-action step_26
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_26_pending)) (at start (step_3_done)))
    :effect (and (at start (not (step_26_pending))) (at end (step_26_done)))
  )

  ; Step 27: 600s. Predecessor: 20
  (:durative-action step_27
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_27_pending)) (at start (step_20_done)))
    :effect (and (at start (not (step_27_pending))) (at end (step_27_done)))
  )

  ; Step 28: 900s. Predecessors: 4,9,50
  (:durative-action step_28
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_28_pending)) (at start (step_4_done)) (at start (step_9_done)) (at start (step_50_done)))
    :effect (and (at start (not (step_28_pending))) (at end (step_28_done)))
  )

  ; Step 29: 3 months = 7776000s (assuming 90 days)
  (:durative-action step_29
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (at start (step_29_pending))
    :effect (and (at start (not (step_29_pending))) (at end (step_29_done)))
  )

  ; Step 30: 600s
  (:durative-action step_30
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_30_pending))
    :effect (and (at start (not (step_30_pending))) (at end (step_30_done)))
  )

  ; Step 31: 1200s. Predecessor: 14
  (:durative-action step_31
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_31_pending)) (at start (step_14_done)))
    :effect (and (at start (not (step_31_pending))) (at end (step_31_done)))
  )

  ; Step 32: 3600s
  (:durative-action step_32
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_32_pending))
    :effect (and (at start (not (step_32_pending))) (at end (step_32_done)))
  )

  ; Step 33: 18000s. Predecessors: 14,26,47
  (:durative-action step_33
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_33_pending)) (at start (step_14_done)) (at start (step_26_done)) (at start (step_47_done)))
    :effect (and (at start (not (step_33_pending))) (at end (step_33_done)))
  )

  ; Step 34: 7200s. Predecessors: 37,40,14
  (:durative-action step_34
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_34_pending)) (at start (step_37_done)) (at start (step_40_done)) (at start (step_14_done)))
    :effect (and (at start (not (step_34_pending))) (at end (step_34_done)))
  )

  ; Step 35: 1200s. Predecessor: 4
  (:durative-action step_35
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_35_pending)) (at start (step_4_done)))
    :effect (and (at start (not (step_35_pending))) (at end (step_35_done)))
  )

  ; Step 36: 1 week = 604800s
  (:durative-action step_36
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (step_36_pending))
    :effect (and (at start (not (step_36_pending))) (at end (step_36_done)))
  )

  ; Step 37: 2700s. Predecessors: 7,29,42,50
  (:durative-action step_37
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_37_pending)) (at start (step_7_done)) (at start (step_29_done)) (at start (step_42_done)) (at start (step_50_done)))
    :effect (and (at start (not (step_37_pending))) (at end (step_37_done)))
  )

  ; Step 38: 10800s
  (:durative-action step_38
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step_38_pending))
    :effect (and (at start (not (step_38_pending))) (at end (step_38_done)))
  )

  ; Step 39: 3600s. Predecessors: 19,20,30,48,42
  (:durative-action step_39
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_39_pending)) (at start (step_19_done)) (at start (step_20_done)) (at start (step_30_done)) (at start (step_48_done)) (at start (step_42_done)))
    :effect (and (at start (not (step_39_pending))) (at end (step_39_done)))
  )

  ; Step 40: 3600s. Predecessors: 17,23,44
  (:durative-action step_40
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_40_pending)) (at start (step_17_done)) (at start (step_23_done)) (at start (step_44_done)))
    :effect (and (at start (not (step_40_pending))) (at end (step_40_done)))
  )

  ; Step 41: 1800s. Predecessor: 7
  (:durative-action step_41
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_41_pending)) (at start (step_7_done)))
    :effect (and (at start (not (step_41_pending))) (at end (step_41_done)))
  )

  ; Step 42: 600s. Predecessor: 11
  (:durative-action step_42
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_42_pending)) (at start (step_11_done)))
    :effect (and (at start (not (step_42_pending))) (at end (step_42_done)))
  )

  ; Step 43: 900s. Predecessor: 48
  (:durative-action step_43
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_43_pending)) (at start (step_48_done)))
    :effect (and (at start (not (step_43_pending))) (at end (step_43_done)))
  )

  ; Step 44: 14400s
  (:durative-action step_44
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (step_44_pending))
    :effect (and (at start (not (step_44_pending))) (at end (step_44_done)))
  )

  ; Step 45: 1 week = 604800s. Predecessor: 18
  (:durative-action step_45
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_45_pending)) (at start (step_18_done)))
    :effect (and (at start (not (step_45_pending))) (at end (step_45_done)))
  )

  ; Step 46: 600s. Predecessors: 4,20,21
  (:durative-action step_46
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_46_pending)) (at start (step_4_done)) (at start (step_20_done)) (at start (step_21_done)))
    :effect (and (at start (not (step_46_pending))) (at end (step_46_done)))
  )

  ; Step 47: 300s. Predecessor: 45
  (:durative-action step_47
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_47_pending)) (at start (step_45_done)))
    :effect (and (at start (not (step_47_pending))) (at end (step_47_done)))
  )

  ; Step 48: 1800s. Predecessor: 4
  (:durative-action step_48
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_48_pending)) (at start (step_4_done)))
    :effect (and (at start (not (step_48_pending))) (at end (step_48_done)))
  )

  ; Step 49: 172800s
  (:durative-action step_49
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (step_49_pending))
    :effect (and (at start (not (step_49_pending))) (at end (step_49_done)))
  )

  ; Step 50: 900s
  (:durative-action step_50
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_50_pending))
    :effect (and (at start (not (step_50_pending))) (at end (step_50_done)))
  )
)
