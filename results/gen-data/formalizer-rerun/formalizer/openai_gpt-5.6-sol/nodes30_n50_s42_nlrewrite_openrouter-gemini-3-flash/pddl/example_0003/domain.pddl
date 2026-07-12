(define (domain break-even-analysis)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step)
    (is_step4 ?s - step) (is_step5 ?s - step) (is_step6 ?s - step)
    (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step)
    (is_step10 ?s - step) (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step)
    (is_step19 ?s - step) (is_step20 ?s - step) (is_step21 ?s - step)
    (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step)
    (is_step25 ?s - step) (is_step26 ?s - step) (is_step27 ?s - step)
    (is_step28 ?s - step) (is_step29 ?s - step) (is_step30 ?s - step)
    (graph_reviewed) (raw_cost_data_gathered) (chart_saved_pdf)
    (total_fixed_costs_calculated) (analysis_printed) (market_price_researched)
    (overhead_identified) (costs_categorized) (sales_reports_downloaded)
    (formula_verified) (average_variable_cost_calculated) (contribution_margin_calculated)
    (fixed_items_summed) (data_labels_added) (fixed_costs_divided)
    (spreadsheet_data_entered) (currency_formatting_completed) (break_even_units_calculated)
    (variable_costs_cross_referenced) (printer_calibrated) (selling_price_set)
    (break_even_sales_calculated) (competitor_analysis_completed) (fixed_cost_sum_checked)
    (scatter_plot_generated) (maximum_variable_costs_calculated) (seasonality_analyzed)
    (cost_revenue_lines_plotted) (graph_axes_adjusted) (summary_written)
  )

  (:durative-action review_graph
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (printer_calibrated)) (at start (cost_revenue_lines_plotted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (graph_reviewed))))

  (:durative-action gather_raw_cost_data
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (raw_cost_data_gathered))))

  (:durative-action save_chart_pdf
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (summary_written)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chart_saved_pdf))))

  (:durative-action calculate_total_fixed_costs
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (overhead_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (total_fixed_costs_calculated))))

  (:durative-action print_analysis
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (spreadsheet_data_entered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (analysis_printed))))

  (:durative-action research_market_price
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (competitor_analysis_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (market_price_researched))))

  (:durative-action identify_overhead
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (overhead_identified))))

  (:durative-action categorize_costs
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (raw_cost_data_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (costs_categorized))))

  (:durative-action download_sales_reports
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sales_reports_downloaded))))

  (:durative-action verify_formula
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (break_even_sales_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (formula_verified))))

  (:durative-action calculate_average_variable_cost
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (raw_cost_data_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (average_variable_cost_calculated))))

  (:durative-action calculate_contribution_margin
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (fixed_items_summed)) (at start (fixed_costs_divided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (contribution_margin_calculated))))

  (:durative-action sum_fixed_items
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (total_fixed_costs_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fixed_items_summed))))

  (:durative-action add_data_labels
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (graph_axes_adjusted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (data_labels_added))))

  (:durative-action divide_fixed_costs
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (break_even_units_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fixed_costs_divided))))

  (:durative-action input_spreadsheet_data
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (variable_costs_cross_referenced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spreadsheet_data_entered))))

  (:durative-action format_currency
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (spreadsheet_data_entered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (currency_formatting_completed))))

  (:durative-action calculate_break_even_units
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (fixed_cost_sum_checked)) (at start (maximum_variable_costs_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (break_even_units_calculated))))

  (:durative-action cross_reference_variable_costs
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (costs_categorized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (variable_costs_cross_referenced))))

  (:durative-action calibrate_printer
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (printer_calibrated))))

  (:durative-action set_selling_price
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (market_price_researched)) (at start (competitor_analysis_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (selling_price_set))))

  (:durative-action calculate_break_even_sales
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (average_variable_cost_calculated)) (at start (seasonality_analyzed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (break_even_sales_calculated))))

  (:durative-action conduct_competitor_analysis
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (competitor_analysis_completed))))

  (:durative-action check_fixed_cost_sum
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (fixed_items_summed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fixed_cost_sum_checked))))

  (:durative-action generate_scatter_plot
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (spreadsheet_data_entered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scatter_plot_generated))))

  (:durative-action calculate_maximum_variable_costs
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (raw_cost_data_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (maximum_variable_costs_calculated))))

  (:durative-action analyze_seasonality
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (sales_reports_downloaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seasonality_analyzed))))

  (:durative-action plot_cost_revenue_lines
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (selling_price_set)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cost_revenue_lines_plotted))))

  (:durative-action adjust_graph_axes
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (scatter_plot_generated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (graph_axes_adjusted))))

  (:durative-action write_summary
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (sales_reports_downloaded)) (at start (spreadsheet_data_entered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (summary_written))))
)