(define (domain choose_meat_cut)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (final_choice)

    ;; identity predicates to bind each durative-action to exactly one step object
    (step_is_1 ?s - step) (step_is_2 ?s - step) (step_is_3 ?s - step) (step_is_4 ?s - step)
    (step_is_5 ?s - step) (step_is_6 ?s - step) (step_is_7 ?s - step) (step_is_8 ?s - step)
    (step_is_9 ?s - step) (step_is_10 ?s - step) (step_is_11 ?s - step) (step_is_12 ?s - step)
    (step_is_13 ?s - step) (step_is_14 ?s - step) (step_is_15 ?s - step) (step_is_16 ?s - step)
    (step_is_17 ?s - step) (step_is_18 ?s - step) (step_is_19 ?s - step) (step_is_20 ?s - step)
    (step_is_21 ?s - step) (step_is_22 ?s - step) (step_is_23 ?s - step) (step_is_24 ?s - step)
    (step_is_25 ?s - step) (step_is_26 ?s - step) (step_is_27 ?s - step) (step_is_28 ?s - step)
    (step_is_29 ?s - step) (step_is_30 ?s - step) (step_is_31 ?s - step) (step_is_32 ?s - step)
    (step_is_33 ?s - step) (step_is_34 ?s - step) (step_is_35 ?s - step) (step_is_36 ?s - step)
    (step_is_37 ?s - step) (step_is_38 ?s - step) (step_is_39 ?s - step) (step_is_40 ?s - step)
    (step_is_41 ?s - step) (step_is_42 ?s - step) (step_is_43 ?s - step) (step_is_44 ?s - step)
    (step_is_45 ?s - step) (step_is_46 ?s - step) (step_is_47 ?s - step) (step_is_48 ?s - step)
    (step_is_49 ?s - step) (step_is_50 ?s - step) (step_is_51 ?s - step) (step_is_52 ?s - step)
    (step_is_53 ?s - step) (step_is_54 ?s - step) (step_is_55 ?s - step) (step_is_56 ?s - step)
    (step_is_57 ?s - step) (step_is_58 ?s - step) (step_is_59 ?s - step) (step_is_60 ?s - step)

    ;; unique semantic predicates produced by each action
    (done_1) (done_2) (done_3) (done_4) (done_5) (done_6) (done_7) (done_8) (done_9) (done_10)
    (done_11) (done_12) (done_13) (done_14) (done_15) (done_16) (done_17) (done_18) (done_19) (done_20)
    (done_21) (done_22) (done_23) (done_24) (done_25) (done_26) (done_27) (done_28) (done_29) (done_30)
    (done_31) (done_32) (done_33) (done_34) (done_35) (done_36) (done_37) (done_38) (done_39) (done_40)
    (done_41) (done_42) (done_43) (done_44) (done_45) (done_46) (done_47) (done_48) (done_49) (done_50)
    (done_51) (done_52) (done_53) (done_54) (done_55) (done_56) (done_57) (done_58) (done_59) (done_60)
  )

  ;; One durative-action per step. Each action is parameterized by ?s - step but restricted
  ;; to the single object for that step via the step_is_N predicate. Preconditions include
  ;; step_pending and all listed predecessor done_X semantic predicates. Effects clear pending
  ;; at start, assert step_done at end, and assert the action's unique done_N at end.

  (:durative-action step1
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_is_1 ?s)) (at start (step_pending ?s)) (at start (done_5)) (at start (done_59)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_1))))

  (:durative-action step2
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_is_2 ?s)) (at start (step_pending ?s)) (at start (done_28)) (at start (done_59)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_2))))

  (:durative-action step3
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_is_3 ?s)) (at start (step_pending ?s)) (at start (done_20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_3))))

  (:durative-action step4
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_is_4 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_4))))

  (:durative-action step5
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_is_5 ?s)) (at start (step_pending ?s)) (at start (done_20)) (at start (done_50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_5))))

  (:durative-action step6
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_is_6 ?s)) (at start (step_pending ?s)) (at start (done_18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_6))))

  (:durative-action step7
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_is_7 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_7))))

  (:durative-action step8
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_is_8 ?s)) (at start (step_pending ?s)) (at start (done_7)) (at start (done_43)) (at start (done_60)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_8))))

  (:durative-action step9
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_is_9 ?s)) (at start (step_pending ?s)) (at start (done_10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_9))))

  (:durative-action step10
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_is_10 ?s)) (at start (step_pending ?s)) (at start (done_50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_10))))

  (:durative-action step11
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_is_11 ?s)) (at start (step_pending ?s)) (at start (done_3)) (at start (done_25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_11))))

  (:durative-action step12
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_is_12 ?s)) (at start (step_pending ?s)) (at start (done_4)) (at start (done_57)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_12))))

  (:durative-action step13
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_is_13 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_13))))

  (:durative-action step14
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_is_14 ?s)) (at start (step_pending ?s)) (at start (done_4)) (at start (done_10)) (at start (done_28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_14))))

  (:durative-action step15
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_is_15 ?s)) (at start (step_pending ?s)) (at start (done_20)) (at start (done_52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_15))))

  (:durative-action step16
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_is_16 ?s)) (at start (step_pending ?s)) (at start (done_40)) (at start (done_49)) (at start (done_53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_16))))

  (:durative-action step17
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_is_17 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_17))))

  (:durative-action step18
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_is_18 ?s)) (at start (step_pending ?s)) (at start (done_9)) (at start (done_36)) (at start (done_39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_18))))

  (:durative-action step19
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_is_19 ?s)) (at start (step_pending ?s)) (at start (done_28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_19))))

  (:durative-action step20
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_is_20 ?s)) (at start (step_pending ?s)) (at start (done_24)) (at start (done_52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_20))))

  (:durative-action step21
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_is_21 ?s)) (at start (step_pending ?s)) (at start (done_8)) (at start (done_49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_21))))

  (:durative-action step22
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_is_22 ?s)) (at start (step_pending ?s)) (at start (done_2)) (at start (done_19)) (at start (done_24)) (at start (done_50)) (at start (done_52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_22))))

  (:durative-action step23
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_is_23 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_23))))

  (:durative-action step24
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_is_24 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_24))))

  (:durative-action step25
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_is_25 ?s)) (at start (step_pending ?s)) (at start (done_26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_25))))

  (:durative-action step26
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_is_26 ?s)) (at start (step_pending ?s)) (at start (done_30)) (at start (done_47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_26))))

  (:durative-action step27
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_is_27 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_27))))

  (:durative-action step28
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_is_28 ?s)) (at start (step_pending ?s)) (at start (done_13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_28))))

  (:durative-action step29
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_is_29 ?s)) (at start (step_pending ?s)) (at start (done_19)) (at start (done_59)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_29))))

  (:durative-action step30
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_is_30 ?s)) (at start (step_pending ?s)) (at start (done_52)) (at start (done_57)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_30))))

  (:durative-action step31
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_is_31 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_31))))

  (:durative-action step32
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_is_32 ?s)) (at start (step_pending ?s)) (at start (done_27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_32))))

  (:durative-action step33
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_is_33 ?s)) (at start (step_pending ?s)) (at start (done_15)) (at start (done_27)) (at start (done_50)) (at start (done_52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_33))))

  (:durative-action step34
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_is_34 ?s)) (at start (step_pending ?s)) (at start (done_12)) (at start (done_14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_34))))

  (:durative-action step35
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_is_35 ?s)) (at start (step_pending ?s)) (at start (done_9)) (at start (done_16)) (at start (done_17)) (at start (done_18)) (at start (done_29)) (at start (done_41)) (at start (done_54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_35)) (at end (final_choice))))

  (:durative-action step36
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_is_36 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_36))))

  (:durative-action step37
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_is_37 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_37))))

  (:durative-action step38
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_is_38 ?s)) (at start (step_pending ?s)) (at start (done_37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_38))))

  (:durative-action step39
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_is_39 ?s)) (at start (step_pending ?s)) (at start (done_14)) (at start (done_29)) (at start (done_36)) (at start (done_50)) (at start (done_55)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_39))))

  (:durative-action step40
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_is_40 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_40))))

  (:durative-action step41
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_is_41 ?s)) (at start (step_pending ?s)) (at start (done_4)) (at start (done_6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_41))))

  (:durative-action step42
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_is_42 ?s)) (at start (step_pending ?s)) (at start (done_16)) (at start (done_23)) (at start (done_60)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_42))))

  (:durative-action step43
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_is_43 ?s)) (at start (step_pending ?s)) (at start (done_23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_43))))

  (:durative-action step44
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_is_44 ?s)) (at start (step_pending ?s)) (at start (done_5)) (at start (done_15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_44))))

  (:durative-action step45
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_is_45 ?s)) (at start (step_pending ?s)) (at start (done_53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_45))))

  (:durative-action step46
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_is_46 ?s)) (at start (step_pending ?s)) (at start (done_27)) (at start (done_52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_46))))

  (:durative-action step47
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_is_47 ?s)) (at start (step_pending ?s)) (at start (done_17)) (at start (done_57)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_47))))

  (:durative-action step48
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_is_48 ?s)) (at start (step_pending ?s)) (at start (done_45)) (at start (done_50)) (at start (done_53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_48))))

  (:durative-action step49
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_is_49 ?s)) (at start (step_pending ?s)) (at start (done_27)) (at start (done_52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_49))))

  (:durative-action step50
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_is_50 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_50))))

  (:durative-action step51
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_is_51 ?s)) (at start (step_pending ?s)) (at start (done_14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_51))))

  (:durative-action step52
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_is_52 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_52))))

  (:durative-action step53
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_is_53 ?s)) (at start (step_pending ?s)) (at start (done_31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_53))))

  (:durative-action step54
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_is_54 ?s)) (at start (step_pending ?s)) (at start (done_21)) (at start (done_26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_54))))

  (:durative-action step55
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_is_55 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_55))))

  (:durative-action step56
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_is_56 ?s)) (at start (step_pending ?s)) (at start (done_23)) (at start (done_44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_56))))

  (:durative-action step57
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_is_57 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_57))))

  (:durative-action step58
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_is_58 ?s)) (at start (step_pending ?s)) (at start (done_14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_58))))

  (:durative-action step59
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_is_59 ?s)) (at start (step_pending ?s)) (at start (done_31)) (at start (done_44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_59))))

  (:durative-action step60
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_is_60 ?s)) (at start (step_pending ?s)) (at start (done_32)) (at start (done_55)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_60))))
)
