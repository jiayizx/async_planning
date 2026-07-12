(define (domain buy-gaming-mouse)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (professional_reviews_read)
    (funds_transferred)
    (mouse_picked_up)
    (comparison_videos_watched)
    (confirmation_email_processed)
    (dpi_needs_determined)
    (brand_and_model_decided)
    (best_price_checked)
    (mouse_trends_researched)
    (stock_verified)
    (monthly_budget_checked)
    (digital_receipt_received)
    (mouse_purchased)
    (shipping_or_pickup_selected)
    (package_reached_store)
  )

  (:durative-action read_professional_reviews
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (is_step1 ?s))
      (at start (step_pending ?s))
      (at start (comparison_videos_watched))
      (at start (dpi_needs_determined)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (professional_reviews_read))))

  (:durative-action transfer_funds
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (is_step2 ?s))
      (at start (step_pending ?s))
      (at start (monthly_budget_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (funds_transferred))))

  (:durative-action drive_to_store
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (is_step3 ?s))
      (at start (step_pending ?s))
      (at start (mouse_trends_researched))
      (at start (stock_verified)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mouse_picked_up))))

  (:durative-action watch_comparison_videos
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (is_step4 ?s))
      (at start (step_pending ?s))
      (at start (mouse_trends_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (comparison_videos_watched))))

  (:durative-action process_confirmation_email
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (is_step5 ?s))
      (at start (step_pending ?s))
      (at start (shipping_or_pickup_selected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (confirmation_email_processed))))

  (:durative-action determine_dpi_needs
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (is_step6 ?s))
      (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dpi_needs_determined))))

  (:durative-action decide_brand_and_model
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (is_step7 ?s))
      (at start (step_pending ?s))
      (at start (professional_reviews_read)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (brand_and_model_decided))))

  (:durative-action check_best_price
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (is_step8 ?s))
      (at start (step_pending ?s))
      (at start (mouse_trends_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (best_price_checked))))

  (:durative-action research_mouse_trends
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (is_step9 ?s))
      (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mouse_trends_researched))))

  (:durative-action verify_stock
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (is_step10 ?s))
      (at start (step_pending ?s))
      (at start (best_price_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (stock_verified))))

  (:durative-action check_monthly_budget
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (is_step11 ?s))
      (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (monthly_budget_checked))))

  (:durative-action receive_digital_receipt
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (is_step12 ?s))
      (at start (step_pending ?s))
      (at start (confirmation_email_processed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (digital_receipt_received))))

  (:durative-action complete_online_checkout
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (is_step13 ?s))
      (at start (step_pending ?s))
      (at start (funds_transferred))
      (at start (monthly_budget_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mouse_purchased))))

  (:durative-action select_shipping_or_pickup
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (is_step14 ?s))
      (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shipping_or_pickup_selected))))

  (:durative-action track_package
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (is_step15 ?s))
      (at start (step_pending ?s))
      (at start (confirmation_email_processed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (package_reached_store))))
)