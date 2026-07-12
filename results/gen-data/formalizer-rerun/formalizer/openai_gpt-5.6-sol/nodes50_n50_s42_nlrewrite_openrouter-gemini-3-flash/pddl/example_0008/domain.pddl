(define (domain religion-controversy)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step) (step_done ?s - step)
    (is1 ?s - step) (is2 ?s - step) (is3 ?s - step) (is4 ?s - step) (is5 ?s - step)
    (is6 ?s - step) (is7 ?s - step) (is8 ?s - step) (is9 ?s - step) (is10 ?s - step)
    (is11 ?s - step) (is12 ?s - step) (is13 ?s - step) (is14 ?s - step) (is15 ?s - step)
    (is16 ?s - step) (is17 ?s - step) (is18 ?s - step) (is19 ?s - step) (is20 ?s - step)
    (is21 ?s - step) (is22 ?s - step) (is23 ?s - step) (is24 ?s - step) (is25 ?s - step)
    (is26 ?s - step) (is27 ?s - step) (is28 ?s - step) (is29 ?s - step) (is30 ?s - step)
    (is31 ?s - step) (is32 ?s - step) (is33 ?s - step) (is34 ?s - step) (is35 ?s - step)
    (is36 ?s - step) (is37 ?s - step) (is38 ?s - step) (is39 ?s - step) (is40 ?s - step)
    (is41 ?s - step) (is42 ?s - step) (is43 ?s - step) (is44 ?s - step) (is45 ?s - step)
    (is46 ?s - step) (is47 ?s - step) (is48 ?s - step) (is49 ?s - step) (is50 ?s - step)
    (completed1) (completed2) (completed3) (completed4) (completed5)
    (completed6) (completed7) (completed8) (completed9) (completed10)
    (completed11) (completed12) (completed13) (completed14) (completed15)
    (completed16) (completed17) (completed18) (completed19) (completed20)
    (completed21) (completed22) (completed23) (completed24) (completed25)
    (completed26) (completed27) (completed28) (completed29) (completed30)
    (completed31) (completed32) (completed33) (completed34) (completed35)
    (completed36) (completed37) (completed38) (completed39) (completed40)
    (completed41) (completed42) (completed43) (completed44) (completed45)
    (completed46) (completed47) (completed48) (completed49) (completed50))

  (:durative-action do_step1
    :parameters (?s - step) :duration (= ?duration 14400)
    :condition (and (at start (is1 ?s)) (at start (step_pending ?s)) (at start (completed37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed1))))
  (:durative-action do_step2
    :parameters (?s - step) :duration (= ?duration 259200)
    :condition (and (at start (is2 ?s)) (at start (step_pending ?s)) (at start (completed11)) (at start (completed12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed2))))
  (:durative-action do_step3
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (is3 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed3))))
  (:durative-action do_step4
    :parameters (?s - step) :duration (= ?duration 18000)
    :condition (and (at start (is4 ?s)) (at start (step_pending ?s)) (at start (completed30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed4))))
  (:durative-action do_step5
    :parameters (?s - step) :duration (= ?duration 604800)
    :condition (and (at start (is5 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed5))))
  (:durative-action do_step6
    :parameters (?s - step) :duration (= ?duration 21600)
    :condition (and (at start (is6 ?s)) (at start (step_pending ?s)) (at start (completed41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed6))))
  (:durative-action do_step7
    :parameters (?s - step) :duration (= ?duration 172800)
    :condition (and (at start (is7 ?s)) (at start (step_pending ?s)) (at start (completed3)) (at start (completed28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed7))))
  (:durative-action do_step8
    :parameters (?s - step) :duration (= ?duration 86400)
    :condition (and (at start (is8 ?s)) (at start (step_pending ?s)) (at start (completed14)) (at start (completed16)) (at start (completed25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed8))))
  (:durative-action do_step9
    :parameters (?s - step) :duration (= ?duration 259200)
    :condition (and (at start (is9 ?s)) (at start (step_pending ?s)) (at start (completed19)) (at start (completed31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed9))))
  (:durative-action do_step10
    :parameters (?s - step) :duration (= ?duration 345600)
    :condition (and (at start (is10 ?s)) (at start (step_pending ?s)) (at start (completed20)) (at start (completed37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed10))))
  (:durative-action do_step11
    :parameters (?s - step) :duration (= ?duration 864000)
    :condition (and (at start (is11 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed11))))
  (:durative-action do_step12
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (is12 ?s)) (at start (step_pending ?s)) (at start (completed34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed12))))
  (:durative-action do_step13
    :parameters (?s - step) :duration (= ?duration 86400)
    :condition (and (at start (is13 ?s)) (at start (step_pending ?s)) (at start (completed1)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed13))))
  (:durative-action do_step14
    :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (is14 ?s)) (at start (step_pending ?s)) (at start (completed28)) (at start (completed50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed14))))
  (:durative-action do_step15
    :parameters (?s - step) :duration (= ?duration 18000)
    :condition (and (at start (is15 ?s)) (at start (step_pending ?s)) (at start (completed11)) (at start (completed38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed15))))
  (:durative-action do_step16
    :parameters (?s - step) :duration (= ?duration 604800)
    :condition (and (at start (is16 ?s)) (at start (step_pending ?s)) (at start (completed9)) (at start (completed32)) (at start (completed40)) (at start (completed47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed16))))
  (:durative-action do_step17
    :parameters (?s - step) :duration (= ?duration 14400)
    :condition (and (at start (is17 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed17))))
  (:durative-action do_step18
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (is18 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed18))))
  (:durative-action do_step19
    :parameters (?s - step) :duration (= ?duration 172800)
    :condition (and (at start (is19 ?s)) (at start (step_pending ?s)) (at start (completed22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed19))))
  (:durative-action do_step20
    :parameters (?s - step) :duration (= ?duration 21600)
    :condition (and (at start (is20 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed20))))
  (:durative-action do_step21
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (is21 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed21))))
  (:durative-action do_step22
    :parameters (?s - step) :duration (= ?duration 259200)
    :condition (and (at start (is22 ?s)) (at start (step_pending ?s)) (at start (completed30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed22))))
  (:durative-action do_step23
    :parameters (?s - step) :duration (= ?duration 43200)
    :condition (and (at start (is23 ?s)) (at start (step_pending ?s)) (at start (completed41)) (at start (completed46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed23))))
  (:durative-action do_step24
    :parameters (?s - step) :duration (= ?duration 86400)
    :condition (and (at start (is24 ?s)) (at start (step_pending ?s)) (at start (completed11)) (at start (completed28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed24))))
  (:durative-action do_step25
    :parameters (?s - step) :duration (= ?duration 345600)
    :condition (and (at start (is25 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed25))))
  (:durative-action do_step26
    :parameters (?s - step) :duration (= ?duration 18000)
    :condition (and (at start (is26 ?s)) (at start (step_pending ?s)) (at start (completed33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed26))))
  (:durative-action do_step27
    :parameters (?s - step) :duration (= ?duration 28800)
    :condition (and (at start (is27 ?s)) (at start (step_pending ?s)) (at start (completed44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed27))))
  (:durative-action do_step28
    :parameters (?s - step) :duration (= ?duration 1209600)
    :condition (and (at start (is28 ?s)) (at start (step_pending ?s)) (at start (completed5)) (at start (completed25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed28))))
  (:durative-action do_step29
    :parameters (?s - step) :duration (= ?duration 259200)
    :condition (and (at start (is29 ?s)) (at start (step_pending ?s)) (at start (completed12)) (at start (completed28)) (at start (completed31)) (at start (completed40)) (at start (completed41)) (at start (completed47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed29))))
  (:durative-action do_step30
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (is30 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed30))))
  (:durative-action do_step31
    :parameters (?s - step) :duration (= ?duration 604800)
    :condition (and (at start (is31 ?s)) (at start (step_pending ?s)) (at start (completed12)) (at start (completed17)) (at start (completed37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed31))))
  (:durative-action do_step32
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (is32 ?s)) (at start (step_pending ?s)) (at start (completed14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed32))))
  (:durative-action do_step33
    :parameters (?s - step) :duration (= ?duration 14400)
    :condition (and (at start (is33 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed33))))
  (:durative-action do_step34
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (is34 ?s)) (at start (step_pending ?s)) (at start (completed35)) (at start (completed38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed34))))
  (:durative-action do_step35
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (is35 ?s)) (at start (step_pending ?s)) (at start (completed18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed35))))
  (:durative-action do_step36
    :parameters (?s - step) :duration (= ?duration 21600)
    :condition (and (at start (is36 ?s)) (at start (step_pending ?s)) (at start (completed21)) (at start (completed30)) (at start (completed47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed36))))
  (:durative-action do_step37
    :parameters (?s - step) :duration (= ?duration 172800)
    :condition (and (at start (is37 ?s)) (at start (step_pending ?s)) (at start (completed30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed37))))
  (:durative-action do_step38
    :parameters (?s - step) :duration (= ?duration 604800)
    :condition (and (at start (is38 ?s)) (at start (step_pending ?s)) (at start (completed41)) (at start (completed47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed38))))
  (:durative-action do_step39
    :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (is39 ?s)) (at start (step_pending ?s)) (at start (completed21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed39))))
  (:durative-action do_step40
    :parameters (?s - step) :duration (= ?duration 432000)
    :condition (and (at start (is40 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed40))))
  (:durative-action do_step41
    :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (is41 ?s)) (at start (step_pending ?s)) (at start (completed46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed41))))
  (:durative-action do_step42
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (is42 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed42))))
  (:durative-action do_step43
    :parameters (?s - step) :duration (= ?duration 345600)
    :condition (and (at start (is43 ?s)) (at start (step_pending ?s)) (at start (completed13)) (at start (completed15)) (at start (completed16)) (at start (completed41)) (at start (completed44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed43))))
  (:durative-action do_step44
    :parameters (?s - step) :duration (= ?duration 14400)
    :condition (and (at start (is44 ?s)) (at start (step_pending ?s)) (at start (completed42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed44))))
  (:durative-action do_step45
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (is45 ?s)) (at start (step_pending ?s)) (at start (completed28)) (at start (completed29)) (at start (completed31)) (at start (completed35)) (at start (completed50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed45))))
  (:durative-action do_step46
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (is46 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed46))))
  (:durative-action do_step47
    :parameters (?s - step) :duration (= ?duration 345600)
    :condition (and (at start (is47 ?s)) (at start (step_pending ?s)) (at start (completed17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed47))))
  (:durative-action do_step48
    :parameters (?s - step) :duration (= ?duration 172800)
    :condition (and (at start (is48 ?s)) (at start (step_pending ?s)) (at start (completed11)) (at start (completed35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed48))))
  (:durative-action do_step49
    :parameters (?s - step) :duration (= ?duration 18000)
    :condition (and (at start (is49 ?s)) (at start (step_pending ?s)) (at start (completed37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed49))))
  (:durative-action do_step50
    :parameters (?s - step) :duration (= ?duration 259200)
    :condition (and (at start (is50 ?s)) (at start (step_pending ?s)) (at start (completed24)) (at start (completed31)) (at start (completed37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed50))))
)