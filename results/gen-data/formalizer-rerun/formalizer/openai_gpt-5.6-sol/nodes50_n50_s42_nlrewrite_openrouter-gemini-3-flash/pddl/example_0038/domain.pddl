(define (domain canine-fertility)
 (:requirements :typing :durative-actions)
 (:types step - object s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 - step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49)
  (fertility_determined))

 (:durative-action research-specialists
  :parameters (?s - s1) :duration (= ?duration 7200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))
 (:durative-action schedule-examination
  :parameters (?s - s2) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d11)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))
 (:durative-action perform-ultrasound
  :parameters (?s - s3) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (d20)) (at start (d39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))
 (:durative-action review-medical-history
  :parameters (?s - s4) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (d40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))
 (:durative-action collect-semen-sample
  :parameters (?s - s5) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d20)) (at start (d41)) (at start (d43)) (at start (d44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))
 (:durative-action conduct-health-checkup
  :parameters (?s - s6) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))
 (:durative-action purchase-slides
  :parameters (?s - s7) :duration (= ?duration 3600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))
 (:durative-action sanitize-equipment
  :parameters (?s - s8) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (d7)) (at start (d30)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))
 (:durative-action calibrate-software
  :parameters (?s - s9) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d16)) (at start (d31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))
 (:durative-action prepare-water-bath
  :parameters (?s - s10) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d8)) (at start (d17)) (at start (d23)) (at start (d44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))
 (:durative-action initial-consultation
  :parameters (?s - s11) :duration (= ?duration 1800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))
 (:durative-action transfer-sample
  :parameters (?s - s12) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d5)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))
 (:durative-action centrifuge-sample
  :parameters (?s - s13) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d17)) (at start (d21)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))
 (:durative-action check-brucellosis
  :parameters (?s - s14) :duration (= ?duration 259200)
  :condition (and (at start (step_pending ?s)) (at start (d4)) (at start (d19)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))
 (:durative-action stain-sperm-smear
  :parameters (?s - s15) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (d31)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))
 (:durative-action secure-collection-room
  :parameters (?s - s16) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))
 (:durative-action order-fertility-panel
  :parameters (?s - s17) :duration (= ?duration 1200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))
 (:durative-action verify-pedigree
  :parameters (?s - s18) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (d11)) (at start (d16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))
 (:durative-action draw-testosterone-blood
  :parameters (?s - s19) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d10)) (at start (d22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))
 (:durative-action introduce-teaser-bitch
  :parameters (?s - s20) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (d31)) (at start (d35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))
 (:durative-action pay-processing-fees
  :parameters (?s - s21) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d17)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))
 (:durative-action measure-scrotal-circumference
  :parameters (?s - s22) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))
 (:durative-action administer-supplement
  :parameters (?s - s23) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (d4)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))
 (:durative-action label-vials
  :parameters (?s - s24) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d1)) (at start (d8)) (at start (d9)) (at start (d30)) (at start (d44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))
 (:durative-action disinfect-collection-area
  :parameters (?s - s25) :duration (= ?duration 2400)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))
 (:durative-action prewarm-collection-cone
  :parameters (?s - s26) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d11)) (at start (d24)) (at start (d31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))
 (:durative-action record-ejaculate-volume
  :parameters (?s - s27) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d13)) (at start (d20)) (at start (d23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))
 (:durative-action setup-microscope
  :parameters (?s - s28) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d25)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))
 (:durative-action evaluate-color-viscosity
  :parameters (?s - s29) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d6)) (at start (d16)) (at start (d44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))
 (:durative-action lay-out-gloves
  :parameters (?s - s30) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d25)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))
 (:durative-action prepare-collection-kit
  :parameters (?s - s31) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d31))))
 (:durative-action regulate-room-temperature
  :parameters (?s - s32) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d25)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d32))))
 (:durative-action analyze-ph
  :parameters (?s - s33) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d10)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d33))))
 (:durative-action check-libido
  :parameters (?s - s34) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (d11)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d34))))
 (:durative-action verify-heat-cycle
  :parameters (?s - s35) :duration (= ?duration 7200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d35))))
 (:durative-action evaluate-morphology
  :parameters (?s - s36) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (d38)) (at start (d43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d36))))
 (:durative-action examine-prostate
  :parameters (?s - s37) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d6)) (at start (d22)) (at start (d30)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d37))))
 (:durative-action prepare-report-template
  :parameters (?s - s38) :duration (= ?duration 900)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d38))))
 (:durative-action review-breeding-records
  :parameters (?s - s39) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (d17)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d39))))
 (:durative-action obtain-owner-consent
  :parameters (?s - s40) :duration (= ?duration 600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d40))))
 (:durative-action palpate-testes
  :parameters (?s - s41) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d34)) (at start (d35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d41))))
 (:durative-action assess-motility
  :parameters (?s - s42) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (d4)) (at start (d15)) (at start (d22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d42))))
 (:durative-action count-sperm
  :parameters (?s - s43) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d3)) (at start (d20)) (at start (d42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d43))))
 (:durative-action observe-gait
  :parameters (?s - s44) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (d6)) (at start (d11)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d44))))
 (:durative-action document-secondary-fraction
  :parameters (?s - s45) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d45))))
 (:durative-action check-microchip
  :parameters (?s - s46) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d46))))
 (:durative-action organize-medical-files
  :parameters (?s - s47) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d7)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d47))))
 (:durative-action note-environmental-factors
  :parameters (?s - s48) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d48))))
 (:durative-action seal-backup-sample
  :parameters (?s - s49) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d1)) (at start (d13)) (at start (d26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d49))))
 (:durative-action final-veterinary-review
  :parameters (?s - s50) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d28)) (at start (d31)) (at start (d39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fertility_determined))))
)