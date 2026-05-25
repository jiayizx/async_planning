(define (domain buy_mouse)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (reviews_read)
    (funds_transferred)
    (mouse_picked_up)
    (videos_watched)
    (confirmation_waited)
    (games_listed)
    (brand_decided)
    (retailers_checked)
    (research_done)
    (stock_verified)
    (budget_checked)
    (receipt_received)
    (checkout_completed)
    (shipping_selected)
    (package_tracked))
  (:durative-action do_step1
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step1)) (at start (videos_watched)) (at start (games_listed)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (reviews_read))))
  (:durative-action do_step2
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step2)) (at start (budget_checked)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (funds_transferred))))
  (:durative-action do_step3
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step3)) (at start (research_done)) (at start (stock_verified)) (at start (checkout_completed)) (at start (shipping_selected)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (mouse_picked_up))))
  (:durative-action do_step4
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step4)) (at start (research_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (videos_watched))))
  (:durative-action do_step5
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step5)) (at start (shipping_selected)) (at start (checkout_completed)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (confirmation_waited))))
  (:durative-action do_step6
    :duration (= ?duration 900)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (games_listed))))
  (:durative-action do_step7
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step7)) (at start (reviews_read)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (brand_decided))))
  (:durative-action do_step8
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step8)) (at start (brand_decided)) (at start (research_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (retailers_checked))))
  (:durative-action do_step9
    :duration (= ?duration 7200)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (research_done))))
  (:durative-action do_step10
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step10)) (at start (retailers_checked)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (stock_verified))))
  (:durative-action do_step11
    :duration (= ?duration 1800)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (budget_checked))))
  (:durative-action do_step12
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step12)) (at start (confirmation_waited)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (receipt_received))))
  (:durative-action do_step13
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step13)) (at start (funds_transferred)) (at start (brand_decided)) (at start (retailers_checked)) (at start (stock_verified)) (at start (budget_checked)) (at start (shipping_selected)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (checkout_completed))))
  (:durative-action do_step14
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step14)) (at start (brand_decided)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (shipping_selected))))
  (:durative-action do_step15
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step15)) (at start (confirmation_waited)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (package_tracked))))
)