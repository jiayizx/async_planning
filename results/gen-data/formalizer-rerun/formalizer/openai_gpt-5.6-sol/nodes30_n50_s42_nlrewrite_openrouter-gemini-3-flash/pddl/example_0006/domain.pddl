(define (domain play-sport)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (slot1 ?s - step) (slot2 ?s - step) (slot3 ?s - step)
    (slot4 ?s - step) (slot5 ?s - step) (slot6 ?s - step)
    (slot7 ?s - step) (slot8 ?s - step) (slot9 ?s - step)
    (slot10 ?s - step) (slot11 ?s - step) (slot12 ?s - step)
    (slot13 ?s - step) (slot14 ?s - step) (slot15 ?s - step)
    (slot16 ?s - step) (slot17 ?s - step) (slot18 ?s - step)
    (slot19 ?s - step) (slot20 ?s - step) (slot21 ?s - step)
    (slot22 ?s - step) (slot23 ?s - step) (slot24 ?s - step)
    (slot25 ?s - step) (slot26 ?s - step) (slot27 ?s - step)
    (slot28 ?s - step) (slot29 ?s - step) (slot30 ?s - step)
    (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
    (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
    (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
  )

  (:durative-action purchase-footwear
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (slot1 ?s)) (at start (p4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))

  (:durative-action review-rulebook
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (slot2 ?s)) (at start (p23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))

  (:durative-action rent-practice-field
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (slot3 ?s)) (at start (p14)) (at start (p16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))

  (:durative-action research-local-leagues
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (slot4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))

  (:durative-action attend-orientation
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (slot5 ?s)) (at start (p25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))

  (:durative-action sign-liability-waiver
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (slot6 ?s)) (at start (p17)) (at start (p23)) (at start (p25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))

  (:durative-action set-up-field
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (slot7 ?s)) (at start (p3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))

  (:durative-action buy-ball-and-pump
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (slot8 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))

  (:durative-action fill-water-bottles
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (slot9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))

  (:durative-action register-season
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (slot10 ?s)) (at start (p4)) (at start (p8)) (at start (p25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))

  (:durative-action pack-gym-bag
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (slot11 ?s)) (at start (p14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))

  (:durative-action drive-to-complex
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (slot12 ?s)) (at start (p9)) (at start (p11)) (at start (p26)) (at start (p27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))

  (:durative-action apply-membership-card
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (slot13 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))

  (:durative-action pay-participation-fees
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (slot14 ?s)) (at start (p13)) (at start (p19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))

  (:durative-action put-on-uniform
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (slot15 ?s)) (at start (p8)) (at start (p13)) (at start (p25)) (at start (p26)) (at start (p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))

  (:durative-action check-weather
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (slot16 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))

  (:durative-action schedule-physical
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (slot17 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))

  (:durative-action watch-instructional-videos
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (slot18 ?s)) (at start (p22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))

  (:durative-action receive-team-assignment
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (slot19 ?s)) (at start (p5)) (at start (p10)) (at start (p27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))

  (:durative-action meet-the-coach
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (slot20 ?s)) (at start (p10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))

  (:durative-action search-for-team
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (slot21 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))

  (:durative-action practice-drills
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (slot22 ?s)) (at start (p28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))

  (:durative-action join-group-chat
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (slot23 ?s)) (at start (p21)) (at start (p28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))

  (:durative-action invite-friends
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (slot24 ?s)) (at start (p4)) (at start (p10)) (at start (p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))

  (:durative-action complete-safety-course
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (slot25 ?s)) (at start (p21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))

  (:durative-action buy-protective-equipment
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (slot26 ?s)) (at start (p25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))

  (:durative-action undergo-medical-checkup
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (slot27 ?s)) (at start (p17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))

  (:durative-action purchase-team-jersey
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (slot28 ?s)) (at start (p27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))

  (:durative-action map-route-to-stadium
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (slot29 ?s)) (at start (p4)) (at start (p13)) (at start (p18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))

  (:durative-action perform-warm-up
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (slot30 ?s)) (at start (p23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))
)