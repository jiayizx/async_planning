(define (domain pet-adoption)
  (:requirements :typing :durative-actions)
  (:types
    step - object
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30 - step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (c1) (c2) (c3) (c4) (c5) (c6) (c7) (c8) (c9) (c10)
    (c11) (c12) (c13) (c14) (c15) (c16) (c17) (c18) (c19) (c20)
    (c21) (c22) (c23) (c24) (c25) (adoption_announced) (c27) (c28) (c29) (c30))

  (:durative-action research-shelters
    :parameters (?s - step1)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (c7)) (at start (c27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c1))))

  (:durative-action purchase-pet-crate
    :parameters (?s - step2)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (c3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c2))))

  (:durative-action measure-floor-space
    :parameters (?s - step3)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c3))))

  (:durative-action buy-pet-food
    :parameters (?s - step4)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (c15)) (at start (c19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c4))))

  (:durative-action install-pet-door
    :parameters (?s - step5)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (c10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c5))))

  (:durative-action finalize-adoption
    :parameters (?s - step6)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (c14)) (at start (c24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c6))))

  (:durative-action discuss-family-preferences
    :parameters (?s - step7)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c7))))

  (:durative-action set-up-sleeping-area
    :parameters (?s - step8)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (c21)) (at start (c22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c8))))

  (:durative-action submit-interest-form
    :parameters (?s - step9)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c9))))

  (:durative-action schedule-home-inspection
    :parameters (?s - step10)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (c17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c10))))

  (:durative-action await-background-check
    :parameters (?s - step11)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (c9)) (at start (c19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c11))))

  (:durative-action register-microchip
    :parameters (?s - step12)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (c14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c12))))

  (:durative-action attend-ownership-webinar
    :parameters (?s - step13)
    :duration (= ?duration 5400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c13))))

  (:durative-action conduct-meet-and-greet
    :parameters (?s - step14)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (c20)) (at start (c21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c14))))

  (:durative-action research-breed-nutrition
    :parameters (?s - step15)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c15))))

  (:durative-action browse-animal-galleries
    :parameters (?s - step16)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (c27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c16))))

  (:durative-action visit-shelter
    :parameters (?s - step17)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (c1)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c17))))

  (:durative-action provide-references
    :parameters (?s - step18)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c18))))

  (:durative-action consult-veterinarian
    :parameters (?s - step19)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c19))))

  (:durative-action repair-fencing
    :parameters (?s - step20)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (c10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c20))))

  (:durative-action await-committee-review
    :parameters (?s - step21)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (c9)) (at start (c13)) (at start (c18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c21))))

  (:durative-action assemble-enrichment-items
    :parameters (?s - step22)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (c2)) (at start (c4)) (at start (c28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c22))))

  (:durative-action buy-leash-and-harness
    :parameters (?s - step23)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (c3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c23))))

  (:durative-action pet-proof-house
    :parameters (?s - step24)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (c8)) (at start (c13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c24))))

  (:durative-action schedule-wellness-exam
    :parameters (?s - step25)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (c28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c25))))

  (:durative-action post-pet-photo
    :parameters (?s - step26)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (c30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (adoption_announced))))

  (:durative-action determine-pet-budget
    :parameters (?s - step27)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c27))))

  (:durative-action shop-for-grooming-supplies
    :parameters (?s - step28)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (c4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c28))))

  (:durative-action clear-potty-area
    :parameters (?s - step29)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (c3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c29))))

  (:durative-action take-gotcha-day-photo
    :parameters (?s - step30)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c30))))
)