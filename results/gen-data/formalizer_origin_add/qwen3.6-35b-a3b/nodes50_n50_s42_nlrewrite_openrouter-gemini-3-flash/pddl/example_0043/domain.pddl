(define (domain renovation_shift_domain)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1) (s2) (s3) (s4) (s5) (s6) (s7) (s8) (s9) (s10)
    (s11) (s12) (s13) (s14) (s15) (s16) (s17) (s18) (s19) (s20)
    (s21) (s22) (s23) (s24) (s25) (s26) (s27) (s28) (s29) (s30)
    (s31) (s32) (s33) (s34) (s35) (s36) (s37) (s38) (s39) (s40)
    (s41) (s42) (s43) (s44) (s45) (s46) (s47) (s48) (s49) (s50))
  (:durative-action do_step1
    :duration 3600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s32)) (at start (s37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1))))
  (:durative-action do_step2
    :duration 7200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s38)) (at start (s47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2))))
  (:durative-action do_step3
    :duration 3600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s17)) (at start (s42)) (at start (s44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3))))
  (:durative-action do_step4
    :duration 259200
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4))))
  (:durative-action do_step5
    :duration 14400
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s39)) (at start (s44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5))))
  (:durative-action do_step6
    :duration 18000
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s12)) (at start (s46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6))))
  (:durative-action do_step7
    :duration 7200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7))))
  (:durative-action do_step8
    :duration 21600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8))))
  (:durative-action do_step9
    :duration 86400
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s20)) (at start (s21)) (at start (s43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9))))
  (:durative-action do_step10
    :duration 172800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s31)) (at start (s42)) (at start (s44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10))))
  (:durative-action do_step11
    :duration 604800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s8)) (at start (s43)) (at start (s49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11))))
  (:durative-action do_step12
    :duration 259200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s14)) (at start (s17)) (at start (s39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12))))
  (:durative-action do_step13
    :duration 14400
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s10)) (at start (s41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13))))
  (:durative-action do_step14
    :duration 1209600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s5)) (at start (s11)) (at start (s35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14))))
  (:durative-action do_step15
    :duration 18000
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15))))
  (:durative-action do_step16
    :duration 10800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s8)) (at start (s44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16))))
  (:durative-action do_step17
    :duration 345600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17))))
  (:durative-action do_step18
    :duration 7200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s9)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18))))
  (:durative-action do_step19
    :duration 10800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s20)) (at start (s32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19))))
  (:durative-action do_step20
    :duration 7200
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20))))
  (:durative-action do_step21
    :duration 14400
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s8)) (at start (s38)) (at start (s43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21))))
  (:durative-action do_step22
    :duration 86400
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s14)) (at start (s39)) (at start (s43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22))))
  (:durative-action do_step23
    :duration 21600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s24)) (at start (s33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23))))
  (:durative-action do_step24
    :duration 86400
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24))))
  (:durative-action do_step25
    :duration 172800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25))))
  (:durative-action do_step26
    :duration 1800
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26))))
  (:durative-action do_step27
    :duration 10800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s28)) (at start (s49)) (at start (s50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27))))
  (:durative-action do_step28
    :duration 14400
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28))))
  (:durative-action do_step29
    :duration 10800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s11)) (at start (s35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29))))
  (:durative-action do_step30
    :duration 7200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s9)) (at start (s12)) (at start (s17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30))))
  (:durative-action do_step31
    :duration 14400
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31))))
  (:durative-action do_step32
    :duration 7200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32))))
  (:durative-action do_step33
    :duration 172800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s12)) (at start (s39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33))))
  (:durative-action do_step34
    :duration 86400
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s8)) (at start (s16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34))))
  (:durative-action do_step35
    :duration 7200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35))))
  (:durative-action do_step36
    :duration 10800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s8)) (at start (s24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36))))
  (:durative-action do_step37
    :duration 7200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s4)) (at start (s12)) (at start (s14)) (at start (s38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37))))
  (:durative-action do_step38
    :duration 3600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38))))
  (:durative-action do_step39
    :duration 18000
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39))))
  (:durative-action do_step40
    :duration 10800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s4)) (at start (s20)) (at start (s44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40))))
  (:durative-action do_step41
    :duration 3600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s10)) (at start (s26)) (at start (s37)) (at start (s44)) (at start (s50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s41))))
  (:durative-action do_step42
    :duration 7200
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s42))))
  (:durative-action do_step43
    :duration 7200
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s43))))
  (:durative-action do_step44
    :duration 7200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s20)) (at start (s26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s44))))
  (:durative-action do_step45
    :duration 14400
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s45))))
  (:durative-action do_step46
    :duration 10800
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s46))))
  (:durative-action do_step47
    :duration 7200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s31)) (at start (s43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s47))))
  (:durative-action do_step48
    :duration 604800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s5)) (at start (s15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s48))))
  (:durative-action do_step49
    :duration 10800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s16)) (at start (s21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s49))))
  (:durative-action do_step50
    :duration 18000
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s4)) (at start (s43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s50)))))