(define (problem choose_cake_colors)
  (:domain cake_color_selection)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30 - step)
  (:init
    (pending1) (pending2) (pending3) (pending4) (pending5) (pending6) (pending7) (pending8) (pending9) (pending10)
    (pending11) (pending12) (pending13) (pending14) (pending15) (pending16) (pending17) (pending18) (pending19) (pending20)
    (pending21) (pending22) (pending23) (pending24) (pending25) (pending26) (pending27) (pending28) (pending29) (pending30)
  )
  (:goal (and
    (step_done1) (step_done2) (step_done3) (step_done4) (step_done5) (step_done6) (step_done7) (step_done8) (step_done9) (step_done10)
    (step_done11) (step_done12) (step_done13) (step_done14) (step_done15) (step_done16) (step_done17) (step_done18) (step_done19) (step_done20)
    (step_done21) (step_done22) (step_done23) (step_done24) (step_done25) (step_done26) (step_done27) (step_done28) (step_done29) (step_done30)
    (done2)
  ))
)