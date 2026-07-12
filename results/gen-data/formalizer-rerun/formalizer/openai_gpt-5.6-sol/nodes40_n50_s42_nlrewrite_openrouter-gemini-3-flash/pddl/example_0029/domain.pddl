(define (domain chartreux-identification)
  (:requirements :typing :durative-actions)
  (:types
    step - object
    step1type step2type step3type step4type step5type step6type step7type step8type step9type step10type
    step11type step12type step13type step14type step15type step16type step17type step18type step19type step20type
    step21type step22type step23type step24type step25type step26type step27type step28type step29type step30type
    step31type step32type step33type step34type step35type step36type step37type step38type step39type step40type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
    (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
    (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
    (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
  )

  (:durative-action observe-eye-color
    :parameters (?s - step1type)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))

  (:durative-action check-muzzle-shape
    :parameters (?s - step2type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p13)) (at start (p14)) (at start (p22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))

  (:durative-action examine-paw-pads
    :parameters (?s - step3type)
    :duration (= ?duration 45)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))

  (:durative-action confirm-ear-placement
    :parameters (?s - step4type)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))

  (:durative-action inspect-nose-bridge
    :parameters (?s - step5type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))

  (:durative-action assess-muscular-build
    :parameters (?s - step6type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))

  (:durative-action feel-double-coat
    :parameters (?s - step7type)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))

  (:durative-action compare-facial-structure
    :parameters (?s - step8type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (p3)) (at start (p16)) (at start (p21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))

  (:durative-action verify-no-white-markings
    :parameters (?s - step9type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))

  (:durative-action weigh-cat
    :parameters (?s - step10type)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (p25)) (at start (p28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))

  (:durative-action comb-fur
    :parameters (?s - step11type)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (p7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))

  (:durative-action inspect-undercoat
    :parameters (?s - step12type)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (p7)) (at start (p26)) (at start (p33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))

  (:durative-action observe-gait
    :parameters (?s - step13type)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))

  (:durative-action check-tail-length
    :parameters (?s - step14type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))

  (:durative-action research-breeder-lineage
    :parameters (?s - step15type)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (p16)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))

  (:durative-action contact-breed-expert
    :parameters (?s - step16type)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))

  (:durative-action measure-chest-width
    :parameters (?s - step17type)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))

  (:durative-action inspect-tapered-limbs
    :parameters (?s - step18type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p25)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))

  (:durative-action evaluate-temperament
    :parameters (?s - step19type)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))

  (:durative-action finalize-identification-report
    :parameters (?s - step20type)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p3)) (at start (p16)) (at start (p36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))

  (:durative-action consult-veterinary-specialist
    :parameters (?s - step21type)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p7)) (at start (p9)) (at start (p14)) (at start (p27)) (at start (p28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))

  (:durative-action check-neck-length
    :parameters (?s - step22type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))

  (:durative-action test-water-repellent-fur
    :parameters (?s - step23type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))

  (:durative-action photograph-profile
    :parameters (?s - step24type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (p28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))

  (:durative-action place-on-examination-table
    :parameters (?s - step25type)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))

  (:durative-action inspect-blue-gray-shimmer
    :parameters (?s - step26type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))

  (:durative-action measure-shoulder-height
    :parameters (?s - step27type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))

  (:durative-action review-medical-records
    :parameters (?s - step28type)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))

  (:durative-action analyze-ear-size
    :parameters (?s - step29type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))

  (:durative-action locate-pedigree-papers
    :parameters (?s - step30type)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))

  (:durative-action check-eye-shape
    :parameters (?s - step31type)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))

  (:durative-action confirm-fine-boned-legs
    :parameters (?s - step32type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p12)) (at start (p17)) (at start (p19)) (at start (p28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))

  (:durative-action scan-microchip
    :parameters (?s - step33type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))

  (:durative-action interview-owner
    :parameters (?s - step34type)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p17)) (at start (p31)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))

  (:durative-action cross-reference-cfa
    :parameters (?s - step35type)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))

  (:durative-action inspect-forehead-profile
    :parameters (?s - step36type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p34)) (at start (p40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))

  (:durative-action read-pedigree-description
    :parameters (?s - step37type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))

  (:durative-action test-coat-break
    :parameters (?s - step38type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))

  (:durative-action ask-birth-date
    :parameters (?s - step39type)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))

  (:durative-action inspect-ghost-stripes
    :parameters (?s - step40type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p12)) (at start (p13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
)