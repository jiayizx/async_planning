(define (domain get-dog)
  (:requirements :typing :durative-actions)
  (:types
    step
    step1-type step2-type step3-type step4-type step5-type
    step6-type step7-type step8-type step9-type step10-type
    step11-type step12-type step13-type step14-type step15-type
    step16-type step17-type step18-type step19-type step20-type
    step21-type step22-type step23-type step24-type step25-type
    step26-type step27-type step28-type step29-type step30-type - step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
    (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
    (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30))

  (:durative-action research-dog-breeds
    :parameters (?s - step1-type)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (d28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))

  (:durative-action purchase-leash-and-collar
    :parameters (?s - step2-type)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))

  (:durative-action select-specific-breed
    :parameters (?s - step3-type)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (d1)) (at start (d28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))

  (:durative-action submit-adoption-application
    :parameters (?s - step4-type)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))

  (:durative-action find-local-shelters
    :parameters (?s - step5-type)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (d23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))

  (:durative-action buy-puppy-food
    :parameters (?s - step6-type)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (d9)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))

  (:durative-action schedule-vet-exam
    :parameters (?s - step7-type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d5)) (at start (d20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))

  (:durative-action clear-living-room-space
    :parameters (?s - step8-type)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))

  (:durative-action purchase-food-water-bowls
    :parameters (?s - step9-type)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))

  (:durative-action participate-phone-interview
    :parameters (?s - step10-type)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (d4)) (at start (d17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))

  (:durative-action read-puppy-training-book
    :parameters (?s - step11-type)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (d22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))

  (:durative-action buy-dog-crate
    :parameters (?s - step12-type)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))

  (:durative-action install-baby-gate
    :parameters (?s - step13-type)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))

  (:durative-action purchase-chew-toys
    :parameters (?s - step14-type)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (d5)) (at start (d21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))

  (:durative-action set-up-sleeping-eating-area
    :parameters (?s - step15-type)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d8)) (at start (d10)) (at start (d12)) (at start (d13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))

  (:durative-action visit-shelter
    :parameters (?s - step16-type)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (d5)) (at start (d17)) (at start (d28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))

  (:durative-action check-personal-references
    :parameters (?s - step17-type)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (d3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))

  (:durative-action buy-grooming-supplies
    :parameters (?s - step18-type)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (d9)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))

  (:durative-action watch-leash-walking-videos
    :parameters (?s - step19-type)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (d11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))

  (:durative-action undergo-home-inspection
    :parameters (?s - step20-type)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (d8)) (at start (d12)) (at start (d18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))

  (:durative-action research-dog-treats
    :parameters (?s - step21-type)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))

  (:durative-action search-training-classes
    :parameters (?s - step22-type)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))

  (:durative-action discuss-with-family
    :parameters (?s - step23-type)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))

  (:durative-action buy-identification-tag
    :parameters (?s - step24-type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d2)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))

  (:durative-action check-pet-ordinances
    :parameters (?s - step25-type)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))

  (:durative-action purchase-heartworm-preventative
    :parameters (?s - step26-type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))

  (:durative-action sign-adoption-contract
    :parameters (?s - step27-type)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d19)) (at start (d29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))

  (:durative-action determine-pet-budget
    :parameters (?s - step28-type)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))

  (:durative-action pay-adoption-fee
    :parameters (?s - step29-type)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))

  (:durative-action pick-up-dog
    :parameters (?s - step30-type)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))
)