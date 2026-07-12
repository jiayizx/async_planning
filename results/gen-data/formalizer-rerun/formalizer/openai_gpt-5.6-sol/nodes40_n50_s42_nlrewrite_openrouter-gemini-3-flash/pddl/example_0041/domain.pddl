(define (domain buckeyes)
  (:requirements :durative-actions :typing)
  (:types
    step
    step1-type step2-type step3-type step4-type step5-type
    step6-type step7-type step8-type step9-type step10-type
    step11-type step12-type step13-type step14-type step15-type
    step16-type step17-type step18-type step19-type step20-type
    step21-type step22-type step23-type step24-type step25-type
    step26-type step27-type step28-type step29-type step30-type
    step31-type step32-type step33-type step34-type step35-type
    step36-type step37-type step38-type step39-type step40-type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done1) (done2) (done3) (done4) (done5)
    (done6) (done7) (done8) (done9) (done10)
    (done11) (done12) (done13) (done14) (done15)
    (done16) (done17) (done18) (done19) (done20)
    (done21) (done22) (done23) (done24) (done25)
    (done26) (done27) (done28) (done29) (done30)
    (done31) (done32) (done33) (done34) (done35)
    (done36) (done37) (done38) (done39) (done40)
  )

  (:durative-action soften-butter
    :parameters (?s - step1-type)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done1)))
  )

  (:durative-action line-baking-sheet
    :parameters (?s - step2-type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (done29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done2)))
  )

  (:durative-action measure-peanut-butter
    :parameters (?s - step3-type)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done3)))
  )

  (:durative-action sift-powdered-sugar
    :parameters (?s - step4-type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done4)))
  )

  (:durative-action mix-butter-and-peanut-butter
    :parameters (?s - step5-type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (done10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done5)))
  )

  (:durative-action melt-chocolate-wafers
    :parameters (?s - step6-type)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done6)))
  )

  (:durative-action clear-freezer-space
    :parameters (?s - step7-type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done7)))
  )

  (:durative-action gather-measuring-tools
    :parameters (?s - step8-type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done8)))
  )

  (:durative-action temper-chocolate
    :parameters (?s - step9-type)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done9)))
  )

  (:durative-action retrieve-pantry-ingredients
    :parameters (?s - step10-type)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done10)))
  )

  (:durative-action measure-vanilla
    :parameters (?s - step11-type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done11)))
  )

  (:durative-action stir-shortening-into-chocolate
    :parameters (?s - step12-type)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (done6)) (at start (done10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done12)))
  )

  (:durative-action beat-mixture-until-fluffy
    :parameters (?s - step13-type)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (done5)) (at start (done16)) (at start (done20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done13)))
  )

  (:durative-action blend-butter-into-sugar
    :parameters (?s - step14-type)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (done1)) (at start (done35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done14)))
  )

  (:durative-action roll-dough-balls
    :parameters (?s - step15-type)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (done11)) (at start (done18)) (at start (done21)) (at start (done26)) (at start (done28)) (at start (done37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done15)))
  )

  (:durative-action whisk-chocolate
    :parameters (?s - step16-type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (done17)) (at start (done32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done16)))
  )

  (:durative-action wash-mixing-bowls
    :parameters (?s - step17-type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (done7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done17)))
  )

  (:durative-action combine-peanut-butter-and-vanilla
    :parameters (?s - step18-type)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (done3)) (at start (done38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done18)))
  )

  (:durative-action wipe-counters
    :parameters (?s - step19-type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (done3)) (at start (done7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done19)))
  )

  (:durative-action plug-in-mixer
    :parameters (?s - step20-type)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done20)))
  )

  (:durative-action prepare-rolling-surface
    :parameters (?s - step21-type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done21)))
  )

  (:durative-action scrape-mixing-bowl
    :parameters (?s - step22-type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done22)))
  )

  (:durative-action test-chocolate-temperature
    :parameters (?s - step23-type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done23)))
  )

  (:durative-action set-up-dipping-station
    :parameters (?s - step24-type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (done25)) (at start (done31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done24)))
  )

  (:durative-action chill-dough-balls
    :parameters (?s - step25-type)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (done15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done25)))
  )

  (:durative-action add-mixture-to-sugar
    :parameters (?s - step26-type)
    :duration (= ?duration 420)
    :condition (and (at start (step_pending ?s)) (at start (done14)) (at start (done21)) (at start (done37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done26)))
  )

  (:durative-action put-away-sugar
    :parameters (?s - step27-type)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (done17)) (at start (done21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done27)))
  )

  (:durative-action open-salt
    :parameters (?s - step28-type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done28)))
  )

  (:durative-action retrieve-baking-sheet
    :parameters (?s - step29-type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done29)))
  )

  (:durative-action clean-cooling-rack
    :parameters (?s - step30-type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (done7)) (at start (done20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done30)))
  )

  (:durative-action arrange-dipping-tools
    :parameters (?s - step31-type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (done34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done31)))
  )

  (:durative-action chop-chocolate
    :parameters (?s - step32-type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done32)))
  )

  (:durative-action place-parchment-on-tray
    :parameters (?s - step33-type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done2)) (at start (done6)) (at start (done29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done33)))
  )

  (:durative-action check-toothpicks
    :parameters (?s - step34-type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done34)))
  )

  (:durative-action weigh-dough
    :parameters (?s - step35-type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (done10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done35)))
  )

  (:durative-action label-storage-containers
    :parameters (?s - step36-type)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (done7)) (at start (done9)) (at start (done18)) (at start (done35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done36)))
  )

  (:durative-action knead-dough
    :parameters (?s - step37-type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (done4)) (at start (done30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done37)))
  )

  (:durative-action open-peanut-butter
    :parameters (?s - step38-type)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done38)))
  )

  (:durative-action melt-paraffin-wax
    :parameters (?s - step39-type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (done30)) (at start (done31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done39)))
  )

  (:durative-action dip-balls-in-chocolate
    :parameters (?s - step40-type)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (done21)) (at start (done31)) (at start (done37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done40)))
  )
)