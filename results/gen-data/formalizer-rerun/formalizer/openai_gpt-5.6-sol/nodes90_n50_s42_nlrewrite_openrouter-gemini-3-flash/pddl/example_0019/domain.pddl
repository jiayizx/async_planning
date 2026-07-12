; The reported /dev/loop8 failure is an Apptainer/container runtime error,
; not an OPTIC PDDL parsing or planning error. The container failed before
; OPTIC could read the domain. No PDDL change can repair a missing loop device.
;
; The prior files nevertheless had an independent tokenization defect:
; "step1 ... step90-step" does not type the objects because PDDL requires
; whitespace around the type separator: "step1 ... step90 - step".
; Likewise, variables must be written "?s - step", not "?s-step".
;
; After fixing those tokens, the prior parameterized actions would still have
; a semantic defect: any action could bind to any step object. The corrected
; encoding below uses a dedicated pending predicate for each step, initialized
; only for that step, so every action is bound to its intended object.
(define (domain sippy-cup)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_done ?s - step)
    (pending1 ?s - step) (pending2 ?s - step) (pending3 ?s - step)
    (pending4 ?s - step) (pending5 ?s - step) (pending6 ?s - step)
    (pending7 ?s - step) (pending8 ?s - step) (pending9 ?s - step)
    (pending10 ?s - step) (pending11 ?s - step) (pending12 ?s - step)
    (pending13 ?s - step) (pending14 ?s - step) (pending15 ?s - step)
    (pending16 ?s - step) (pending17 ?s - step) (pending18 ?s - step)
    (pending19 ?s - step) (pending20 ?s - step) (pending21 ?s - step)
    (pending22 ?s - step) (pending23 ?s - step) (pending24 ?s - step)
    (pending25 ?s - step) (pending26 ?s - step) (pending27 ?s - step)
    (pending28 ?s - step) (pending29 ?s - step) (pending30 ?s - step)
    (pending31 ?s - step) (pending32 ?s - step) (pending33 ?s - step)
    (pending34 ?s - step) (pending35 ?s - step) (pending36 ?s - step)
    (pending37 ?s - step) (pending38 ?s - step) (pending39 ?s - step)
    (pending40 ?s - step) (pending41 ?s - step) (pending42 ?s - step)
    (pending43 ?s - step) (pending44 ?s - step) (pending45 ?s - step)
    (pending46 ?s - step) (pending47 ?s - step) (pending48 ?s - step)
    (pending49 ?s - step) (pending50 ?s - step) (pending51 ?s - step)
    (pending52 ?s - step) (pending53 ?s - step) (pending54 ?s - step)
    (pending55 ?s - step) (pending56 ?s - step) (pending57 ?s - step)
    (pending58 ?s - step) (pending59 ?s - step) (pending60 ?s - step)
    (pending61 ?s - step) (pending62 ?s - step) (pending63 ?s - step)
    (pending64 ?s - step) (pending65 ?s - step) (pending66 ?s - step)
    (pending67 ?s - step) (pending68 ?s - step) (pending69 ?s - step)
    (pending70 ?s - step) (pending71 ?s - step) (pending72 ?s - step)
    (pending73 ?s - step) (pending74 ?s - step) (pending75 ?s - step)
    (pending76 ?s - step) (pending77 ?s - step) (pending78 ?s - step)
    (pending79 ?s - step) (pending80 ?s - step) (pending81 ?s - step)
    (pending82 ?s - step) (pending83 ?s - step) (pending84 ?s - step)
    (pending85 ?s - step) (pending86 ?s - step) (pending87 ?s - step)
    (pending88 ?s - step) (pending89 ?s - step) (pending90 ?s - step)
    (done1) (done2) (done3) (done4) (done5) (done6) (done7) (done8) (done9) (done10)
    (done11) (done12) (done13) (done14) (done15) (done16) (done17) (done18) (done19) (done20)
    (done21) (done22) (done23) (done24) (done25) (done26) (done27) (done28) (done29) (done30)
    (done31) (done32) (done33) (done34) (done35) (done36) (done37) (done38) (done39) (done40)
    (done41) (done42) (done43) (done44) (done45) (done46) (done47) (done48) (done49) (done50)
    (done51) (done52) (done53) (done54) (done55) (done56) (done57) (done58) (done59) (done60)
    (done61) (done62) (done63) (done64) (done65) (done66) (done67) (done68) (done69) (done70)
    (done71) (done72) (done73) (done74) (done75) (done76) (done77) (done78) (done79) (done80)
    (done81) (done82) (done83) (done84) (done85) (done86) (done87) (done88) (done89) (done90))

  (:durative-action execute-step1
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (pending1 ?s)) (at start (done28)))
    :effect (and (at start (not (pending1 ?s))) (at end (step_done ?s)) (at end (done1))))
  (:durative-action execute-step2
    :parameters (?s - step) :duration (= ?duration 15)
    :condition (and (at start (pending2 ?s)) (at start (done54)) (at start (done60)))
    :effect (and (at start (not (pending2 ?s))) (at end (step_done ?s)) (at end (done2))))
  (:durative-action execute-step3
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending3 ?s)) (at start (done9)) (at start (done58)) (at start (done82)))
    :effect (and (at start (not (pending3 ?s))) (at end (step_done ?s)) (at end (done3))))
  (:durative-action execute-step4
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending4 ?s)))
    :effect (and (at start (not (pending4 ?s))) (at end (step_done ?s)) (at end (done4))))
  (:durative-action execute-step5
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (pending5 ?s)))
    :effect (and (at start (not (pending5 ?s))) (at end (step_done ?s)) (at end (done5))))
  (:durative-action execute-step6
    :parameters (?s - step) :duration (= ?duration 20)
    :condition (and (at start (pending6 ?s)) (at start (done46)) (at start (done51)) (at start (done59)))
    :effect (and (at start (not (pending6 ?s))) (at end (step_done ?s)) (at end (done6))))
  (:durative-action execute-step7
    :parameters (?s - step) :duration (= ?duration 45)
    :condition (and (at start (pending7 ?s)) (at start (done59)))
    :effect (and (at start (not (pending7 ?s))) (at end (step_done ?s)) (at end (done7))))
  (:durative-action execute-step8
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (pending8 ?s)) (at start (done6)) (at start (done9)) (at start (done35)) (at start (done42)) (at start (done45)) (at start (done56)) (at start (done61)) (at start (done87)))
    :effect (and (at start (not (pending8 ?s))) (at end (step_done ?s)) (at end (done8))))
  (:durative-action execute-step9
    :parameters (?s - step) :duration (= ?duration 15)
    :condition (and (at start (pending9 ?s)) (at start (done32)) (at start (done46)) (at start (done51)) (at start (done77)))
    :effect (and (at start (not (pending9 ?s))) (at end (step_done ?s)) (at end (done9))))
  (:durative-action execute-step10
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (pending10 ?s)) (at start (done12)) (at start (done19)) (at start (done27)) (at start (done38)) (at start (done45)) (at start (done68)) (at start (done69)))
    :effect (and (at start (not (pending10 ?s))) (at end (step_done ?s)) (at end (done10))))
  (:durative-action execute-step11
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending11 ?s)) (at start (done19)) (at start (done20)))
    :effect (and (at start (not (pending11 ?s))) (at end (step_done ?s)) (at end (done11))))
  (:durative-action execute-step12
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (pending12 ?s)) (at start (done80)) (at start (done87)))
    :effect (and (at start (not (pending12 ?s))) (at end (step_done ?s)) (at end (done12))))
  (:durative-action execute-step13
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (pending13 ?s)) (at start (done31)) (at start (done73)) (at start (done84)))
    :effect (and (at start (not (pending13 ?s))) (at end (step_done ?s)) (at end (done13))))
  (:durative-action execute-step14
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending14 ?s)) (at start (done36)))
    :effect (and (at start (not (pending14 ?s))) (at end (step_done ?s)) (at end (done14))))
  (:durative-action execute-step15
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending15 ?s)) (at start (done8)) (at start (done17)) (at start (done60)) (at start (done62)) (at start (done72)))
    :effect (and (at start (not (pending15 ?s))) (at end (step_done ?s)) (at end (done15))))
  (:durative-action execute-step16
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (pending16 ?s)) (at start (done12)) (at start (done36)))
    :effect (and (at start (not (pending16 ?s))) (at end (step_done ?s)) (at end (done16))))
  (:durative-action execute-step17
    :parameters (?s - step) :duration (= ?duration 20)
    :condition (and (at start (pending17 ?s)))
    :effect (and (at start (not (pending17 ?s))) (at end (step_done ?s)) (at end (done17))))
  (:durative-action execute-step18
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (pending18 ?s)) (at start (done2)) (at start (done16)) (at start (done24)) (at start (done59)) (at start (done64)) (at start (done65)))
    :effect (and (at start (not (pending18 ?s))) (at end (step_done ?s)) (at end (done18))))
  (:durative-action execute-step19
    :parameters (?s - step) :duration (= ?duration 15)
    :condition (and (at start (pending19 ?s)) (at start (done54)) (at start (done68)))
    :effect (and (at start (not (pending19 ?s))) (at end (step_done ?s)) (at end (done19))))
  (:durative-action execute-step20
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (pending20 ?s)) (at start (done51)) (at start (done68)))
    :effect (and (at start (not (pending20 ?s))) (at end (step_done ?s)) (at end (done20))))
  (:durative-action execute-step21
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (pending21 ?s)) (at start (done67)) (at start (done80)))
    :effect (and (at start (not (pending21 ?s))) (at end (step_done ?s)) (at end (done21))))
  (:durative-action execute-step22
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (pending22 ?s)))
    :effect (and (at start (not (pending22 ?s))) (at end (step_done ?s)) (at end (done22))))
  (:durative-action execute-step23
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (pending23 ?s)) (at start (done12)) (at start (done58)) (at start (done80)))
    :effect (and (at start (not (pending23 ?s))) (at end (step_done ?s)) (at end (done23))))
  (:durative-action execute-step24
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending24 ?s)) (at start (done12)) (at start (done23)) (at start (done54)) (at start (done84)))
    :effect (and (at start (not (pending24 ?s))) (at end (step_done ?s)) (at end (done24))))
  (:durative-action execute-step25
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending25 ?s)) (at start (done5)) (at start (done58)) (at start (done82)))
    :effect (and (at start (not (pending25 ?s))) (at end (step_done ?s)) (at end (done25))))
  (:durative-action execute-step26
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (pending26 ?s)) (at start (done59)))
    :effect (and (at start (not (pending26 ?s))) (at end (step_done ?s)) (at end (done26))))
  (:durative-action execute-step27
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending27 ?s)) (at start (done36)))
    :effect (and (at start (not (pending27 ?s))) (at end (step_done ?s)) (at end (done27))))
  (:durative-action execute-step28
    :parameters (?s - step) :duration (= ?duration 15)
    :condition (and (at start (pending28 ?s)) (at start (done17)) (at start (done62)))
    :effect (and (at start (not (pending28 ?s))) (at end (step_done ?s)) (at end (done28))))
  (:durative-action execute-step29
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending29 ?s)) (at start (done70)) (at start (done87)))
    :effect (and (at start (not (pending29 ?s))) (at end (step_done ?s)) (at end (done29))))
  (:durative-action execute-step30
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (pending30 ?s)) (at start (done21)) (at start (done34)) (at start (done35)) (at start (done55)))
    :effect (and (at start (not (pending30 ?s))) (at end (step_done ?s)) (at end (done30))))
  (:durative-action execute-step31
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (pending31 ?s)) (at start (done17)) (at start (done45)) (at start (done62)))
    :effect (and (at start (not (pending31 ?s))) (at end (step_done ?s)) (at end (done31))))
  (:durative-action execute-step32
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending32 ?s)))
    :effect (and (at start (not (pending32 ?s))) (at end (step_done ?s)) (at end (done32))))
  (:durative-action execute-step33
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (pending33 ?s)) (at start (done17)))
    :effect (and (at start (not (pending33 ?s))) (at end (step_done ?s)) (at end (done33))))
  (:durative-action execute-step34
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending34 ?s)) (at start (done7)) (at start (done9)) (at start (done18)) (at start (done54)))
    :effect (and (at start (not (pending34 ?s))) (at end (step_done ?s)) (at end (done34))))
  (:durative-action execute-step35
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (pending35 ?s)))
    :effect (and (at start (not (pending35 ?s))) (at end (step_done ?s)) (at end (done35))))
  (:durative-action execute-step36
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (pending36 ?s)))
    :effect (and (at start (not (pending36 ?s))) (at end (step_done ?s)) (at end (done36))))
  (:durative-action execute-step37
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending37 ?s)) (at start (done6)) (at start (done31)) (at start (done42)))
    :effect (and (at start (not (pending37 ?s))) (at end (step_done ?s)) (at end (done37))))
  (:durative-action execute-step38
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending38 ?s)) (at start (done21)) (at start (done24)) (at start (done55)) (at start (done57)) (at start (done73)))
    :effect (and (at start (not (pending38 ?s))) (at end (step_done ?s)) (at end (done38))))
  (:durative-action execute-step39
    :parameters (?s - step) :duration (= ?duration 3)
    :condition (and (at start (pending39 ?s)) (at start (done12)) (at start (done37)) (at start (done59)) (at start (done75)) (at start (done90)))
    :effect (and (at start (not (pending39 ?s))) (at end (step_done ?s)) (at end (done39))))
  (:durative-action execute-step40
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (pending40 ?s)) (at start (done28)) (at start (done56)) (at start (done59)) (at start (done62)))
    :effect (and (at start (not (pending40 ?s))) (at end (step_done ?s)) (at end (done40))))
  (:durative-action execute-step41
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending41 ?s)) (at start (done27)) (at start (done62)))
    :effect (and (at start (not (pending41 ?s))) (at end (step_done ?s)) (at end (done41))))
  (:durative-action execute-step42
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (pending42 ?s)))
    :effect (and (at start (not (pending42 ?s))) (at end (step_done ?s)) (at end (done42))))
  (:durative-action execute-step43
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending43 ?s)) (at start (done6)) (at start (done7)) (at start (done32)) (at start (done60)))
    :effect (and (at start (not (pending43 ?s))) (at end (step_done ?s)) (at end (done43))))
  (:durative-action execute-step44
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending44 ?s)) (at start (done1)) (at start (done5)) (at start (done10)) (at start (done57)) (at start (done68)) (at start (done74)) (at start (done88)))
    :effect (and (at start (not (pending44 ?s))) (at end (step_done ?s)) (at end (done44))))
  (:durative-action execute-step45
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (pending45 ?s)) (at start (done73)))
    :effect (and (at start (not (pending45 ?s))) (at end (step_done ?s)) (at end (done45))))
  (:durative-action execute-step46
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (pending46 ?s)) (at start (done77)) (at start (done82)))
    :effect (and (at start (not (pending46 ?s))) (at end (step_done ?s)) (at end (done46))))
  (:durative-action execute-step47
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending47 ?s)) (at start (done4)) (at start (done22)) (at start (done35)) (at start (done41)) (at start (done43)))
    :effect (and (at start (not (pending47 ?s))) (at end (step_done ?s)) (at end (done47))))
  (:durative-action execute-step48
    :parameters (?s - step) :duration (= ?duration 2)
    :condition (and (at start (pending48 ?s)) (at start (done72)))
    :effect (and (at start (not (pending48 ?s))) (at end (step_done ?s)) (at end (done48))))
  (:durative-action execute-step49
    :parameters (?s - step) :duration (= ?duration 2)
    :condition (and (at start (pending49 ?s)) (at start (done1)) (at start (done27)) (at start (done35)) (at start (done74)))
    :effect (and (at start (not (pending49 ?s))) (at end (step_done ?s)) (at end (done49))))
  (:durative-action execute-step50
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (pending50 ?s)) (at start (done11)) (at start (done13)) (at start (done21)) (at start (done86)))
    :effect (and (at start (not (pending50 ?s))) (at end (step_done ?s)) (at end (done50))))
  (:durative-action execute-step51
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending51 ?s)))
    :effect (and (at start (not (pending51 ?s))) (at end (step_done ?s)) (at end (done51))))
  (:durative-action execute-step52
    :parameters (?s - step) :duration (= ?duration 3)
    :condition (and (at start (pending52 ?s)) (at start (done32)) (at start (done67)))
    :effect (and (at start (not (pending52 ?s))) (at end (step_done ?s)) (at end (done52))))
  (:durative-action execute-step53
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending53 ?s)) (at start (done8)) (at start (done50)) (at start (done79)))
    :effect (and (at start (not (pending53 ?s))) (at end (step_done ?s)) (at end (done53))))
  (:durative-action execute-step54
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (pending54 ?s)) (at start (done5)))
    :effect (and (at start (not (pending54 ?s))) (at end (step_done ?s)) (at end (done54))))
  (:durative-action execute-step55
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending55 ?s)) (at start (done1)) (at start (done16)) (at start (done21)) (at start (done25)) (at start (done26)) (at start (done48)) (at start (done57)) (at start (done60)))
    :effect (and (at start (not (pending55 ?s))) (at end (step_done ?s)) (at end (done55))))
  (:durative-action execute-step56
    :parameters (?s - step) :duration (= ?duration 15)
    :condition (and (at start (pending56 ?s)))
    :effect (and (at start (not (pending56 ?s))) (at end (step_done ?s)) (at end (done56))))
  (:durative-action execute-step57
    :parameters (?s - step) :duration (= ?duration 2)
    :condition (and (at start (pending57 ?s)) (at start (done25)) (at start (done26)) (at start (done54)))
    :effect (and (at start (not (pending57 ?s))) (at end (step_done ?s)) (at end (done57))))
  (:durative-action execute-step58
    :parameters (?s - step) :duration (= ?duration 20)
    :condition (and (at start (pending58 ?s)) (at start (done7)))
    :effect (and (at start (not (pending58 ?s))) (at end (step_done ?s)) (at end (done58))))
  (:durative-action execute-step59
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (pending59 ?s)))
    :effect (and (at start (not (pending59 ?s))) (at end (step_done ?s)) (at end (done59))))
  (:durative-action execute-step60
    :parameters (?s - step) :duration (= ?duration 20)
    :condition (and (at start (pending60 ?s)) (at start (done22)) (at start (done35)) (at start (done56)))
    :effect (and (at start (not (pending60 ?s))) (at end (step_done ?s)) (at end (done60))))
  (:durative-action execute-step61
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (pending61 ?s)) (at start (done17)) (at start (done32)) (at start (done42)) (at start (done59)) (at start (done67)))
    :effect (and (at start (not (pending61 ?s))) (at end (step_done ?s)) (at end (done61))))
  (:durative-action execute-step62
    :parameters (?s - step) :duration (= ?duration 15)
    :condition (and (at start (pending62 ?s)) (at start (done59)))
    :effect (and (at start (not (pending62 ?s))) (at end (step_done ?s)) (at end (done62))))
  (:durative-action execute-step63
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (pending63 ?s)) (at start (done8)) (at start (done38)) (at start (done67)) (at start (done72)))
    :effect (and (at start (not (pending63 ?s))) (at end (step_done ?s)) (at end (done63))))
  (:durative-action execute-step64
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending64 ?s)) (at start (done5)) (at start (done77)))
    :effect (and (at start (not (pending64 ?s))) (at end (step_done ?s)) (at end (done64))))
  (:durative-action execute-step65
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (pending65 ?s)) (at start (done58)) (at start (done67)) (at start (done68)) (at start (done72)))
    :effect (and (at start (not (pending65 ?s))) (at end (step_done ?s)) (at end (done65))))
  (:durative-action execute-step66
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (pending66 ?s)) (at start (done31)) (at start (done81)))
    :effect (and (at start (not (pending66 ?s))) (at end (step_done ?s)) (at end (done66))))
  (:durative-action execute-step67
    :parameters (?s - step) :duration (= ?duration 15)
    :condition (and (at start (pending67 ?s)) (at start (done20)) (at start (done77)))
    :effect (and (at start (not (pending67 ?s))) (at end (step_done ?s)) (at end (done67))))
  (:durative-action execute-step68
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (pending68 ?s)))
    :effect (and (at start (not (pending68 ?s))) (at end (step_done ?s)) (at end (done68))))
  (:durative-action execute-step69
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (pending69 ?s)) (at start (done35)) (at start (done89)))
    :effect (and (at start (not (pending69 ?s))) (at end (step_done ?s)) (at end (done69))))
  (:durative-action execute-step70
    :parameters (?s - step) :duration (= ?duration 2)
    :condition (and (at start (pending70 ?s)) (at start (done25)) (at start (done60)) (at start (done65)) (at start (done90)))
    :effect (and (at start (not (pending70 ?s))) (at end (step_done ?s)) (at end (done70))))
  (:durative-action execute-step71
    :parameters (?s - step) :duration (= ?duration 2)
    :condition (and (at start (pending71 ?s)) (at start (done16)) (at start (done21)) (at start (done47)) (at start (done48)) (at start (done53)))
    :effect (and (at start (not (pending71 ?s))) (at end (step_done ?s)) (at end (done71))))
  (:durative-action execute-step72
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (pending72 ?s)) (at start (done6)) (at start (done22)) (at start (done75)) (at start (done80)) (at start (done84)))
    :effect (and (at start (not (pending72 ?s))) (at end (step_done ?s)) (at end (done72))))
  (:durative-action execute-step73
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (pending73 ?s)))
    :effect (and (at start (not (pending73 ?s))) (at end (step_done ?s)) (at end (done73))))
  (:durative-action execute-step74
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending74 ?s)) (at start (done27)) (at start (done84)))
    :effect (and (at start (not (pending74 ?s))) (at end (step_done ?s)) (at end (done74))))
  (:durative-action execute-step75
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending75 ?s)) (at start (done12)))
    :effect (and (at start (not (pending75 ?s))) (at end (step_done ?s)) (at end (done75))))
  (:durative-action execute-step76
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (pending76 ?s)) (at start (done1)) (at start (done8)) (at start (done28)) (at start (done47)))
    :effect (and (at start (not (pending76 ?s))) (at end (step_done ?s)) (at end (done76))))
  (:durative-action execute-step77
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending77 ?s)) (at start (done51)) (at start (done58)))
    :effect (and (at start (not (pending77 ?s))) (at end (step_done ?s)) (at end (done77))))
  (:durative-action execute-step78
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (pending78 ?s)) (at start (done3)) (at start (done6)) (at start (done7)) (at start (done34)) (at start (done40)))
    :effect (and (at start (not (pending78 ?s))) (at end (step_done ?s)) (at end (done78))))
  (:durative-action execute-step79
    :parameters (?s - step) :duration (= ?duration 2)
    :condition (and (at start (pending79 ?s)) (at start (done23)) (at start (done24)) (at start (done35)) (at start (done60)) (at start (done80)))
    :effect (and (at start (not (pending79 ?s))) (at end (step_done ?s)) (at end (done79))))
  (:durative-action execute-step80
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (pending80 ?s)))
    :effect (and (at start (not (pending80 ?s))) (at end (step_done ?s)) (at end (done80))))
  (:durative-action execute-step81
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (pending81 ?s)) (at start (done87)))
    :effect (and (at start (not (pending81 ?s))) (at end (step_done ?s)) (at end (done81))))
  (:durative-action execute-step82
    :parameters (?s - step) :duration (= ?duration 15)
    :condition (and (at start (pending82 ?s)))
    :effect (and (at start (not (pending82 ?s))) (at end (step_done ?s)) (at end (done82))))
  (:durative-action execute-step83
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (pending83 ?s)) (at start (done5)) (at start (done14)) (at start (done42)) (at start (done80)))
    :effect (and (at start (not (pending83 ?s))) (at end (step_done ?s)) (at end (done83))))
  (:durative-action execute-step84
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending84 ?s)) (at start (done16)) (at start (done43)) (at start (done46)) (at start (done59)) (at start (done60)) (at start (done90)))
    :effect (and (at start (not (pending84 ?s))) (at end (step_done ?s)) (at end (done84))))
  (:durative-action execute-step85
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending85 ?s)) (at start (done81)) (at start (done82)))
    :effect (and (at start (not (pending85 ?s))) (at end (step_done ?s)) (at end (done85))))
  (:durative-action execute-step86
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending86 ?s)))
    :effect (and (at start (not (pending86 ?s))) (at end (step_done ?s)) (at end (done86))))
  (:durative-action execute-step87
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (pending87 ?s)))
    :effect (and (at start (not (pending87 ?s))) (at end (step_done ?s)) (at end (done87))))
  (:durative-action execute-step88
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending88 ?s)) (at start (done19)) (at start (done46)) (at start (done65)) (at start (done68)) (at start (done75)) (at start (done79)) (at start (done81)))
    :effect (and (at start (not (pending88 ?s))) (at end (step_done ?s)) (at end (done88))))
  (:durative-action execute-step89
    :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (pending89 ?s)) (at start (done37)))
    :effect (and (at start (not (pending89 ?s))) (at end (step_done ?s)) (at end (done89))))
  (:durative-action execute-step90
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (pending90 ?s)) (at start (done31)) (at start (done56)) (at start (done58)) (at start (done87)))
    :effect (and (at start (not (pending90 ?s))) (at end (step_done ?s)) (at end (done90))))
)