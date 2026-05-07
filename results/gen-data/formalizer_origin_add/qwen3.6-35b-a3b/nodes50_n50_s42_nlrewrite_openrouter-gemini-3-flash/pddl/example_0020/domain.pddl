(define (domain harvard_reference)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step) 
    (step_done ?s - step)
    (pred_1) (pred_2) (pred_3) (pred_4) (pred_5) (pred_6) (pred_7) (pred_8) (pred_9) (pred_10)
    (pred_11) (pred_12) (pred_13) (pred_14) (pred_15) (pred_16) (pred_17) (pred_18) (pred_19) (pred_20)
    (pred_21) (pred_22) (pred_23) (pred_24) (pred_25) (pred_26) (pred_27) (pred_28) (pred_29) (pred_30)
    (pred_31) (pred_32) (pred_33) (pred_34) (pred_35) (pred_36) (pred_37) (pred_38) (pred_39) (pred_40)
    (pred_41) (pred_42) (pred_43) (pred_44) (pred_45) (pred_46) (pred_47) (pred_48) (pred_49) (pred_50))

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_1))))

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (pred_34)) (at start (pred_35)) (at start (pred_48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_2))))

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (pred_10)) (at start (pred_18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_3))))

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_4))))

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (pred_38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_5))))

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (pred_42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_6))))

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (pred_40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_7))))

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (pred_9)) (at start (pred_12)) (at start (pred_25)) (at start (pred_38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_8))))

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (pred_30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_9))))

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (pred_35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_10))))

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (pred_19)) (at start (pred_30)) (at start (pred_47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_11))))

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (pred_7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_12))))

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_13))))

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_14))))

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (pred_50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_15))))

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (pred_1)) (at start (pred_8)) (at start (pred_21)) (at start (pred_29)) (at start (pred_41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_16))))

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_17))))

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (pred_42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_18))))

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (pred_46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_19))))

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (pred_13)) (at start (pred_33)) (at start (pred_38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_20))))

  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (pred_40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_21))))

  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (pred_4)) (at start (pred_14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_22))))

  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (pred_38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_23))))

  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (pred_36)) (at start (pred_39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_24))))

  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (pred_38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_25))))

  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (pred_38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_26))))

  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (pred_30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_27))))

  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (pred_9)) (at start (pred_42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_28))))

  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (pred_19)) (at start (pred_30)) (at start (pred_40)) (at start (pred_41)) (at start (pred_46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_29))))

  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_30))))

  (:durative-action do_step31
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (pred_9)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_31))))

  (:durative-action do_step32
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (pred_35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_32))))

  (:durative-action do_step33
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (pred_21)) (at start (pred_28)) (at start (pred_29)) (at start (pred_48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_33))))

  (:durative-action do_step34
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_34))))

  (:durative-action do_step35
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (pred_27)) (at start (pred_34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_35))))

  (:durative-action do_step36
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (pred_18)) (at start (pred_43)) (at start (pred_49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_36))))

  (:durative-action do_step37
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (pred_3)) (at start (pred_27)) (at start (pred_46)) (at start (pred_48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_37))))

  (:durative-action do_step38
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (pred_17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_38))))

  (:durative-action do_step39
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (pred_45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_39))))

  (:durative-action do_step40
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_40))))

  (:durative-action do_step41
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_41))))

  (:durative-action do_step42
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (pred_17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_42))))

  (:durative-action do_step43
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (pred_21)) (at start (pred_22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_43))))

  (:durative-action do_step44
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (pred_47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_44))))

  (:durative-action do_step45
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_45))))

  (:durative-action do_step46
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_46))))

  (:durative-action do_step47
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_47))))

  (:durative-action do_step48
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (pred_9)) (at start (pred_11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_48))))

  (:durative-action do_step49
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (pred_22)) (at start (pred_25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_49))))

  (:durative-action do_step50
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (pred_41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_50))))
)