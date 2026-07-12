(define (domain soccer-improvement)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates
  (pending ?s - step) (done ?s - step)
  (slot1 ?s - step) (slot2 ?s - step) (slot3 ?s - step) (slot4 ?s - step) (slot5 ?s - step)
  (slot6 ?s - step) (slot7 ?s - step) (slot8 ?s - step) (slot9 ?s - step) (slot10 ?s - step)
  (slot11 ?s - step) (slot12 ?s - step) (slot13 ?s - step) (slot14 ?s - step) (slot15 ?s - step)
  (slot16 ?s - step) (slot17 ?s - step) (slot18 ?s - step) (slot19 ?s - step) (slot20 ?s - step)
  (slot21 ?s - step) (slot22 ?s - step) (slot23 ?s - step) (slot24 ?s - step) (slot25 ?s - step)
  (slot26 ?s - step) (slot27 ?s - step) (slot28 ?s - step) (slot29 ?s - step) (slot30 ?s - step)
  (slot31 ?s - step) (slot32 ?s - step) (slot33 ?s - step) (slot34 ?s - step) (slot35 ?s - step)
  (slot36 ?s - step) (slot37 ?s - step) (slot38 ?s - step) (slot39 ?s - step) (slot40 ?s - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40))

 (:durative-action purchase-match-ball
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (pending ?s)) (at start (slot1 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d1))))
 (:durative-action research-local-leagues
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (pending ?s)) (at start (slot2 ?s)) (at start (d7)) (at start (d9)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d2))))
 (:durative-action register-weekend-tournament
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (pending ?s)) (at start (slot3 ?s)) (at start (d31)) (at start (d40)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d3))))
 (:durative-action buy-cleats-and-guards
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (pending ?s)) (at start (slot4 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d4))))
 (:durative-action practice-long-kicks
  :parameters (?s - step) :duration (= ?duration 5400)
  :condition (and (at start (pending ?s)) (at start (slot5 ?s)) (at start (d23)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d5))))
 (:durative-action attend-team-tryout
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (pending ?s)) (at start (slot6 ?s)) (at start (d2)) (at start (d20)) (at start (d33)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d6))))
 (:durative-action watch-match-highlights
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (pending ?s)) (at start (slot7 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d7))))
 (:durative-action join-sports-gym
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (pending ?s)) (at start (slot8 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d8))))
 (:durative-action consult-coach
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (pending ?s)) (at start (slot9 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d9))))
 (:durative-action attend-ball-handling-clinic
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (pending ?s)) (at start (slot10 ?s)) (at start (d1)) (at start (d31)) (at start (d32)) (at start (d36)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d10))))
 (:durative-action start-hiit-program
  :parameters (?s - step) :duration (= ?duration 2419200)
  :condition (and (at start (pending ?s)) (at start (slot11 ?s)) (at start (d38)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d11))))
 (:durative-action develop-nutrition-plan
  :parameters (?s - step) :duration (= ?duration 259200)
  :condition (and (at start (pending ?s)) (at start (slot12 ?s)) (at start (d9)) (at start (d17)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d12))))
 (:durative-action study-fifa-rulebook
  :parameters (?s - step) :duration (= ?duration 18000)
  :condition (and (at start (pending ?s)) (at start (slot13 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d13))))
 (:durative-action break-in-cleats
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (pending ?s)) (at start (slot14 ?s)) (at start (d4)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d14))))
 (:durative-action practice-cone-dribbling
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (pending ?s)) (at start (slot15 ?s)) (at start (d14)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d15))))
 (:durative-action watch-defensive-tutorials
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (pending ?s)) (at start (slot16 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d16))))
 (:durative-action schedule-physical-checkup
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (pending ?s)) (at start (slot17 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d17))))
 (:durative-action practice-corner-kicks
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (pending ?s)) (at start (slot18 ?s)) (at start (d33)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d18))))
 (:durative-action play-full-scrimmage
  :parameters (?s - step) :duration (= ?duration 5400)
  :condition (and (at start (pending ?s)) (at start (slot19 ?s)) (at start (d1)) (at start (d6)) (at start (d13)) (at start (d14)) (at start (d27)) (at start (d28)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d19))))
 (:durative-action dynamic-stretching
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (pending ?s)) (at start (slot20 ?s)) (at start (d18)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d20))))
 (:durative-action clean-soccer-gear
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (pending ?s)) (at start (slot21 ?s)) (at start (d1)) (at start (d37)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d21))))
 (:durative-action complete-stamina-marathon
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (pending ?s)) (at start (slot22 ?s)) (at start (d11)) (at start (d34)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d22))))
 (:durative-action lower-body-strength-training
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (pending ?s)) (at start (slot23 ?s)) (at start (d8)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d23))))
 (:durative-action buy-portable-net
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (pending ?s)) (at start (slot24 ?s)) (at start (d31)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d24))))
 (:durative-action practice-penalty-shootouts
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (pending ?s)) (at start (slot25 ?s)) (at start (d14)) (at start (d26)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d25))))
 (:durative-action master-cruyff-turn
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (pending ?s)) (at start (slot26 ?s)) (at start (d5)) (at start (d15)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d26))))
 (:durative-action practice-short-passing
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (pending ?s)) (at start (slot27 ?s)) (at start (d17)) (at start (d20)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d27))))
 (:durative-action practice-one-touch-receiving
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (pending ?s)) (at start (slot28 ?s)) (at start (d27)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d28))))
 (:durative-action find-local-park
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (pending ?s)) (at start (slot29 ?s)) (at start (d40)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d29))))
 (:durative-action join-five-a-side-team
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (pending ?s)) (at start (slot30 ?s)) (at start (d2)) (at start (d25)) (at start (d35)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d30))))
 (:durative-action set-season-goals
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (pending ?s)) (at start (slot31 ?s)) (at start (d40)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d31))))
 (:durative-action watch-live-professional-game
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (pending ?s)) (at start (slot32 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d32))))
 (:durative-action practice-juggling
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (pending ?s)) (at start (slot33 ?s)) (at start (d4)) (at start (d24)) (at start (d29)) (at start (d35)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d33))))
 (:durative-action agility-ladder-drills
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (pending ?s)) (at start (slot34 ?s)) (at start (d8)) (at start (d17)) (at start (d40)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d34))))
 (:durative-action study-off-ball-movement
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (pending ?s)) (at start (slot35 ?s)) (at start (d16)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d35))))
 (:durative-action practice-headers
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (pending ?s)) (at start (slot36 ?s)) (at start (d8)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d36))))
 (:durative-action review-own-footage
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (pending ?s)) (at start (slot37 ?s)) (at start (d26)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d37))))
 (:durative-action buy-heart-rate-monitor
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (pending ?s)) (at start (slot38 ?s)) (at start (d8)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d38))))
 (:durative-action memorize-set-piece-plays
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (pending ?s)) (at start (slot39 ?s)) (at start (d13)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d39))))
 (:durative-action search-training-communities
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (pending ?s)) (at start (slot40 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (d40))))
)