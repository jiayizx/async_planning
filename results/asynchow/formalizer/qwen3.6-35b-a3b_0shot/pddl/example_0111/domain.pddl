(define (domain haunted_house_setup)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_done ?s - step) (step_pending ?s - step)
               (store_visited) (aisles_searched) (supplies_bought)
               (design_complete) (tools_obtained))
  (:durative-action go_to_store
    :duration 600
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (store_visited))))
  (:durative-action buy_supplies
    :duration 600
    :condition (and (at start (step_pending step2))
                    (at start (aisles_searched)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (supplies_bought))))
  (:durative-action design_layout
    :duration 900
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (design_complete))))
  (:durative-action get_tools
    :duration 300
    :condition (and (at start (step_pending step4))
                    (at start (design_complete)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (tools_obtained))))
  (:durative-action look_for_supplies
    :duration 600
    :condition (and (at start (step_pending step5))
                    (at start (store_visited)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (aisles_searched))))
)