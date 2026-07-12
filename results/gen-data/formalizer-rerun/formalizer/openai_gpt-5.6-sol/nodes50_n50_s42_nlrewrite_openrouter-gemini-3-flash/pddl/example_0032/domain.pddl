(define (domain soccer-team)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (role1 ?s - step) (role2 ?s - step) (role3 ?s - step) (role4 ?s - step) (role5 ?s - step)
    (role6 ?s - step) (role7 ?s - step) (role8 ?s - step) (role9 ?s - step) (role10 ?s - step)
    (role11 ?s - step) (role12 ?s - step) (role13 ?s - step) (role14 ?s - step) (role15 ?s - step)
    (role16 ?s - step) (role17 ?s - step) (role18 ?s - step) (role19 ?s - step) (role20 ?s - step)
    (role21 ?s - step) (role22 ?s - step) (role23 ?s - step) (role24 ?s - step) (role25 ?s - step)
    (role26 ?s - step) (role27 ?s - step) (role28 ?s - step) (role29 ?s - step) (role30 ?s - step)
    (role31 ?s - step) (role32 ?s - step) (role33 ?s - step) (role34 ?s - step) (role35 ?s - step)
    (role36 ?s - step) (role37 ?s - step) (role38 ?s - step) (role39 ?s - step) (role40 ?s - step)
    (role41 ?s - step) (role42 ?s - step) (role43 ?s - step) (role44 ?s - step) (role45 ?s - step)
    (role46 ?s - step) (role47 ?s - step) (role48 ?s - step) (role49 ?s - step) (role50 ?s - step)
    (done1) (done2) (done3) (team_joined) (done5) (done6) (done7) (done8) (done9) (done10)
    (done11) (done12) (done13) (done14) (done15) (done16) (done17) (done18) (done19) (done20)
    (done21) (done22) (done23) (done24) (done25) (done26) (done27) (done28) (done29) (done30)
    (done31) (done32) (done33) (done34) (done35) (done36) (done37) (done38) (done39) (done40)
    (done41) (done42) (done43) (done44) (done45) (done46) (done47) (done48) (done49) (done50)
  )

  (:durative-action step1-purchase-cleats
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (role1 ?s)) (at start (done16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done1))))
  (:durative-action step2-attend-orientation
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (role2 ?s)) (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done2))))
  (:durative-action step3-practice-penalty-kicks
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (role3 ?s)) (at start (done13)) (at start (done25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done3))))
  (:durative-action step4-submit-final-registration
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (role4 ?s)) (at start (done47)) (at start (done49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (team_joined))))
  (:durative-action step5-join-group-chat
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (role5 ?s)) (at start (done8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done5))))
  (:durative-action step6-complete-endurance-test
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (role6 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done6))))
  (:durative-action step7-attend-first-practice
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (role7 ?s)) (at start (done19)) (at start (done20)) (at start (done23)) (at start (done38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done7))))
  (:durative-action step8-obtain-medical-clearance
    :parameters (?s - step) :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (role8 ?s)) (at start (done10)) (at start (done47)) (at start (done48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done8))))
  (:durative-action step9-order-jerseys
    :parameters (?s - step) :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (role9 ?s)) (at start (done26)) (at start (done47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done9))))
  (:durative-action step10-schedule-physical
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (role10 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done10))))
  (:durative-action step11-research-clubs
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (role11 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done11))))
  (:durative-action step12-buy-soccer-ball
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (role12 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done12))))
  (:durative-action step13-register-skills-clinic
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (role13 ?s)) (at start (done28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done13))))
  (:durative-action step14-pick-up-uniform
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (role14 ?s)) (at start (done9)) (at start (done10)) (at start (done17)) (at start (done47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done14))))
  (:durative-action step15-watch-defensive-videos
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (role15 ?s)) (at start (done43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done15))))
  (:durative-action step16-complete-clinic-modules
    :parameters (?s - step) :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (role16 ?s)) (at start (done13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done16))))
  (:durative-action step17-pay-fees
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (role17 ?s)) (at start (done2)) (at start (done30)) (at start (done47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done17))))
  (:durative-action step18-practice-dribbling
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (role18 ?s)) (at start (done13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done18))))
  (:durative-action step19-review-playbook
    :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (role19 ?s)) (at start (done23)) (at start (done34)) (at start (done40)) (at start (done49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done19))))
  (:durative-action step20-agility-drills
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (role20 ?s)) (at start (done43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done20))))
  (:durative-action step21-purchase-shin-guards
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (role21 ?s)) (at start (done26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done21))))
  (:durative-action step22-attend-nutrition-seminar
    :parameters (?s - step) :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (role22 ?s)) (at start (done2)) (at start (done17)) (at start (done49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done22))))
  (:durative-action step23-weekend-scrimmage
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (role23 ?s)) (at start (done40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done23))))
  (:durative-action step24-submit-interest-form
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (role24 ?s)) (at start (done11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done24))))
  (:durative-action step25-watch-professional-matches
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (role25 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done25))))
  (:durative-action step26-visit-sporting-goods-store
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (role26 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done26))))
  (:durative-action step27-pass-ball-handling-assessment
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (role27 ?s)) (at start (done3)) (at start (done6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done27))))
  (:durative-action step28-search-soccer-clinics
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (role28 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done28))))
  (:durative-action step29-receive-player-id
    :parameters (?s - step) :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (role29 ?s)) (at start (done2)) (at start (done8)) (at start (done12)) (at start (done18)) (at start (done37)) (at start (done41)) (at start (done43)) (at start (done46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done29))))
  (:durative-action step30-review-code-of-conduct
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (role30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done30))))
  (:durative-action step31-set-training-schedule
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (role31 ?s)) (at start (done33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done31))))
  (:durative-action step32-verify-insurance
    :parameters (?s - step) :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (role32 ?s)) (at start (done47)) (at start (done49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done32))))
  (:durative-action step33-consult-fitness-coach
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (role33 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done33))))
  (:durative-action step34-sign-liability-waiver
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (role34 ?s)) (at start (done30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done34))))
  (:durative-action step35-receive-tryout-invitation
    :parameters (?s - step) :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (role35 ?s)) (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done35))))
  (:durative-action step36-label-personal-gear
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (role36 ?s)) (at start (done8)) (at start (done14)) (at start (done25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done36))))
  (:durative-action step37-concussion-screening
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (role37 ?s)) (at start (done10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done37))))
  (:durative-action step38-formal-tryout-evaluations
    :parameters (?s - step) :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (role38 ?s)) (at start (done8)) (at start (done22)) (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done38))))
  (:durative-action step39-break-in-cleats
    :parameters (?s - step) :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (role39 ?s)) (at start (done41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done39))))
  (:durative-action step40-conditioning-camp
    :parameters (?s - step) :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (role40 ?s)) (at start (done13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done40))))
  (:durative-action step41-watch-team-film
    :parameters (?s - step) :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (role41 ?s)) (at start (done15)) (at start (done50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done41))))
  (:durative-action step42-five-mile-run
    :parameters (?s - step) :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (role42 ?s)) (at start (done6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done42))))
  (:durative-action step43-interview-head-coach
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (role43 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done43))))
  (:durative-action step44-login-performance-portal
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (role44 ?s)) (at start (done29)) (at start (done31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done44))))
  (:durative-action step45-pack-gear-bag
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (role45 ?s)) (at start (done12)) (at start (done17)) (at start (done42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done45))))
  (:durative-action step46-finalize-emergency-contacts
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (role46 ?s)) (at start (done7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done46))))
  (:durative-action step47-gather-identification
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (role47 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done47))))
  (:durative-action step48-wash-practice-gear
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (role48 ?s)) (at start (done21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done48))))
  (:durative-action step49-receive-roster-confirmation
    :parameters (?s - step) :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (role49 ?s)) (at start (done8)) (at start (done17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done49))))
  (:durative-action step50-download-analysis-software
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (role50 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done50))))
)