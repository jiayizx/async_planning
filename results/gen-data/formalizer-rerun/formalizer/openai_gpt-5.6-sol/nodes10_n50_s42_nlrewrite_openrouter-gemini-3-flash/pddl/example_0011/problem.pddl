(define (problem house-coloring-problem)
  (:domain house-coloring)
  (:objects
    step1 - step1-type
    step2 - step2-type
    step3 - step3-type
    step4 - step4-type
    step5 - step5-type
    step6 - step6-type
    step7 - step7-type
    step8 - step8-type
    step9 - step9-type
    step10 - step10-type
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
    (step_pending step6)
    (step_pending step7)
    (step_pending step8)
    (step_pending step9)
    (step_pending step10)
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (step_done step6)
    (step_done step7)
    (step_done step8)
    (step_done step9)
    (step_done step10)
    (paint_primer_purchased)
    (edges_taped)
    (artwork_hung)
    (furniture_protected)
    (first_coat_applied)
    (palette_selected)
    (accent_trim_painted)
    (walls_prepared)
    (drop_cloths_laid)
    (decor_unpacked)
  ))
  (:metric minimize (total-time))
)