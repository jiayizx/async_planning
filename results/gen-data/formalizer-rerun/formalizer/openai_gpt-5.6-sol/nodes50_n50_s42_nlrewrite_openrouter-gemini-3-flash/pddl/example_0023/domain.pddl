; The reported /dev/loop8 failure is an Apptainer container/runtime error.
; OPTIC did not reach PDDL parsing, so it does not identify a PDDL syntax error.
; This compact version preserves all durations and complete predecessor AND-joins.
(define (domain write-song)
 (:requirements :typing :durative-actions)
 (:types t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t40 t41 t42 t43 t44 t45 t46 t47 t48 t49 t50 - step step)
 (:predicates
  (step_pending ?x - step) (step_done ?x - step)
  (s1)(s2)(s3)(s4)(s5)(s6)(s7)(s8)(s9)(s10)
  (s11)(s12)(s13)(s14)(s15)(s16)(s17)(s18)(s19)(s20)
  (s21)(s22)(s23)(s24)(s25)(s26)(s27)(s28)(s29)(s30)
  (s31)(s32)(s33)(s34)(s35)(s36)(s37)(s38)(s39)(s40)
  (s41)(s42)(s43)(s44)(s45)(s46)(s47)(s48)(s49)(song_uploaded))

 (:durative-action step1-draft-bridge
  :parameters (?x - t1) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?x)) (at start (s24)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s1))))
 (:durative-action step2-program-drums
  :parameters (?x - t2) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?x)) (at start (s16)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s2))))
 (:durative-action step3-record-rhythm-guitar
  :parameters (?x - t3) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (s22)) (at start (s39)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s3))))
 (:durative-action step4-finalize-master
  :parameters (?x - t4) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?x)) (at start (s28)) (at start (s42)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s4))))
 (:durative-action step5-mix-vocals
  :parameters (?x - t5) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?x)) (at start (s9)) (at start (s13)) (at start (s21)) (at start (s25)) (at start (s34)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s5))))
 (:durative-action step6-research-studios
  :parameters (?x - t6) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (s15)) (at start (s20)) (at start (s48)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s6))))
 (:durative-action step7-choose-key
  :parameters (?x - t7) :duration (= ?duration 300)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s7))))
 (:durative-action step8-rent-microphone
  :parameters (?x - t8) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?x)) (at start (s48)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s8))))
 (:durative-action step9-brainstorm-theme
  :parameters (?x - t9) :duration (= ?duration 1800)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s9))))
 (:durative-action step10-write-first-verse
  :parameters (?x - t10) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?x)) (at start (s6)) (at start (s22)) (at start (s26)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s10))))
 (:durative-action step11-register-song
  :parameters (?x - t11) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (s35)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s11))))
 (:durative-action step12-buy-strings
  :parameters (?x - t12) :duration (= ?duration 1800)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s12))))
 (:durative-action step13-compose-melody
  :parameters (?x - t13) :duration (= ?duration 5400)
  :condition (and (at start (step_pending ?x)) (at start (s10)) (at start (s17)) (at start (s31)) (at start (s36)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s13))))
 (:durative-action step14-record-bass
  :parameters (?x - t14) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?x)) (at start (s16)) (at start (s26)) (at start (s39)) (at start (s47)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s14))))
 (:durative-action step15-book-engineer
  :parameters (?x - t15) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (s19)) (at start (s26)) (at start (s40)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s15))))
 (:durative-action step16-decide-tempo
  :parameters (?x - t16) :duration (= ?duration 300)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s16))))
 (:durative-action step17-sketch-chords
  :parameters (?x - t17) :duration (= ?duration 1200)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s17))))
 (:durative-action step18-check-budget
  :parameters (?x - t18) :duration (= ?duration 900)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s18))))
 (:durative-action step19-find-musicians
  :parameters (?x - t19) :duration (= ?duration 3600)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s19))))
 (:durative-action step20-write-chorus
  :parameters (?x - t20) :duration (= ?duration 5400)
  :condition (and (at start (step_pending ?x)) (at start (s22)) (at start (s29)) (at start (s48)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s20))))
 (:durative-action step21-compress-vocals
  :parameters (?x - t21) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (s37)) (at start (s38)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s21))))
 (:durative-action step22-hum-hooks
  :parameters (?x - t22) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?x)) (at start (s41)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s22))))
 (:durative-action step23-find-quiet-space
  :parameters (?x - t23) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (s44)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s23))))
 (:durative-action step24-outline-structure
  :parameters (?x - t24) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (s17)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s24))))
 (:durative-action step25-record-lead-vocal
  :parameters (?x - t25) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?x)) (at start (s7)) (at start (s35)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s25))))
 (:durative-action step26-select-instrument
  :parameters (?x - t26) :duration (= ?duration 600)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s26))))
 (:durative-action step27-design-cover-art
  :parameters (?x - t27) :duration (= ?duration 18000)
  :condition (and (at start (step_pending ?x)) (at start (s7)) (at start (s31)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s27))))
 (:durative-action step28-record-backing-vocals
  :parameters (?x - t28) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?x)) (at start (s7)) (at start (s14)) (at start (s31)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s28))))
 (:durative-action step29-write-second-verse
  :parameters (?x - t29) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?x)) (at start (s22)) (at start (s46)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s29))))
 (:durative-action step30-create-demo
  :parameters (?x - t30) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (s1)) (at start (s16)) (at start (s35)) (at start (s47)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s30))))
 (:durative-action step31-refine-rhymes
  :parameters (?x - t31) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (s49)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s31))))
 (:durative-action step32-record-percussion
  :parameters (?x - t32) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?x)) (at start (s8)) (at start (s38)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s32))))
 (:durative-action step33-polish-chorus
  :parameters (?x - t33) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (s20)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s33))))
 (:durative-action step34-record-synths
  :parameters (?x - t34) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?x)) (at start (s3)) (at start (s29)) (at start (s44)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s34))))
 (:durative-action step35-edit-takes
  :parameters (?x - t35) :duration (= ?duration 21600)
  :condition (and (at start (step_pending ?x)) (at start (s33)) (at start (s41)) (at start (s44)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s35))))
 (:durative-action step36-write-intro-outro
  :parameters (?x - t36) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (s49)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s36))))
 (:durative-action step37-record-scratch-vocal
  :parameters (?x - t37) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (s10)) (at start (s40)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s37))))
 (:durative-action step38-change-strings
  :parameters (?x - t38) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (s12)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s38))))
 (:durative-action step39-improvise-solo
  :parameters (?x - t39) :duration (= ?duration 3600)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s39))))
 (:durative-action step40-setup-project
  :parameters (?x - t40) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (s23)) (at start (s41)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s40))))
 (:durative-action step41-write-phrases
  :parameters (?x - t41) :duration (= ?duration 2400)
  :condition (and (at start (step_pending ?x)) (at start (s9)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s41))))
 (:durative-action step42-final-mixdown
  :parameters (?x - t42) :duration (= ?duration 18000)
  :condition (and (at start (step_pending ?x)) (at start (s5)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s42))))
 (:durative-action step43-practice-piano
  :parameters (?x - t43) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?x)) (at start (s7)) (at start (s22)) (at start (s25)) (at start (s26)) (at start (s39)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s43))))
 (:durative-action step44-browse-libraries
  :parameters (?x - t44) :duration (= ?duration 3600)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s44))))
 (:durative-action step45-add-effects
  :parameters (?x - t45) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (s3)) (at start (s17)) (at start (s31)) (at start (s34)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s45))))
 (:durative-action step46-layer-drums
  :parameters (?x - t46) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?x)) (at start (s2)) (at start (s14)) (at start (s15)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s46))))
 (:durative-action step47-choose-project-title
  :parameters (?x - t47) :duration (= ?duration 600)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s47))))
 (:durative-action step48-gather-inspiration
  :parameters (?x - t48) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?x)) (at start (s18)) (at start (s19)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s48))))
 (:durative-action step49-choose-song-title
  :parameters (?x - t49) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (s9)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s49))))
 (:durative-action step50-upload-song
  :parameters (?x - t50) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (s1)) (at start (s36)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (song_uploaded))))
)