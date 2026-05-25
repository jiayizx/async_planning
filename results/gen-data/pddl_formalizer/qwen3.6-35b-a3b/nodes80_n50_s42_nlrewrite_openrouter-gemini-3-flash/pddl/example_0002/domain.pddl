(define (domain async_relationship)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (semantic1) (semantic2) (semantic3) (semantic4) (semantic5)
    (semantic6) (semantic7) (semantic8) (semantic9) (semantic10)
    (semantic11) (semantic12) (semantic13) (semantic14) (semantic15)
    (semantic16) (semantic17) (semantic18) (semantic19) (semantic20)
    (semantic21) (semantic22) (semantic23) (semantic24) (semantic25)
    (semantic26) (semantic27) (semantic28) (semantic29) (semantic30)
    (semantic31) (semantic32) (semantic33) (semantic34) (semantic35)
    (semantic36) (semantic37) (semantic38) (semantic39) (semantic40)
    (semantic41) (semantic42) (semantic43) (semantic44) (semantic45)
    (semantic46) (semantic47) (semantic48) (semantic49) (semantic50)
    (semantic51) (semantic52) (semantic53) (semantic54) (semantic55)
    (semantic56) (semantic57) (semantic58) (semantic59) (semantic60)
    (semantic61) (semantic62) (semantic63) (semantic64) (semantic65)
    (semantic66) (semantic67) (semantic68) (semantic69) (semantic70)
    (semantic71) (semantic72) (semantic73) (semantic74) (semantic75)
    (semantic76) (semantic77) (semantic78) (semantic79) (semantic80))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (semantic8)) (at start (semantic12)) (at start (semantic50)) (at start (semantic56)) (at start (semantic68)) (at start (semantic76)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic1))))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (semantic78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic2))))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (semantic21)) (at start (semantic28)) (at start (semantic38)) (at start (semantic53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic3))))
  (:durative-action do_step4
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (semantic44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic4))))
  (:durative-action do_step5
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (semantic46)) (at start (semantic47)) (at start (semantic58)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic5))))
  (:durative-action do_step6
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (semantic2)) (at start (semantic3)) (at start (semantic17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic6))))
  (:durative-action do_step7
    :parameters (?s - step)
    :duration 259200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic7))))
  (:durative-action do_step8
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (semantic32)) (at start (semantic48)) (at start (semantic65)) (at start (semantic66)) (at start (semantic74)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic8))))
  (:durative-action do_step9
    :parameters (?s - step)
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (semantic16)) (at start (semantic21)) (at start (semantic40)) (at start (semantic48)) (at start (semantic61)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic9))))
  (:durative-action do_step10
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (semantic13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic10))))
  (:durative-action do_step11
    :parameters (?s - step)
    :duration 2700
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic11))))
  (:durative-action do_step12
    :parameters (?s - step)
    :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (semantic21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic12))))
  (:durative-action do_step13
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (semantic17)) (at start (semantic71)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic13))))
  (:durative-action do_step14
    :parameters (?s - step)
    :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic14))))
  (:durative-action do_step15
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (semantic1)) (at start (semantic19)) (at start (semantic21)) (at start (semantic36)) (at start (semantic66)) (at start (semantic80)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic15))))
  (:durative-action do_step16
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (semantic18)) (at start (semantic78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic16))))
  (:durative-action do_step17
    :parameters (?s - step)
    :duration 86400
    :condition (and (at start (step_pending ?s)) (at start (semantic45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic17))))
  (:durative-action do_step18
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (semantic12)) (at start (semantic17)) (at start (semantic31)) (at start (semantic45)) (at start (semantic48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic18))))
  (:durative-action do_step19
    :parameters (?s - step)
    :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic19))))
  (:durative-action do_step20
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (semantic8)) (at start (semantic28)) (at start (semantic32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic20))))
  (:durative-action do_step21
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (semantic44)) (at start (semantic47)) (at start (semantic78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic21))))
  (:durative-action do_step22
    :parameters (?s - step)
    :duration 604800
    :condition (and (at start (step_pending ?s)) (at start (semantic28)) (at start (semantic43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic22))))
  (:durative-action do_step23
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (semantic11)) (at start (semantic45)) (at start (semantic53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic23))))
  (:durative-action do_step24
    :parameters (?s - step)
    :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (semantic56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic24))))
  (:durative-action do_step25
    :parameters (?s - step)
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (semantic12)) (at start (semantic24)) (at start (semantic41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic25))))
  (:durative-action do_step26
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (semantic60)) (at start (semantic70)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic26))))
  (:durative-action do_step27
    :parameters (?s - step)
    :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (semantic34)) (at start (semantic37)) (at start (semantic42)) (at start (semantic53)) (at start (semantic63)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic27))))
  (:durative-action do_step28
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (semantic2)) (at start (semantic64)) (at start (semantic65)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic28))))
  (:durative-action do_step29
    :parameters (?s - step)
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic29))))
  (:durative-action do_step30
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (semantic4)) (at start (semantic32)) (at start (semantic37)) (at start (semantic39)) (at start (semantic55)) (at start (semantic79)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic30))))
  (:durative-action do_step31
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (semantic64)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic31))))
  (:durative-action do_step32
    :parameters (?s - step)
    :duration 172800
    :condition (and (at start (step_pending ?s)) (at start (semantic50)) (at start (semantic55)) (at start (semantic70)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic32))))
  (:durative-action do_step33
    :parameters (?s - step)
    :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (semantic14)) (at start (semantic23)) (at start (semantic41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic33))))
  (:durative-action do_step34
    :parameters (?s - step)
    :duration 5400
    :condition (and (at start (step_pending ?s)) (at start (semantic15)) (at start (semantic29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic34))))
  (:durative-action do_step35
    :parameters (?s - step)
    :duration 432000
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic35))))
  (:durative-action do_step36
    :parameters (?s - step)
    :duration 7200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic36))))
  (:durative-action do_step37
    :parameters (?s - step)
    :duration 172800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic37))))
  (:durative-action do_step38
    :parameters (?s - step)
    :duration 2700
    :condition (and (at start (step_pending ?s)) (at start (semantic19)) (at start (semantic52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic38))))
  (:durative-action do_step39
    :parameters (?s - step)
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (semantic5)) (at start (semantic21)) (at start (semantic29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic39))))
  (:durative-action do_step40
    :parameters (?s - step)
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic40))))
  (:durative-action do_step41
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (semantic14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic41))))
  (:durative-action do_step42
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (semantic7)) (at start (semantic17)) (at start (semantic24)) (at start (semantic43)) (at start (semantic78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic42))))
  (:durative-action do_step43
    :parameters (?s - step)
    :duration 172800
    :condition (and (at start (step_pending ?s)) (at start (semantic70)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic43))))
  (:durative-action do_step44
    :parameters (?s - step)
    :duration 1200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic44))))
  (:durative-action do_step45
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (semantic50)) (at start (semantic78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic45))))
  (:durative-action do_step46
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (semantic8)) (at start (semantic12)) (at start (semantic18)) (at start (semantic41)) (at start (semantic64)) (at start (semantic74)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic46))))
  (:durative-action do_step47
    :parameters (?s - step)
    :duration 10800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic47))))
  (:durative-action do_step48
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (semantic11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic48))))
  (:durative-action do_step49
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (semantic19)) (at start (semantic56)) (at start (semantic61)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic49))))
  (:durative-action do_step50
    :parameters (?s - step)
    :duration 604800
    :condition (and (at start (step_pending ?s)) (at start (semantic14)) (at start (semantic37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic50))))
  (:durative-action do_step51
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (semantic17)) (at start (semantic24)) (at start (semantic58)) (at start (semantic62)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic51))))
  (:durative-action do_step52
    :parameters (?s - step)
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (semantic50)) (at start (semantic58)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic52))))
  (:durative-action do_step53
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (semantic48)) (at start (semantic65)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic53))))
  (:durative-action do_step54
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (semantic73)) (at start (semantic75)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic54))))
  (:durative-action do_step55
    :parameters (?s - step)
    :duration 1209600
    :condition (and (at start (step_pending ?s)) (at start (semantic14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic55))))
  (:durative-action do_step56
    :parameters (?s - step)
    :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (semantic37)) (at start (semantic40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic56))))
  (:durative-action do_step57
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (semantic13)) (at start (semantic43)) (at start (semantic74)) (at start (semantic79)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic57))))
  (:durative-action do_step58
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (semantic13)) (at start (semantic31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic58))))
  (:durative-action do_step59
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (semantic8)) (at start (semantic48)) (at start (semantic72)) (at start (semantic76)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic59))))
  (:durative-action do_step60
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (semantic28)) (at start (semantic36)) (at start (semantic46)) (at start (semantic55)) (at start (semantic74)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic60))))
  (:durative-action do_step61
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (semantic12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic61))))
  (:durative-action do_step62
    :parameters (?s - step)
    :duration 259200
    :condition (and (at start (step_pending ?s)) (at start (semantic75)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic62))))
  (:durative-action do_step63
    :parameters (?s - step)
    :duration 1200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic63))))
  (:durative-action do_step64
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (semantic11)) (at start (semantic12)) (at start (semantic40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic64))))
  (:durative-action do_step65
    :parameters (?s - step)
    :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic65))))
  (:durative-action do_step66
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (semantic41)) (at start (semantic43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic66))))
  (:durative-action do_step67
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (semantic31)) (at start (semantic61)) (at start (semantic69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic67))))
  (:durative-action do_step68
    :parameters (?s - step)
    :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (semantic14)) (at start (semantic41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic68))))
  (:durative-action do_step69
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (semantic11)) (at start (semantic33)) (at start (semantic36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic69))))
  (:durative-action do_step70
    :parameters (?s - step)
    :duration 86400
    :condition (and (at start (step_pending ?s)) (at start (semantic7)) (at start (semantic29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic70))))
  (:durative-action do_step71
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (semantic19)) (at start (semantic40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic71))))
  (:durative-action do_step72
    :parameters (?s - step)
    :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (semantic1)) (at start (semantic9)) (at start (semantic16)) (at start (semantic20)) (at start (semantic34)) (at start (semantic40)) (at start (semantic56)) (at start (semantic74)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic72))))
  (:durative-action do_step73
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (semantic35)) (at start (semantic65)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic73))))
  (:durative-action do_step74
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (semantic41)) (at start (semantic49)) (at start (semantic64)) (at start (semantic66)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic74))))
  (:durative-action do_step75
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (semantic35)) (at start (semantic71)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic75))))
  (:durative-action do_step76
    :parameters (?s - step)
    :duration 1200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic76))))
  (:durative-action do_step77
    :parameters (?s - step)
    :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (semantic1)) (at start (semantic47)) (at start (semantic76)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic77))))
  (:durative-action do_step78
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (semantic14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic78))))
  (:durative-action do_step79
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (semantic21)) (at start (semantic47)) (at start (semantic69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic79))))
  (:durative-action do_step80
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (semantic16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (semantic80))))
)