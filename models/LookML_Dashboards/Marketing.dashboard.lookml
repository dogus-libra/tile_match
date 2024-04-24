---
- dashboard: marketing_dashboard
  title: Marketing Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: oRWrWpjWCRQF8w8M6cWymV
  elements:
  - name: Daily Report
    title: Daily Report
    merged_queries:
    - model: fruit-merge
      explore: fruit_merge_cost
      type: looker_line
      fields: [fruit_merge_cost.date_date, cost_sum, click_sum, install_sum, impression_sum,
        install_sum_cond]
      fill_fields: [fruit_merge_cost.date_date]
      filters:
        fruit_merge_cost.partner: ''
        fruit_merge_cost.date_date: ''
        fruit_merge_cost.creative: ''
        fruit_merge_cost.adgroup: ''
        fruit_merge_cost.campaign: ''
      sorts: [fruit_merge_cost.date_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: ''
        label: cost_sum
        based_on: fruit_merge_cost.ad_spend_network
        _kind_hint: measure
        measure: cost_sum
        type: sum
        _type_hint: number
      - category: measure
        expression: ''
        label: click_sum
        based_on: fruit_merge_cost.clicks_network
        _kind_hint: measure
        measure: click_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${click_sum}"
        label: CPC
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpc
        _type_hint: number
      - category: measure
        expression: ''
        label: install_sum
        based_on: fruit_merge_cost.installs_network
        _kind_hint: measure
        measure: install_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${install_sum}/${click_sum}"
        label: CTI
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: cti
        _type_hint: number
      - category: measure
        expression: ''
        label: impression_sum
        based_on: fruit_merge_cost.impressions_network
        _kind_hint: measure
        measure: impression_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${click_sum}/${impression_sum}"
        label: CTR
        value_format:
        value_format_name: percent_2
        _kind_hint: measure
        table_calculation: ctr
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${install_sum}/${impression_sum})
        label: IPM
        value_format:
        value_format_name: decimal_2
        _kind_hint: measure
        table_calculation: ipm
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${cost_sum}/${impression_sum})
        label: CPM
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpm
        _type_hint: number
      - category: dimension
        expression: if(${fruit_merge_cost.partner}="Organic",${fruit_merge_cost.installs},${fruit_merge_cost.installs_network})
        label: conditional_installs
        value_format:
        value_format_name:
        dimension: conditional_installs
        _kind_hint: dimension
        _type_hint: number
      - category: measure
        expression:
        label: install_sum_cond
        value_format:
        value_format_name:
        based_on: conditional_installs
        _kind_hint: measure
        measure: install_sum_cond
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${install_sum_cond}"
        label: CPI
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpi
        _type_hint: number
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      hidden_pivots: {}
      hidden_fields: [click_sum, install_sum, impression_sum, cpc, cpi, cpm, ipm,
        ctr, cti, cost_sum]
    - model: fruit-merge
      explore: session_pdt
      type: table
      fields: [session_pdt.installed_date, ret_1, ret_2, ret_3, ret_4, ret_5, ret_7,
        player_1, player_2, player_3, player_4, player_5, player_7]
      fill_fields: [session_pdt.installed_date]
      sorts: [session_pdt.installed_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Ret 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: ret_1
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_1: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Ret 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: ret_2
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_2: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Ret 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: ret_3
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_3: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Ret 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: ret_4
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_4: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Ret 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: ret_5
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_5: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Ret 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: ret_7
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_7: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Player 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: player_1
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Player 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: player_2
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Player 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: player_3
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Player 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: player_4
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Player 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: player_5
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Player 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: player_7
        type: count_distinct
        _type_hint: number
      - category: table_calculation
        expression: "${ret_1}/${player_1}"
        label: Retention 1
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_1
        _type_hint: number
      - category: table_calculation
        expression: "${ret_2}/${player_2}"
        label: Retention 2
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_2
        _type_hint: number
      - category: table_calculation
        expression: "${ret_3}/${player_3}"
        label: Retention 3
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_3
        _type_hint: number
      - category: table_calculation
        expression: "${ret_4}/${player_4}"
        label: Retention 4
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_4
        _type_hint: number
      - category: table_calculation
        expression: "${ret_5}/${player_5}"
        label: Retention 5
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_5
        _type_hint: number
      - category: table_calculation
        expression: "${ret_7}/${player_7}"
        label: Retention 7
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_7
        _type_hint: number
      hidden_pivots: {}
      hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
        player_3, player_4, player_5, player_7]
      join_fields:
      - field_name: session_pdt.installed_date
        source_field_name: fruit_merge_cost.date_date
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_labels:
      fruit_merge_cost.date_date: Install Date
      cost_sum: Spend
      install_sum_cond: Installs
    series_cell_visualizations:
      cost_sum:
        is_active: false
    series_text_format:
      fruit_merge_cost.date_date:
        align: center
      cost_sum:
        align: center
      install_sum_cond:
        align: center
      cpc:
        align: center
      cti:
        align: center
      ctr:
        align: center
      ipm:
        align: center
      cpi:
        align: center
      cpm:
        align: center
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#E52592"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      cost_sum:
        name: usd_0
        decimals: '0'
        format_string: "$#,##0"
        label: U.S. Dollars (0)
        label_prefix: U.S. Dollars
    hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, install_sum, click_sum, impression_sum]
    series_types: {}
    type: looker_grid
    listen:
    - Creative: fruit_merge_cost.ad_network
      Campaign: fruit_merge_cost.campaign_network
      Partner: fruit_merge_cost.partner
      Adgroup: fruit_merge_cost.adgroup_network
      Install Date: fruit_merge_cost.date_date
      Country Code: fruit_merge_cost.country_code
    - Creative: session_pdt.creative
      Campaign: session_pdt.campaign
      Partner: session_pdt.network
      Adgroup: session_pdt.adgroup
      Install Date: session_pdt.installed_date
      Country Code: session_pdt.country
    row: 61
    col: 0
    width: 24
    height: 6
  - name: Retention 1
    title: Retention 1
    merged_queries:
    - model: fruit-merge
      explore: fruit_merge_cost
      type: looker_line
      fields: [fruit_merge_cost.date_date, cost_sum, click_sum, install_sum, impression_sum,
        install_sum_cond]
      fill_fields: [fruit_merge_cost.date_date]
      filters:
        fruit_merge_cost.partner: ''
        fruit_merge_cost.date_date: ''
        fruit_merge_cost.creative: ''
        fruit_merge_cost.adgroup: ''
        fruit_merge_cost.campaign: ''
      sorts: [fruit_merge_cost.date_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: ''
        label: cost_sum
        based_on: fruit_merge_cost.ad_spend_network
        _kind_hint: measure
        measure: cost_sum
        type: sum
        _type_hint: number
      - category: measure
        expression: ''
        label: click_sum
        based_on: fruit_merge_cost.clicks_network
        _kind_hint: measure
        measure: click_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${click_sum}"
        label: CPC
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpc
        _type_hint: number
      - category: measure
        expression: ''
        label: install_sum
        based_on: fruit_merge_cost.installs_network
        _kind_hint: measure
        measure: install_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${install_sum}/${click_sum}"
        label: CTI
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: cti
        _type_hint: number
      - category: measure
        expression: ''
        label: impression_sum
        based_on: fruit_merge_cost.impressions_network
        _kind_hint: measure
        measure: impression_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${click_sum}/${impression_sum}"
        label: CTR
        value_format:
        value_format_name: percent_2
        _kind_hint: measure
        table_calculation: ctr
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${install_sum}/${impression_sum})
        label: IPM
        value_format:
        value_format_name: decimal_2
        _kind_hint: measure
        table_calculation: ipm
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${cost_sum}/${impression_sum})
        label: CPM
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpm
        _type_hint: number
      - category: dimension
        expression: if(${fruit_merge_cost.partner}="Organic",${fruit_merge_cost.installs},${fruit_merge_cost.installs_network})
        label: conditional_installs
        value_format:
        value_format_name:
        dimension: conditional_installs
        _kind_hint: dimension
        _type_hint: number
      - category: measure
        expression:
        label: install_sum_cond
        value_format:
        value_format_name:
        based_on: conditional_installs
        _kind_hint: measure
        measure: install_sum_cond
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${install_sum_cond}"
        label: CPI
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpi
        _type_hint: number
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      hidden_pivots: {}
      hidden_fields: [click_sum, install_sum, impression_sum, cpc, cpi, cpm, ipm,
        ctr, cti, cost_sum]
    - model: fruit-merge
      explore: session_pdt
      type: table
      fields: [session_pdt.installed_date, ret_1, ret_2, ret_3, ret_4, ret_5, ret_7,
        player_1, player_2, player_3, player_4, player_5, player_7]
      fill_fields: [session_pdt.installed_date]
      sorts: [session_pdt.installed_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Ret 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: ret_1
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_1: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Ret 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: ret_2
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_2: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Ret 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: ret_3
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_3: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Ret 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: ret_4
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_4: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Ret 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: ret_5
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_5: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Ret 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: ret_7
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_7: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Player 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: player_1
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Player 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: player_2
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Player 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: player_3
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Player 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: player_4
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Player 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: player_5
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Player 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: player_7
        type: count_distinct
        _type_hint: number
      - category: table_calculation
        expression: "${ret_1}/${player_1}"
        label: Retention 1
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_1
        _type_hint: number
      - category: table_calculation
        expression: "${ret_2}/${player_2}"
        label: Retention 2
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_2
        _type_hint: number
      - category: table_calculation
        expression: "${ret_3}/${player_3}"
        label: Retention 3
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_3
        _type_hint: number
      - category: table_calculation
        expression: "${ret_4}/${player_4}"
        label: Retention 4
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_4
        _type_hint: number
      - category: table_calculation
        expression: "${ret_5}/${player_5}"
        label: Retention 5
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_5
        _type_hint: number
      - category: table_calculation
        expression: "${ret_7}/${player_7}"
        label: Retention 7
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_7
        _type_hint: number
      hidden_pivots: {}
      hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
        player_3, player_4, player_5, player_7]
      join_fields:
      - field_name: session_pdt.installed_date
        source_field_name: fruit_merge_cost.date_date
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Install Date
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      fruit_merge_cost.date_date: Install Date
      cost_sum: Spend
      install_sum_cond: Installs
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      cost_sum:
        is_active: false
    series_text_format:
      fruit_merge_cost.date_date:
        align: center
      cost_sum:
        align: center
      install_sum_cond:
        align: center
      cpc:
        align: center
      cti:
        align: center
      ctr:
        align: center
      ipm:
        align: center
      cpi:
        align: center
      cpm:
        align: center
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
    table_theme: white
    enable_conditional_formatting: false
    header_font_color: "#E52592"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, install_sum, click_sum, impression_sum,
      cost_sum, cpc, install_sum_cond, cti, ctr, ipm, cpm, cpi, retention_7, retention_5,
      retention_3, retention_4, retention_2]
    type: looker_line
    listen:
    - Creative: fruit_merge_cost.ad_network
      Campaign: fruit_merge_cost.campaign_network
      Partner: fruit_merge_cost.partner
      Adgroup: fruit_merge_cost.adgroup_network
      Install Date: fruit_merge_cost.date_date
      Country Code: fruit_merge_cost.country_code
    - Creative: session_pdt.creative
      Campaign: session_pdt.campaign
      Partner: session_pdt.network
      Adgroup: session_pdt.adgroup
      Install Date: session_pdt.installed_date
      Country Code: session_pdt.country
    row: 36
    col: 12
    width: 12
    height: 9
  - name: Retention 2
    title: Retention 2
    merged_queries:
    - model: fruit-merge
      explore: fruit_merge_cost
      type: looker_line
      fields: [fruit_merge_cost.date_date, cost_sum, click_sum, install_sum, impression_sum,
        install_sum_cond]
      fill_fields: [fruit_merge_cost.date_date]
      filters:
        fruit_merge_cost.partner: ''
        fruit_merge_cost.date_date: ''
        fruit_merge_cost.creative: ''
        fruit_merge_cost.adgroup: ''
        fruit_merge_cost.campaign: ''
      sorts: [fruit_merge_cost.date_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: ''
        label: cost_sum
        based_on: fruit_merge_cost.ad_spend_network
        _kind_hint: measure
        measure: cost_sum
        type: sum
        _type_hint: number
      - category: measure
        expression: ''
        label: click_sum
        based_on: fruit_merge_cost.clicks_network
        _kind_hint: measure
        measure: click_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${click_sum}"
        label: CPC
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpc
        _type_hint: number
      - category: measure
        expression: ''
        label: install_sum
        based_on: fruit_merge_cost.installs_network
        _kind_hint: measure
        measure: install_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${install_sum}/${click_sum}"
        label: CTI
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: cti
        _type_hint: number
      - category: measure
        expression: ''
        label: impression_sum
        based_on: fruit_merge_cost.impressions_network
        _kind_hint: measure
        measure: impression_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${click_sum}/${impression_sum}"
        label: CTR
        value_format:
        value_format_name: percent_2
        _kind_hint: measure
        table_calculation: ctr
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${install_sum}/${impression_sum})
        label: IPM
        value_format:
        value_format_name: decimal_2
        _kind_hint: measure
        table_calculation: ipm
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${cost_sum}/${impression_sum})
        label: CPM
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpm
        _type_hint: number
      - category: dimension
        expression: if(${fruit_merge_cost.partner}="Organic",${fruit_merge_cost.installs},${fruit_merge_cost.installs_network})
        label: conditional_installs
        value_format:
        value_format_name:
        dimension: conditional_installs
        _kind_hint: dimension
        _type_hint: number
      - category: measure
        expression:
        label: install_sum_cond
        value_format:
        value_format_name:
        based_on: conditional_installs
        _kind_hint: measure
        measure: install_sum_cond
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${install_sum_cond}"
        label: CPI
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpi
        _type_hint: number
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      hidden_pivots: {}
      hidden_fields: [click_sum, install_sum, impression_sum, cpc, cpi, cpm, ipm,
        ctr, cti, cost_sum]
    - model: fruit-merge
      explore: session_pdt
      type: table
      fields: [session_pdt.installed_date, ret_1, ret_2, ret_3, ret_4, ret_5, ret_7,
        player_1, player_2, player_3, player_4, player_5, player_7]
      fill_fields: [session_pdt.installed_date]
      sorts: [session_pdt.installed_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Ret 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: ret_1
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_1: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Ret 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: ret_2
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_2: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Ret 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: ret_3
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_3: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Ret 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: ret_4
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_4: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Ret 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: ret_5
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_5: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Ret 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: ret_7
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_7: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Player 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: player_1
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Player 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: player_2
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Player 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: player_3
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Player 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: player_4
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Player 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: player_5
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Player 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: player_7
        type: count_distinct
        _type_hint: number
      - category: table_calculation
        expression: "${ret_1}/${player_1}"
        label: Retention 1
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_1
        _type_hint: number
      - category: table_calculation
        expression: "${ret_2}/${player_2}"
        label: Retention 2
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_2
        _type_hint: number
      - category: table_calculation
        expression: "${ret_3}/${player_3}"
        label: Retention 3
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_3
        _type_hint: number
      - category: table_calculation
        expression: "${ret_4}/${player_4}"
        label: Retention 4
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_4
        _type_hint: number
      - category: table_calculation
        expression: "${ret_5}/${player_5}"
        label: Retention 5
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_5
        _type_hint: number
      - category: table_calculation
        expression: "${ret_7}/${player_7}"
        label: Retention 7
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_7
        _type_hint: number
      hidden_pivots: {}
      hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
        player_3, player_4, player_5, player_7]
      join_fields:
      - field_name: session_pdt.installed_date
        source_field_name: fruit_merge_cost.date_date
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Install Date
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      fruit_merge_cost.date_date: Install Date
      cost_sum: Spend
      install_sum_cond: Installs
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      cost_sum:
        is_active: false
    series_text_format:
      fruit_merge_cost.date_date:
        align: center
      cost_sum:
        align: center
      install_sum_cond:
        align: center
      cpc:
        align: center
      cti:
        align: center
      ctr:
        align: center
      ipm:
        align: center
      cpi:
        align: center
      cpm:
        align: center
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
    table_theme: white
    enable_conditional_formatting: false
    header_font_color: "#E52592"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, install_sum, click_sum, impression_sum,
      cost_sum, cpc, install_sum_cond, cti, ctr, ipm, cpm, cpi, retention_7, retention_5,
      retention_3, retention_4, retention_1]
    type: looker_line
    listen:
    - Creative: fruit_merge_cost.ad_network
      Campaign: fruit_merge_cost.campaign_network
      Partner: fruit_merge_cost.partner
      Adgroup: fruit_merge_cost.adgroup_network
      Install Date: fruit_merge_cost.date_date
      Country Code: fruit_merge_cost.country_code
    - Creative: session_pdt.creative
      Campaign: session_pdt.campaign
      Partner: session_pdt.network
      Adgroup: session_pdt.adgroup
      Install Date: session_pdt.installed_date
      Country Code: session_pdt.country
    row: 45
    col: 0
    width: 12
    height: 8
  - name: Retention 3
    title: Retention 3
    merged_queries:
    - model: fruit-merge
      explore: fruit_merge_cost
      type: looker_line
      fields: [fruit_merge_cost.date_date, cost_sum, click_sum, install_sum, impression_sum,
        install_sum_cond]
      fill_fields: [fruit_merge_cost.date_date]
      filters:
        fruit_merge_cost.partner: ''
        fruit_merge_cost.date_date: ''
        fruit_merge_cost.creative: ''
        fruit_merge_cost.adgroup: ''
        fruit_merge_cost.campaign: ''
      sorts: [fruit_merge_cost.date_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: ''
        label: cost_sum
        based_on: fruit_merge_cost.ad_spend_network
        _kind_hint: measure
        measure: cost_sum
        type: sum
        _type_hint: number
      - category: measure
        expression: ''
        label: click_sum
        based_on: fruit_merge_cost.clicks_network
        _kind_hint: measure
        measure: click_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${click_sum}"
        label: CPC
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpc
        _type_hint: number
      - category: measure
        expression: ''
        label: install_sum
        based_on: fruit_merge_cost.installs_network
        _kind_hint: measure
        measure: install_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${install_sum}/${click_sum}"
        label: CTI
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: cti
        _type_hint: number
      - category: measure
        expression: ''
        label: impression_sum
        based_on: fruit_merge_cost.impressions_network
        _kind_hint: measure
        measure: impression_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${click_sum}/${impression_sum}"
        label: CTR
        value_format:
        value_format_name: percent_2
        _kind_hint: measure
        table_calculation: ctr
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${install_sum}/${impression_sum})
        label: IPM
        value_format:
        value_format_name: decimal_2
        _kind_hint: measure
        table_calculation: ipm
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${cost_sum}/${impression_sum})
        label: CPM
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpm
        _type_hint: number
      - category: dimension
        expression: if(${fruit_merge_cost.partner}="Organic",${fruit_merge_cost.installs},${fruit_merge_cost.installs_network})
        label: conditional_installs
        value_format:
        value_format_name:
        dimension: conditional_installs
        _kind_hint: dimension
        _type_hint: number
      - category: measure
        expression:
        label: install_sum_cond
        value_format:
        value_format_name:
        based_on: conditional_installs
        _kind_hint: measure
        measure: install_sum_cond
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${install_sum_cond}"
        label: CPI
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpi
        _type_hint: number
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      hidden_pivots: {}
      hidden_fields: [click_sum, install_sum, impression_sum, cpc, cpi, cpm, ipm,
        ctr, cti, cost_sum]
    - model: fruit-merge
      explore: session_pdt
      type: table
      fields: [session_pdt.installed_date, ret_1, ret_2, ret_3, ret_4, ret_5, ret_7,
        player_1, player_2, player_3, player_4, player_5, player_7]
      fill_fields: [session_pdt.installed_date]
      sorts: [session_pdt.installed_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Ret 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: ret_1
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_1: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Ret 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: ret_2
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_2: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Ret 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: ret_3
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_3: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Ret 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: ret_4
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_4: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Ret 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: ret_5
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_5: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Ret 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: ret_7
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_7: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Player 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: player_1
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Player 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: player_2
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Player 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: player_3
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Player 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: player_4
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Player 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: player_5
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Player 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: player_7
        type: count_distinct
        _type_hint: number
      - category: table_calculation
        expression: "${ret_1}/${player_1}"
        label: Retention 1
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_1
        _type_hint: number
      - category: table_calculation
        expression: "${ret_2}/${player_2}"
        label: Retention 2
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_2
        _type_hint: number
      - category: table_calculation
        expression: "${ret_3}/${player_3}"
        label: Retention 3
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_3
        _type_hint: number
      - category: table_calculation
        expression: "${ret_4}/${player_4}"
        label: Retention 4
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_4
        _type_hint: number
      - category: table_calculation
        expression: "${ret_5}/${player_5}"
        label: Retention 5
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_5
        _type_hint: number
      - category: table_calculation
        expression: "${ret_7}/${player_7}"
        label: Retention 7
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_7
        _type_hint: number
      hidden_pivots: {}
      hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
        player_3, player_4, player_5, player_7]
      join_fields:
      - field_name: session_pdt.installed_date
        source_field_name: fruit_merge_cost.date_date
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Install Date
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      fruit_merge_cost.date_date: Install Date
      cost_sum: Spend
      install_sum_cond: Installs
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      cost_sum:
        is_active: false
    series_text_format:
      fruit_merge_cost.date_date:
        align: center
      cost_sum:
        align: center
      install_sum_cond:
        align: center
      cpc:
        align: center
      cti:
        align: center
      ctr:
        align: center
      ipm:
        align: center
      cpi:
        align: center
      cpm:
        align: center
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
    table_theme: white
    enable_conditional_formatting: false
    header_font_color: "#E52592"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, install_sum, click_sum, impression_sum,
      cost_sum, cpc, install_sum_cond, cti, ctr, ipm, cpm, cpi, retention_7, retention_5,
      retention_4, retention_1, retention_2]
    type: looker_line
    listen:
    - Creative: fruit_merge_cost.ad_network
      Campaign: fruit_merge_cost.campaign_network
      Partner: fruit_merge_cost.partner
      Adgroup: fruit_merge_cost.adgroup_network
      Install Date: fruit_merge_cost.date_date
      Country Code: fruit_merge_cost.country_code
    - Creative: session_pdt.creative
      Campaign: session_pdt.campaign
      Partner: session_pdt.network
      Adgroup: session_pdt.adgroup
      Install Date: session_pdt.installed_date
      Country Code: session_pdt.country
    row: 45
    col: 12
    width: 12
    height: 8
  - name: Retention 7
    title: Retention 7
    merged_queries:
    - model: fruit-merge
      explore: fruit_merge_cost
      type: looker_line
      fields: [fruit_merge_cost.date_date, cost_sum, click_sum, install_sum, impression_sum,
        install_sum_cond]
      fill_fields: [fruit_merge_cost.date_date]
      filters:
        fruit_merge_cost.partner: ''
        fruit_merge_cost.date_date: ''
        fruit_merge_cost.creative: ''
        fruit_merge_cost.adgroup: ''
        fruit_merge_cost.campaign: ''
      sorts: [fruit_merge_cost.date_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: ''
        label: cost_sum
        based_on: fruit_merge_cost.ad_spend_network
        _kind_hint: measure
        measure: cost_sum
        type: sum
        _type_hint: number
      - category: measure
        expression: ''
        label: click_sum
        based_on: fruit_merge_cost.clicks_network
        _kind_hint: measure
        measure: click_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${click_sum}"
        label: CPC
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpc
        _type_hint: number
      - category: measure
        expression: ''
        label: install_sum
        based_on: fruit_merge_cost.installs_network
        _kind_hint: measure
        measure: install_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${install_sum}/${click_sum}"
        label: CTI
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: cti
        _type_hint: number
      - category: measure
        expression: ''
        label: impression_sum
        based_on: fruit_merge_cost.impressions_network
        _kind_hint: measure
        measure: impression_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${click_sum}/${impression_sum}"
        label: CTR
        value_format:
        value_format_name: percent_2
        _kind_hint: measure
        table_calculation: ctr
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${install_sum}/${impression_sum})
        label: IPM
        value_format:
        value_format_name: decimal_2
        _kind_hint: measure
        table_calculation: ipm
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${cost_sum}/${impression_sum})
        label: CPM
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpm
        _type_hint: number
      - category: dimension
        expression: if(${fruit_merge_cost.partner}="Organic",${fruit_merge_cost.installs},${fruit_merge_cost.installs_network})
        label: conditional_installs
        value_format:
        value_format_name:
        dimension: conditional_installs
        _kind_hint: dimension
        _type_hint: number
      - category: measure
        expression:
        label: install_sum_cond
        value_format:
        value_format_name:
        based_on: conditional_installs
        _kind_hint: measure
        measure: install_sum_cond
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${install_sum_cond}"
        label: CPI
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpi
        _type_hint: number
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      hidden_pivots: {}
      hidden_fields: [click_sum, install_sum, impression_sum, cpc, cpi, cpm, ipm,
        ctr, cti, cost_sum]
    - model: fruit-merge
      explore: session_pdt
      type: table
      fields: [session_pdt.installed_date, ret_1, ret_2, ret_3, ret_4, ret_5, ret_7,
        player_1, player_2, player_3, player_4, player_5, player_7]
      fill_fields: [session_pdt.installed_date]
      sorts: [session_pdt.installed_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Ret 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: ret_1
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_1: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Ret 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: ret_2
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_2: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Ret 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: ret_3
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_3: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Ret 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: ret_4
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_4: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Ret 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: ret_5
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_5: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Ret 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: ret_7
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_7: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Player 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: player_1
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Player 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: player_2
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Player 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: player_3
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Player 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: player_4
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Player 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: player_5
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Player 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: player_7
        type: count_distinct
        _type_hint: number
      - category: table_calculation
        expression: "${ret_1}/${player_1}"
        label: Retention 1
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_1
        _type_hint: number
      - category: table_calculation
        expression: "${ret_2}/${player_2}"
        label: Retention 2
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_2
        _type_hint: number
      - category: table_calculation
        expression: "${ret_3}/${player_3}"
        label: Retention 3
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_3
        _type_hint: number
      - category: table_calculation
        expression: "${ret_4}/${player_4}"
        label: Retention 4
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_4
        _type_hint: number
      - category: table_calculation
        expression: "${ret_5}/${player_5}"
        label: Retention 5
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_5
        _type_hint: number
      - category: table_calculation
        expression: "${ret_7}/${player_7}"
        label: Retention 7
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_7
        _type_hint: number
      hidden_pivots: {}
      hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
        player_3, player_4, player_5, player_7]
      join_fields:
      - field_name: session_pdt.installed_date
        source_field_name: fruit_merge_cost.date_date
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Install Date
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      fruit_merge_cost.date_date: Install Date
      cost_sum: Spend
      install_sum_cond: Installs
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      cost_sum:
        is_active: false
    series_text_format:
      fruit_merge_cost.date_date:
        align: center
      cost_sum:
        align: center
      install_sum_cond:
        align: center
      cpc:
        align: center
      cti:
        align: center
      ctr:
        align: center
      ipm:
        align: center
      cpi:
        align: center
      cpm:
        align: center
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
    table_theme: white
    enable_conditional_formatting: false
    header_font_color: "#E52592"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, install_sum, click_sum, impression_sum,
      cost_sum, cpc, install_sum_cond, cti, ctr, ipm, cpm, cpi, retention_5, retention_4,
      retention_1, retention_2, retention_3]
    type: looker_line
    listen:
    - Creative: fruit_merge_cost.ad_network
      Campaign: fruit_merge_cost.campaign_network
      Partner: fruit_merge_cost.partner
      Adgroup: fruit_merge_cost.adgroup_network
      Install Date: fruit_merge_cost.date_date
      Country Code: fruit_merge_cost.country_code
    - Creative: session_pdt.creative
      Campaign: session_pdt.campaign
      Partner: session_pdt.network
      Adgroup: session_pdt.adgroup
      Install Date: session_pdt.installed_date
      Country Code: session_pdt.country
    row: 53
    col: 12
    width: 12
    height: 8
  - title: CPI (Pivoted)
    name: CPI (Pivoted)
    model: fruit-merge
    explore: fruit_merge_cost
    type: looker_line
    fields: [fruit_merge_cost.date_date, cost_sum, click_sum, install_sum, impression_sum,
      install_sum_cond, fruit_merge_cost.pivot_campaign_list]
    pivots: [fruit_merge_cost.pivot_campaign_list]
    fill_fields: [fruit_merge_cost.date_date]
    filters:
      fruit_merge_cost.creative: ''
      fruit_merge_cost.adgroup: ''
      fruit_merge_cost.campaign: ''
    sorts: [fruit_merge_cost.pivot_campaign_list, fruit_merge_cost.date_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: cost_sum
      based_on: fruit_merge_cost.ad_spend_network
      _kind_hint: measure
      measure: cost_sum
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: click_sum
      based_on: fruit_merge_cost.clicks_network
      _kind_hint: measure
      measure: click_sum
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${cost_sum}/${click_sum}"
      label: CPC
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: cpc
      _type_hint: number
    - category: measure
      expression: ''
      label: install_sum
      based_on: fruit_merge_cost.installs_network
      _kind_hint: measure
      measure: install_sum
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${install_sum}/${click_sum}"
      label: CTI
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: cti
      _type_hint: number
    - category: measure
      expression: ''
      label: impression_sum
      based_on: fruit_merge_cost.impressions_network
      _kind_hint: measure
      measure: impression_sum
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${click_sum}/${impression_sum}"
      label: CTR
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: ctr
      _type_hint: number
    - category: table_calculation
      expression: 1000*(${install_sum}/${impression_sum})
      label: IPM
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: ipm
      _type_hint: number
    - category: table_calculation
      expression: 1000*(${cost_sum}/${impression_sum})
      label: CPM
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: cpm
      _type_hint: number
    - category: dimension
      expression: if(${fruit_merge_cost.partner}="Organic",${fruit_merge_cost.installs},${fruit_merge_cost.installs_network})
      label: conditional_installs
      value_format:
      value_format_name:
      dimension: conditional_installs
      _kind_hint: dimension
      _type_hint: number
    - category: measure
      expression:
      label: install_sum_cond
      value_format:
      value_format_name:
      based_on: conditional_installs
      _kind_hint: measure
      measure: install_sum_cond
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${cost_sum}/${install_sum_cond}"
      label: CPI
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: cpi
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [cost_sum, click_sum, install_sum, impression_sum, install_sum_cond,
      cpc, cti, ctr, ipm, cpm]
    listen:
      Creative: fruit_merge_cost.ad_network
      Campaign: fruit_merge_cost.campaign_network
      Partner: fruit_merge_cost.partner
      Adgroup: fruit_merge_cost.adgroup_network
      Install Date: fruit_merge_cost.date_date
      Country Code: fruit_merge_cost.country_code
    row: 0
    col: 12
    width: 12
    height: 9
  - name: Retention 5
    title: Retention 5
    merged_queries:
    - model: fruit-merge
      explore: fruit_merge_cost
      type: looker_line
      fields: [fruit_merge_cost.date_date, cost_sum, click_sum, install_sum, impression_sum,
        install_sum_cond]
      fill_fields: [fruit_merge_cost.date_date]
      filters:
        fruit_merge_cost.partner: ''
        fruit_merge_cost.date_date: ''
        fruit_merge_cost.creative: ''
        fruit_merge_cost.adgroup: ''
        fruit_merge_cost.campaign: ''
      sorts: [fruit_merge_cost.date_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: ''
        label: cost_sum
        based_on: fruit_merge_cost.ad_spend_network
        _kind_hint: measure
        measure: cost_sum
        type: sum
        _type_hint: number
      - category: measure
        expression: ''
        label: click_sum
        based_on: fruit_merge_cost.clicks_network
        _kind_hint: measure
        measure: click_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${click_sum}"
        label: CPC
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpc
        _type_hint: number
      - category: measure
        expression: ''
        label: install_sum
        based_on: fruit_merge_cost.installs_network
        _kind_hint: measure
        measure: install_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${install_sum}/${click_sum}"
        label: CTI
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: cti
        _type_hint: number
      - category: measure
        expression: ''
        label: impression_sum
        based_on: fruit_merge_cost.impressions_network
        _kind_hint: measure
        measure: impression_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${click_sum}/${impression_sum}"
        label: CTR
        value_format:
        value_format_name: percent_2
        _kind_hint: measure
        table_calculation: ctr
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${install_sum}/${impression_sum})
        label: IPM
        value_format:
        value_format_name: decimal_2
        _kind_hint: measure
        table_calculation: ipm
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${cost_sum}/${impression_sum})
        label: CPM
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpm
        _type_hint: number
      - category: dimension
        expression: if(${fruit_merge_cost.partner}="Organic",${fruit_merge_cost.installs},${fruit_merge_cost.installs_network})
        label: conditional_installs
        value_format:
        value_format_name:
        dimension: conditional_installs
        _kind_hint: dimension
        _type_hint: number
      - category: measure
        expression:
        label: install_sum_cond
        value_format:
        value_format_name:
        based_on: conditional_installs
        _kind_hint: measure
        measure: install_sum_cond
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${install_sum_cond}"
        label: CPI
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpi
        _type_hint: number
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      hidden_pivots: {}
      hidden_fields: [click_sum, install_sum, impression_sum, cpc, cpi, cpm, ipm,
        ctr, cti, cost_sum]
    - model: fruit-merge
      explore: session_pdt
      type: table
      fields: [session_pdt.installed_date, ret_1, ret_2, ret_3, ret_4, ret_5, ret_7,
        player_1, player_2, player_3, player_4, player_5, player_7]
      fill_fields: [session_pdt.installed_date]
      sorts: [session_pdt.installed_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Ret 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: ret_1
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_1: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Ret 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: ret_2
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_2: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Ret 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: ret_3
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_3: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Ret 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: ret_4
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_4: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Ret 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: ret_5
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_5: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Ret 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: ret_7
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_7: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Player 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: player_1
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Player 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: player_2
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Player 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: player_3
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Player 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: player_4
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Player 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: player_5
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Player 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: player_7
        type: count_distinct
        _type_hint: number
      - category: table_calculation
        expression: "${ret_1}/${player_1}"
        label: Retention 1
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_1
        _type_hint: number
      - category: table_calculation
        expression: "${ret_2}/${player_2}"
        label: Retention 2
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_2
        _type_hint: number
      - category: table_calculation
        expression: "${ret_3}/${player_3}"
        label: Retention 3
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_3
        _type_hint: number
      - category: table_calculation
        expression: "${ret_4}/${player_4}"
        label: Retention 4
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_4
        _type_hint: number
      - category: table_calculation
        expression: "${ret_5}/${player_5}"
        label: Retention 5
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_5
        _type_hint: number
      - category: table_calculation
        expression: "${ret_7}/${player_7}"
        label: Retention 7
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_7
        _type_hint: number
      hidden_pivots: {}
      hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
        player_3, player_4, player_5, player_7]
      join_fields:
      - field_name: session_pdt.installed_date
        source_field_name: fruit_merge_cost.date_date
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Install Date
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      fruit_merge_cost.date_date: Install Date
      cost_sum: Spend
      install_sum_cond: Installs
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      cost_sum:
        is_active: false
    series_text_format:
      fruit_merge_cost.date_date:
        align: center
      cost_sum:
        align: center
      install_sum_cond:
        align: center
      cpc:
        align: center
      cti:
        align: center
      ctr:
        align: center
      ipm:
        align: center
      cpi:
        align: center
      cpm:
        align: center
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
    table_theme: white
    enable_conditional_formatting: false
    header_font_color: "#E52592"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, install_sum, click_sum, impression_sum,
      cost_sum, cpc, install_sum_cond, cti, ctr, ipm, cpm, cpi, retention_4, retention_1,
      retention_2, retention_3, retention_7]
    type: looker_line
    listen:
    - Creative: fruit_merge_cost.ad_network
      Campaign: fruit_merge_cost.campaign_network
      Partner: fruit_merge_cost.partner
      Adgroup: fruit_merge_cost.adgroup_network
      Install Date: fruit_merge_cost.date_date
      Country Code: fruit_merge_cost.country_code
    - Creative: session_pdt.creative
      Campaign: session_pdt.campaign
      Partner: session_pdt.network
      Adgroup: session_pdt.adgroup
      Install Date: session_pdt.installed_date
      Country Code: session_pdt.country
    row: 53
    col: 0
    width: 12
    height: 8
  - name: CPC
    title: CPC
    merged_queries:
    - model: fruit-merge
      explore: fruit_merge_cost
      type: looker_line
      fields: [fruit_merge_cost.date_date, cost_sum, click_sum, install_sum, impression_sum,
        install_sum_cond]
      fill_fields: [fruit_merge_cost.date_date]
      filters:
        fruit_merge_cost.partner: ''
        fruit_merge_cost.date_date: ''
        fruit_merge_cost.creative: ''
        fruit_merge_cost.adgroup: ''
        fruit_merge_cost.campaign: ''
      sorts: [fruit_merge_cost.date_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: ''
        label: cost_sum
        based_on: fruit_merge_cost.ad_spend_network
        _kind_hint: measure
        measure: cost_sum
        type: sum
        _type_hint: number
      - category: measure
        expression: ''
        label: click_sum
        based_on: fruit_merge_cost.clicks_network
        _kind_hint: measure
        measure: click_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${click_sum}"
        label: CPC
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpc
        _type_hint: number
      - category: measure
        expression: ''
        label: install_sum
        based_on: fruit_merge_cost.installs_network
        _kind_hint: measure
        measure: install_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${install_sum}/${click_sum}"
        label: CTI
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: cti
        _type_hint: number
      - category: measure
        expression: ''
        label: impression_sum
        based_on: fruit_merge_cost.impressions_network
        _kind_hint: measure
        measure: impression_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${click_sum}/${impression_sum}"
        label: CTR
        value_format:
        value_format_name: percent_2
        _kind_hint: measure
        table_calculation: ctr
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${install_sum}/${impression_sum})
        label: IPM
        value_format:
        value_format_name: decimal_2
        _kind_hint: measure
        table_calculation: ipm
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${cost_sum}/${impression_sum})
        label: CPM
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpm
        _type_hint: number
      - category: dimension
        expression: if(${fruit_merge_cost.partner}="Organic",${fruit_merge_cost.installs},${fruit_merge_cost.installs_network})
        label: conditional_installs
        value_format:
        value_format_name:
        dimension: conditional_installs
        _kind_hint: dimension
        _type_hint: number
      - category: measure
        expression:
        label: install_sum_cond
        value_format:
        value_format_name:
        based_on: conditional_installs
        _kind_hint: measure
        measure: install_sum_cond
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${install_sum_cond}"
        label: CPI
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpi
        _type_hint: number
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      hidden_pivots: {}
      hidden_fields: [click_sum, install_sum, impression_sum, cpc, cpi, cpm, ipm,
        ctr, cti, cost_sum]
    - model: fruit-merge
      explore: session_pdt
      type: table
      fields: [session_pdt.installed_date, ret_1, ret_2, ret_3, ret_4, ret_5, ret_7,
        player_1, player_2, player_3, player_4, player_5, player_7]
      fill_fields: [session_pdt.installed_date]
      sorts: [session_pdt.installed_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Ret 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: ret_1
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_1: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Ret 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: ret_2
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_2: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Ret 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: ret_3
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_3: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Ret 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: ret_4
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_4: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Ret 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: ret_5
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_5: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Ret 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: ret_7
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_7: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Player 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: player_1
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Player 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: player_2
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Player 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: player_3
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Player 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: player_4
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Player 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: player_5
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Player 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: player_7
        type: count_distinct
        _type_hint: number
      - category: table_calculation
        expression: "${ret_1}/${player_1}"
        label: Retention 1
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_1
        _type_hint: number
      - category: table_calculation
        expression: "${ret_2}/${player_2}"
        label: Retention 2
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_2
        _type_hint: number
      - category: table_calculation
        expression: "${ret_3}/${player_3}"
        label: Retention 3
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_3
        _type_hint: number
      - category: table_calculation
        expression: "${ret_4}/${player_4}"
        label: Retention 4
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_4
        _type_hint: number
      - category: table_calculation
        expression: "${ret_5}/${player_5}"
        label: Retention 5
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_5
        _type_hint: number
      - category: table_calculation
        expression: "${ret_7}/${player_7}"
        label: Retention 7
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_7
        _type_hint: number
      hidden_pivots: {}
      hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
        player_3, player_4, player_5, player_7]
      join_fields:
      - field_name: session_pdt.installed_date
        source_field_name: fruit_merge_cost.date_date
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      fruit_merge_cost.date_date: Install Date
      cost_sum: Spend
      install_sum_cond: Installs
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      cost_sum:
        is_active: false
    series_text_format:
      fruit_merge_cost.date_date:
        align: center
      cost_sum:
        align: center
      install_sum_cond:
        align: center
      cpc:
        align: center
      cti:
        align: center
      ctr:
        align: center
      ipm:
        align: center
      cpi:
        align: center
      cpm:
        align: center
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
    table_theme: white
    enable_conditional_formatting: false
    header_font_color: "#E52592"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, install_sum, click_sum, impression_sum,
      cost_sum, install_sum_cond, cti, ctr, ipm, cpm, cpi, retention_4, retention_1,
      retention_2, retention_3, retention_7, retention_5]
    type: looker_line
    listen:
    - Creative: fruit_merge_cost.ad_network
      Campaign: fruit_merge_cost.campaign_network
      Partner: fruit_merge_cost.partner
      Adgroup: fruit_merge_cost.adgroup_network
      Install Date: fruit_merge_cost.date_date
      Country Code: fruit_merge_cost.country_code
    - Creative: session_pdt.creative
      Campaign: session_pdt.campaign
      Partner: session_pdt.network
      Adgroup: session_pdt.adgroup
      Install Date: session_pdt.installed_date
      Country Code: session_pdt.country
    row: 18
    col: 12
    width: 12
    height: 9
  - name: CTI
    title: CTI
    merged_queries:
    - model: fruit-merge
      explore: fruit_merge_cost
      type: looker_line
      fields: [fruit_merge_cost.date_date, cost_sum, click_sum, install_sum, impression_sum,
        install_sum_cond]
      fill_fields: [fruit_merge_cost.date_date]
      filters:
        fruit_merge_cost.partner: ''
        fruit_merge_cost.date_date: ''
        fruit_merge_cost.creative: ''
        fruit_merge_cost.adgroup: ''
        fruit_merge_cost.campaign: ''
      sorts: [fruit_merge_cost.date_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: ''
        label: cost_sum
        based_on: fruit_merge_cost.ad_spend_network
        _kind_hint: measure
        measure: cost_sum
        type: sum
        _type_hint: number
      - category: measure
        expression: ''
        label: click_sum
        based_on: fruit_merge_cost.clicks_network
        _kind_hint: measure
        measure: click_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${click_sum}"
        label: CPC
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpc
        _type_hint: number
      - category: measure
        expression: ''
        label: install_sum
        based_on: fruit_merge_cost.installs_network
        _kind_hint: measure
        measure: install_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${install_sum}/${click_sum}"
        label: CTI
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: cti
        _type_hint: number
      - category: measure
        expression: ''
        label: impression_sum
        based_on: fruit_merge_cost.impressions_network
        _kind_hint: measure
        measure: impression_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${click_sum}/${impression_sum}"
        label: CTR
        value_format:
        value_format_name: percent_2
        _kind_hint: measure
        table_calculation: ctr
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${install_sum}/${impression_sum})
        label: IPM
        value_format:
        value_format_name: decimal_2
        _kind_hint: measure
        table_calculation: ipm
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${cost_sum}/${impression_sum})
        label: CPM
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpm
        _type_hint: number
      - category: dimension
        expression: if(${fruit_merge_cost.partner}="Organic",${fruit_merge_cost.installs},${fruit_merge_cost.installs_network})
        label: conditional_installs
        value_format:
        value_format_name:
        dimension: conditional_installs
        _kind_hint: dimension
        _type_hint: number
      - category: measure
        expression:
        label: install_sum_cond
        value_format:
        value_format_name:
        based_on: conditional_installs
        _kind_hint: measure
        measure: install_sum_cond
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${install_sum_cond}"
        label: CPI
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpi
        _type_hint: number
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      hidden_pivots: {}
      hidden_fields: [click_sum, install_sum, impression_sum, cpc, cpi, cpm, ipm,
        ctr, cti, cost_sum]
    - model: fruit-merge
      explore: session_pdt
      type: table
      fields: [session_pdt.installed_date, ret_1, ret_2, ret_3, ret_4, ret_5, ret_7,
        player_1, player_2, player_3, player_4, player_5, player_7]
      fill_fields: [session_pdt.installed_date]
      sorts: [session_pdt.installed_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Ret 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: ret_1
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_1: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Ret 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: ret_2
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_2: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Ret 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: ret_3
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_3: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Ret 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: ret_4
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_4: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Ret 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: ret_5
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_5: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Ret 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: ret_7
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_7: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Player 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: player_1
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Player 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: player_2
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Player 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: player_3
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Player 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: player_4
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Player 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: player_5
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Player 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: player_7
        type: count_distinct
        _type_hint: number
      - category: table_calculation
        expression: "${ret_1}/${player_1}"
        label: Retention 1
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_1
        _type_hint: number
      - category: table_calculation
        expression: "${ret_2}/${player_2}"
        label: Retention 2
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_2
        _type_hint: number
      - category: table_calculation
        expression: "${ret_3}/${player_3}"
        label: Retention 3
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_3
        _type_hint: number
      - category: table_calculation
        expression: "${ret_4}/${player_4}"
        label: Retention 4
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_4
        _type_hint: number
      - category: table_calculation
        expression: "${ret_5}/${player_5}"
        label: Retention 5
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_5
        _type_hint: number
      - category: table_calculation
        expression: "${ret_7}/${player_7}"
        label: Retention 7
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_7
        _type_hint: number
      hidden_pivots: {}
      hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
        player_3, player_4, player_5, player_7]
      join_fields:
      - field_name: session_pdt.installed_date
        source_field_name: fruit_merge_cost.date_date
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      fruit_merge_cost.date_date: Install Date
      cost_sum: Spend
      install_sum_cond: Installs
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      cost_sum:
        is_active: false
    series_text_format:
      fruit_merge_cost.date_date:
        align: center
      cost_sum:
        align: center
      install_sum_cond:
        align: center
      cpc:
        align: center
      cti:
        align: center
      ctr:
        align: center
      ipm:
        align: center
      cpi:
        align: center
      cpm:
        align: center
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
    table_theme: white
    enable_conditional_formatting: false
    header_font_color: "#E52592"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, install_sum, click_sum, impression_sum,
      cost_sum, install_sum_cond, ctr, ipm, cpm, cpi, retention_4, retention_1, retention_2,
      retention_3, retention_7, retention_5, cpc]
    type: looker_line
    listen:
    - Creative: fruit_merge_cost.ad_network
      Campaign: fruit_merge_cost.campaign_network
      Partner: fruit_merge_cost.partner
      Adgroup: fruit_merge_cost.adgroup_network
      Install Date: fruit_merge_cost.date_date
      Country Code: fruit_merge_cost.country_code
    - Creative: session_pdt.creative
      Campaign: session_pdt.campaign
      Partner: session_pdt.network
      Adgroup: session_pdt.adgroup
      Install Date: session_pdt.installed_date
      Country Code: session_pdt.country
    row: 9
    col: 12
    width: 12
    height: 9
  - name: CTR
    title: CTR
    merged_queries:
    - model: fruit-merge
      explore: fruit_merge_cost
      type: looker_line
      fields: [fruit_merge_cost.date_date, cost_sum, click_sum, install_sum, impression_sum,
        install_sum_cond]
      fill_fields: [fruit_merge_cost.date_date]
      filters:
        fruit_merge_cost.partner: ''
        fruit_merge_cost.date_date: ''
        fruit_merge_cost.creative: ''
        fruit_merge_cost.adgroup: ''
        fruit_merge_cost.campaign: ''
      sorts: [fruit_merge_cost.date_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: ''
        label: cost_sum
        based_on: fruit_merge_cost.ad_spend_network
        _kind_hint: measure
        measure: cost_sum
        type: sum
        _type_hint: number
      - category: measure
        expression: ''
        label: click_sum
        based_on: fruit_merge_cost.clicks_network
        _kind_hint: measure
        measure: click_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${click_sum}"
        label: CPC
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpc
        _type_hint: number
      - category: measure
        expression: ''
        label: install_sum
        based_on: fruit_merge_cost.installs_network
        _kind_hint: measure
        measure: install_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${install_sum}/${click_sum}"
        label: CTI
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: cti
        _type_hint: number
      - category: measure
        expression: ''
        label: impression_sum
        based_on: fruit_merge_cost.impressions_network
        _kind_hint: measure
        measure: impression_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${click_sum}/${impression_sum}"
        label: CTR
        value_format:
        value_format_name: percent_2
        _kind_hint: measure
        table_calculation: ctr
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${install_sum}/${impression_sum})
        label: IPM
        value_format:
        value_format_name: decimal_2
        _kind_hint: measure
        table_calculation: ipm
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${cost_sum}/${impression_sum})
        label: CPM
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpm
        _type_hint: number
      - category: dimension
        expression: if(${fruit_merge_cost.partner}="Organic",${fruit_merge_cost.installs},${fruit_merge_cost.installs_network})
        label: conditional_installs
        value_format:
        value_format_name:
        dimension: conditional_installs
        _kind_hint: dimension
        _type_hint: number
      - category: measure
        expression:
        label: install_sum_cond
        value_format:
        value_format_name:
        based_on: conditional_installs
        _kind_hint: measure
        measure: install_sum_cond
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${install_sum_cond}"
        label: CPI
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpi
        _type_hint: number
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      hidden_pivots: {}
      hidden_fields: [click_sum, install_sum, impression_sum, cpc, cpi, cpm, ipm,
        ctr, cti, cost_sum]
    - model: fruit-merge
      explore: session_pdt
      type: table
      fields: [session_pdt.installed_date, ret_1, ret_2, ret_3, ret_4, ret_5, ret_7,
        player_1, player_2, player_3, player_4, player_5, player_7]
      fill_fields: [session_pdt.installed_date]
      sorts: [session_pdt.installed_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Ret 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: ret_1
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_1: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Ret 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: ret_2
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_2: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Ret 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: ret_3
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_3: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Ret 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: ret_4
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_4: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Ret 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: ret_5
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_5: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Ret 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: ret_7
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_7: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Player 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: player_1
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Player 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: player_2
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Player 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: player_3
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Player 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: player_4
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Player 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: player_5
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Player 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: player_7
        type: count_distinct
        _type_hint: number
      - category: table_calculation
        expression: "${ret_1}/${player_1}"
        label: Retention 1
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_1
        _type_hint: number
      - category: table_calculation
        expression: "${ret_2}/${player_2}"
        label: Retention 2
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_2
        _type_hint: number
      - category: table_calculation
        expression: "${ret_3}/${player_3}"
        label: Retention 3
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_3
        _type_hint: number
      - category: table_calculation
        expression: "${ret_4}/${player_4}"
        label: Retention 4
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_4
        _type_hint: number
      - category: table_calculation
        expression: "${ret_5}/${player_5}"
        label: Retention 5
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_5
        _type_hint: number
      - category: table_calculation
        expression: "${ret_7}/${player_7}"
        label: Retention 7
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_7
        _type_hint: number
      hidden_pivots: {}
      hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
        player_3, player_4, player_5, player_7]
      join_fields:
      - field_name: session_pdt.installed_date
        source_field_name: fruit_merge_cost.date_date
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      fruit_merge_cost.date_date: Install Date
      cost_sum: Spend
      install_sum_cond: Installs
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      cost_sum:
        is_active: false
    series_text_format:
      fruit_merge_cost.date_date:
        align: center
      cost_sum:
        align: center
      install_sum_cond:
        align: center
      cpc:
        align: center
      cti:
        align: center
      ctr:
        align: center
      ipm:
        align: center
      cpi:
        align: center
      cpm:
        align: center
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
    table_theme: white
    enable_conditional_formatting: false
    header_font_color: "#E52592"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, install_sum, click_sum, impression_sum,
      cost_sum, install_sum_cond, ipm, cpm, cpi, retention_4, retention_1, retention_2,
      retention_3, retention_7, retention_5, cpc, cti]
    type: looker_line
    listen:
    - Creative: fruit_merge_cost.ad_network
      Campaign: fruit_merge_cost.campaign_network
      Partner: fruit_merge_cost.partner
      Adgroup: fruit_merge_cost.adgroup_network
      Install Date: fruit_merge_cost.date_date
      Country Code: fruit_merge_cost.country_code
    - Creative: session_pdt.creative
      Campaign: session_pdt.campaign
      Partner: session_pdt.network
      Adgroup: session_pdt.adgroup
      Install Date: session_pdt.installed_date
      Country Code: session_pdt.country
    row: 18
    col: 0
    width: 12
    height: 9
  - name: IPM
    title: IPM
    merged_queries:
    - model: fruit-merge
      explore: fruit_merge_cost
      type: looker_line
      fields: [fruit_merge_cost.date_date, cost_sum, click_sum, install_sum, impression_sum,
        install_sum_cond]
      fill_fields: [fruit_merge_cost.date_date]
      filters:
        fruit_merge_cost.partner: ''
        fruit_merge_cost.date_date: ''
        fruit_merge_cost.creative: ''
        fruit_merge_cost.adgroup: ''
        fruit_merge_cost.campaign: ''
      sorts: [fruit_merge_cost.date_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: ''
        label: cost_sum
        based_on: fruit_merge_cost.ad_spend_network
        _kind_hint: measure
        measure: cost_sum
        type: sum
        _type_hint: number
      - category: measure
        expression: ''
        label: click_sum
        based_on: fruit_merge_cost.clicks_network
        _kind_hint: measure
        measure: click_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${click_sum}"
        label: CPC
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpc
        _type_hint: number
      - category: measure
        expression: ''
        label: install_sum
        based_on: fruit_merge_cost.installs_network
        _kind_hint: measure
        measure: install_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${install_sum}/${click_sum}"
        label: CTI
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: cti
        _type_hint: number
      - category: measure
        expression: ''
        label: impression_sum
        based_on: fruit_merge_cost.impressions_network
        _kind_hint: measure
        measure: impression_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${click_sum}/${impression_sum}"
        label: CTR
        value_format:
        value_format_name: percent_2
        _kind_hint: measure
        table_calculation: ctr
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${install_sum}/${impression_sum})
        label: IPM
        value_format:
        value_format_name: decimal_2
        _kind_hint: measure
        table_calculation: ipm
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${cost_sum}/${impression_sum})
        label: CPM
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpm
        _type_hint: number
      - category: dimension
        expression: if(${fruit_merge_cost.partner}="Organic",${fruit_merge_cost.installs},${fruit_merge_cost.installs_network})
        label: conditional_installs
        value_format:
        value_format_name:
        dimension: conditional_installs
        _kind_hint: dimension
        _type_hint: number
      - category: measure
        expression:
        label: install_sum_cond
        value_format:
        value_format_name:
        based_on: conditional_installs
        _kind_hint: measure
        measure: install_sum_cond
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${install_sum_cond}"
        label: CPI
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpi
        _type_hint: number
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      hidden_pivots: {}
      hidden_fields: [click_sum, install_sum, impression_sum, cpc, cpi, cpm, ipm,
        ctr, cti, cost_sum]
    - model: fruit-merge
      explore: session_pdt
      type: table
      fields: [session_pdt.installed_date, ret_1, ret_2, ret_3, ret_4, ret_5, ret_7,
        player_1, player_2, player_3, player_4, player_5, player_7]
      fill_fields: [session_pdt.installed_date]
      sorts: [session_pdt.installed_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Ret 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: ret_1
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_1: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Ret 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: ret_2
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_2: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Ret 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: ret_3
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_3: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Ret 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: ret_4
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_4: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Ret 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: ret_5
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_5: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Ret 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: ret_7
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_7: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Player 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: player_1
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Player 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: player_2
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Player 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: player_3
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Player 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: player_4
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Player 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: player_5
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Player 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: player_7
        type: count_distinct
        _type_hint: number
      - category: table_calculation
        expression: "${ret_1}/${player_1}"
        label: Retention 1
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_1
        _type_hint: number
      - category: table_calculation
        expression: "${ret_2}/${player_2}"
        label: Retention 2
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_2
        _type_hint: number
      - category: table_calculation
        expression: "${ret_3}/${player_3}"
        label: Retention 3
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_3
        _type_hint: number
      - category: table_calculation
        expression: "${ret_4}/${player_4}"
        label: Retention 4
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_4
        _type_hint: number
      - category: table_calculation
        expression: "${ret_5}/${player_5}"
        label: Retention 5
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_5
        _type_hint: number
      - category: table_calculation
        expression: "${ret_7}/${player_7}"
        label: Retention 7
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_7
        _type_hint: number
      hidden_pivots: {}
      hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
        player_3, player_4, player_5, player_7]
      join_fields:
      - field_name: session_pdt.installed_date
        source_field_name: fruit_merge_cost.date_date
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      fruit_merge_cost.date_date: Install Date
      cost_sum: Spend
      install_sum_cond: Installs
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      cost_sum:
        is_active: false
    series_text_format:
      fruit_merge_cost.date_date:
        align: center
      cost_sum:
        align: center
      install_sum_cond:
        align: center
      cpc:
        align: center
      cti:
        align: center
      ctr:
        align: center
      ipm:
        align: center
      cpi:
        align: center
      cpm:
        align: center
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
    table_theme: white
    enable_conditional_formatting: false
    header_font_color: "#E52592"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, install_sum, click_sum, impression_sum,
      cost_sum, install_sum_cond, cpm, cpi, retention_4, retention_1, retention_2,
      retention_3, retention_7, retention_5, cpc, cti, ctr]
    type: looker_line
    listen:
    - Creative: fruit_merge_cost.ad_network
      Campaign: fruit_merge_cost.campaign_network
      Partner: fruit_merge_cost.partner
      Adgroup: fruit_merge_cost.adgroup_network
      Install Date: fruit_merge_cost.date_date
      Country Code: fruit_merge_cost.country_code
    - Creative: session_pdt.creative
      Campaign: session_pdt.campaign
      Partner: session_pdt.network
      Adgroup: session_pdt.adgroup
      Install Date: session_pdt.installed_date
      Country Code: session_pdt.country
    row: 27
    col: 0
    width: 12
    height: 9
  - name: CPM
    title: CPM
    merged_queries:
    - model: fruit-merge
      explore: fruit_merge_cost
      type: looker_line
      fields: [fruit_merge_cost.date_date, cost_sum, click_sum, install_sum, impression_sum,
        install_sum_cond]
      fill_fields: [fruit_merge_cost.date_date]
      filters:
        fruit_merge_cost.partner: ''
        fruit_merge_cost.date_date: ''
        fruit_merge_cost.creative: ''
        fruit_merge_cost.adgroup: ''
        fruit_merge_cost.campaign: ''
      sorts: [fruit_merge_cost.date_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: ''
        label: cost_sum
        based_on: fruit_merge_cost.ad_spend_network
        _kind_hint: measure
        measure: cost_sum
        type: sum
        _type_hint: number
      - category: measure
        expression: ''
        label: click_sum
        based_on: fruit_merge_cost.clicks_network
        _kind_hint: measure
        measure: click_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${click_sum}"
        label: CPC
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpc
        _type_hint: number
      - category: measure
        expression: ''
        label: install_sum
        based_on: fruit_merge_cost.installs_network
        _kind_hint: measure
        measure: install_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${install_sum}/${click_sum}"
        label: CTI
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: cti
        _type_hint: number
      - category: measure
        expression: ''
        label: impression_sum
        based_on: fruit_merge_cost.impressions_network
        _kind_hint: measure
        measure: impression_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${click_sum}/${impression_sum}"
        label: CTR
        value_format:
        value_format_name: percent_2
        _kind_hint: measure
        table_calculation: ctr
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${install_sum}/${impression_sum})
        label: IPM
        value_format:
        value_format_name: decimal_2
        _kind_hint: measure
        table_calculation: ipm
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${cost_sum}/${impression_sum})
        label: CPM
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpm
        _type_hint: number
      - category: dimension
        expression: if(${fruit_merge_cost.partner}="Organic",${fruit_merge_cost.installs},${fruit_merge_cost.installs_network})
        label: conditional_installs
        value_format:
        value_format_name:
        dimension: conditional_installs
        _kind_hint: dimension
        _type_hint: number
      - category: measure
        expression:
        label: install_sum_cond
        value_format:
        value_format_name:
        based_on: conditional_installs
        _kind_hint: measure
        measure: install_sum_cond
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${install_sum_cond}"
        label: CPI
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpi
        _type_hint: number
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      hidden_pivots: {}
      hidden_fields: [click_sum, install_sum, impression_sum, cpc, cpi, cpm, ipm,
        ctr, cti, cost_sum]
    - model: fruit-merge
      explore: session_pdt
      type: table
      fields: [session_pdt.installed_date, ret_1, ret_2, ret_3, ret_4, ret_5, ret_7,
        player_1, player_2, player_3, player_4, player_5, player_7]
      fill_fields: [session_pdt.installed_date]
      sorts: [session_pdt.installed_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Ret 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: ret_1
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_1: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Ret 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: ret_2
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_2: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Ret 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: ret_3
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_3: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Ret 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: ret_4
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_4: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Ret 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: ret_5
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_5: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Ret 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: ret_7
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_7: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Player 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: player_1
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Player 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: player_2
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Player 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: player_3
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Player 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: player_4
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Player 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: player_5
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Player 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: player_7
        type: count_distinct
        _type_hint: number
      - category: table_calculation
        expression: "${ret_1}/${player_1}"
        label: Retention 1
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_1
        _type_hint: number
      - category: table_calculation
        expression: "${ret_2}/${player_2}"
        label: Retention 2
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_2
        _type_hint: number
      - category: table_calculation
        expression: "${ret_3}/${player_3}"
        label: Retention 3
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_3
        _type_hint: number
      - category: table_calculation
        expression: "${ret_4}/${player_4}"
        label: Retention 4
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_4
        _type_hint: number
      - category: table_calculation
        expression: "${ret_5}/${player_5}"
        label: Retention 5
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_5
        _type_hint: number
      - category: table_calculation
        expression: "${ret_7}/${player_7}"
        label: Retention 7
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_7
        _type_hint: number
      hidden_pivots: {}
      hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
        player_3, player_4, player_5, player_7]
      join_fields:
      - field_name: session_pdt.installed_date
        source_field_name: fruit_merge_cost.date_date
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      fruit_merge_cost.date_date: Install Date
      cost_sum: Spend
      install_sum_cond: Installs
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      cost_sum:
        is_active: false
    series_text_format:
      fruit_merge_cost.date_date:
        align: center
      cost_sum:
        align: center
      install_sum_cond:
        align: center
      cpc:
        align: center
      cti:
        align: center
      ctr:
        align: center
      ipm:
        align: center
      cpi:
        align: center
      cpm:
        align: center
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
    table_theme: white
    enable_conditional_formatting: false
    header_font_color: "#E52592"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, install_sum, click_sum, impression_sum,
      cost_sum, install_sum_cond, cpi, retention_4, retention_1, retention_2, retention_3,
      retention_7, retention_5, cpc, cti, ctr, ipm]
    type: looker_line
    listen:
    - Creative: fruit_merge_cost.ad_network
      Campaign: fruit_merge_cost.campaign_network
      Partner: fruit_merge_cost.partner
      Adgroup: fruit_merge_cost.adgroup_network
      Install Date: fruit_merge_cost.date_date
      Country Code: fruit_merge_cost.country_code
    - Creative: session_pdt.creative
      Campaign: session_pdt.campaign
      Partner: session_pdt.network
      Adgroup: session_pdt.adgroup
      Install Date: session_pdt.installed_date
      Country Code: session_pdt.country
    row: 9
    col: 0
    width: 12
    height: 9
  - name: CPI
    title: CPI
    merged_queries:
    - model: fruit-merge
      explore: fruit_merge_cost
      type: looker_line
      fields: [fruit_merge_cost.date_date, cost_sum, click_sum, install_sum, impression_sum,
        install_sum_cond]
      fill_fields: [fruit_merge_cost.date_date]
      filters:
        fruit_merge_cost.partner: ''
        fruit_merge_cost.date_date: ''
        fruit_merge_cost.creative: ''
        fruit_merge_cost.adgroup: ''
        fruit_merge_cost.campaign: ''
      sorts: [fruit_merge_cost.date_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: ''
        label: cost_sum
        based_on: fruit_merge_cost.ad_spend_network
        _kind_hint: measure
        measure: cost_sum
        type: sum
        _type_hint: number
      - category: measure
        expression: ''
        label: click_sum
        based_on: fruit_merge_cost.clicks_network
        _kind_hint: measure
        measure: click_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${click_sum}"
        label: CPC
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpc
        _type_hint: number
      - category: measure
        expression: ''
        label: install_sum
        based_on: fruit_merge_cost.installs_network
        _kind_hint: measure
        measure: install_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${install_sum}/${click_sum}"
        label: CTI
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: cti
        _type_hint: number
      - category: measure
        expression: ''
        label: impression_sum
        based_on: fruit_merge_cost.impressions_network
        _kind_hint: measure
        measure: impression_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${click_sum}/${impression_sum}"
        label: CTR
        value_format:
        value_format_name: percent_2
        _kind_hint: measure
        table_calculation: ctr
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${install_sum}/${impression_sum})
        label: IPM
        value_format:
        value_format_name: decimal_2
        _kind_hint: measure
        table_calculation: ipm
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${cost_sum}/${impression_sum})
        label: CPM
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpm
        _type_hint: number
      - category: dimension
        expression: if(${fruit_merge_cost.partner}="Organic",${fruit_merge_cost.installs},${fruit_merge_cost.installs_network})
        label: conditional_installs
        value_format:
        value_format_name:
        dimension: conditional_installs
        _kind_hint: dimension
        _type_hint: number
      - category: measure
        expression:
        label: install_sum_cond
        value_format:
        value_format_name:
        based_on: conditional_installs
        _kind_hint: measure
        measure: install_sum_cond
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${install_sum_cond}"
        label: CPI
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpi
        _type_hint: number
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      hidden_pivots: {}
      hidden_fields: [click_sum, install_sum, impression_sum, cpc, cpi, cpm, ipm,
        ctr, cti, cost_sum]
    - model: fruit-merge
      explore: session_pdt
      type: table
      fields: [session_pdt.installed_date, ret_1, ret_2, ret_3, ret_4, ret_5, ret_7,
        player_1, player_2, player_3, player_4, player_5, player_7]
      fill_fields: [session_pdt.installed_date]
      sorts: [session_pdt.installed_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Ret 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: ret_1
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_1: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Ret 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: ret_2
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_2: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Ret 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: ret_3
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_3: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Ret 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: ret_4
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_4: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Ret 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: ret_5
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_5: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Ret 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: ret_7
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_7: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Player 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: player_1
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Player 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: player_2
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Player 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: player_3
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Player 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: player_4
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Player 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: player_5
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Player 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: player_7
        type: count_distinct
        _type_hint: number
      - category: table_calculation
        expression: "${ret_1}/${player_1}"
        label: Retention 1
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_1
        _type_hint: number
      - category: table_calculation
        expression: "${ret_2}/${player_2}"
        label: Retention 2
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_2
        _type_hint: number
      - category: table_calculation
        expression: "${ret_3}/${player_3}"
        label: Retention 3
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_3
        _type_hint: number
      - category: table_calculation
        expression: "${ret_4}/${player_4}"
        label: Retention 4
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_4
        _type_hint: number
      - category: table_calculation
        expression: "${ret_5}/${player_5}"
        label: Retention 5
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_5
        _type_hint: number
      - category: table_calculation
        expression: "${ret_7}/${player_7}"
        label: Retention 7
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_7
        _type_hint: number
      hidden_pivots: {}
      hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
        player_3, player_4, player_5, player_7]
      join_fields:
      - field_name: session_pdt.installed_date
        source_field_name: fruit_merge_cost.date_date
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      fruit_merge_cost.date_date: Install Date
      cost_sum: Spend
      install_sum_cond: Installs
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      cost_sum:
        is_active: false
    series_text_format:
      fruit_merge_cost.date_date:
        align: center
      cost_sum:
        align: center
      install_sum_cond:
        align: center
      cpc:
        align: center
      cti:
        align: center
      ctr:
        align: center
      ipm:
        align: center
      cpi:
        align: center
      cpm:
        align: center
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
    table_theme: white
    enable_conditional_formatting: false
    header_font_color: "#E52592"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, install_sum, click_sum, impression_sum,
      cost_sum, install_sum_cond, retention_4, retention_1, retention_2, retention_3,
      retention_7, retention_5, cpc, cti, ctr, ipm, cpm]
    type: looker_line
    listen:
    - Creative: fruit_merge_cost.ad_network
      Campaign: fruit_merge_cost.campaign_network
      Partner: fruit_merge_cost.partner
      Adgroup: fruit_merge_cost.adgroup_network
      Install Date: fruit_merge_cost.date_date
      Country Code: fruit_merge_cost.country_code
    - Creative: session_pdt.creative
      Campaign: session_pdt.campaign
      Partner: session_pdt.network
      Adgroup: session_pdt.adgroup
      Install Date: session_pdt.installed_date
      Country Code: session_pdt.country
    row: 0
    col: 0
    width: 12
    height: 9
  - name: INSTALLS
    title: INSTALLS
    merged_queries:
    - model: fruit-merge
      explore: fruit_merge_cost
      type: looker_line
      fields: [fruit_merge_cost.date_date, cost_sum, click_sum, install_sum, impression_sum,
        install_sum_cond]
      fill_fields: [fruit_merge_cost.date_date]
      filters:
        fruit_merge_cost.partner: ''
        fruit_merge_cost.date_date: ''
        fruit_merge_cost.creative: ''
        fruit_merge_cost.adgroup: ''
        fruit_merge_cost.campaign: ''
      sorts: [fruit_merge_cost.date_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: ''
        label: cost_sum
        based_on: fruit_merge_cost.ad_spend_network
        _kind_hint: measure
        measure: cost_sum
        type: sum
        _type_hint: number
      - category: measure
        expression: ''
        label: click_sum
        based_on: fruit_merge_cost.clicks_network
        _kind_hint: measure
        measure: click_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${click_sum}"
        label: CPC
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpc
        _type_hint: number
      - category: measure
        expression: ''
        label: install_sum
        based_on: fruit_merge_cost.installs_network
        _kind_hint: measure
        measure: install_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${install_sum}/${click_sum}"
        label: CTI
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: cti
        _type_hint: number
      - category: measure
        expression: ''
        label: impression_sum
        based_on: fruit_merge_cost.impressions_network
        _kind_hint: measure
        measure: impression_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${click_sum}/${impression_sum}"
        label: CTR
        value_format:
        value_format_name: percent_2
        _kind_hint: measure
        table_calculation: ctr
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${install_sum}/${impression_sum})
        label: IPM
        value_format:
        value_format_name: decimal_2
        _kind_hint: measure
        table_calculation: ipm
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${cost_sum}/${impression_sum})
        label: CPM
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpm
        _type_hint: number
      - category: dimension
        expression: if(${fruit_merge_cost.partner}="Organic",${fruit_merge_cost.installs},${fruit_merge_cost.installs_network})
        label: conditional_installs
        value_format:
        value_format_name:
        dimension: conditional_installs
        _kind_hint: dimension
        _type_hint: number
      - category: measure
        expression:
        label: install_sum_cond
        value_format:
        value_format_name:
        based_on: conditional_installs
        _kind_hint: measure
        measure: install_sum_cond
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${install_sum_cond}"
        label: CPI
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpi
        _type_hint: number
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      hidden_pivots: {}
      hidden_fields: [click_sum, install_sum, impression_sum, cpc, cpi, cpm, ipm,
        ctr, cti, cost_sum]
    - model: fruit-merge
      explore: session_pdt
      type: table
      fields: [session_pdt.installed_date, ret_1, ret_2, ret_3, ret_4, ret_5, ret_7,
        player_1, player_2, player_3, player_4, player_5, player_7]
      fill_fields: [session_pdt.installed_date]
      sorts: [session_pdt.installed_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Ret 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: ret_1
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_1: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Ret 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: ret_2
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_2: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Ret 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: ret_3
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_3: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Ret 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: ret_4
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_4: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Ret 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: ret_5
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_5: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Ret 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: ret_7
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_7: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Player 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: player_1
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Player 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: player_2
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Player 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: player_3
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Player 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: player_4
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Player 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: player_5
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Player 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: player_7
        type: count_distinct
        _type_hint: number
      - category: table_calculation
        expression: "${ret_1}/${player_1}"
        label: Retention 1
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_1
        _type_hint: number
      - category: table_calculation
        expression: "${ret_2}/${player_2}"
        label: Retention 2
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_2
        _type_hint: number
      - category: table_calculation
        expression: "${ret_3}/${player_3}"
        label: Retention 3
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_3
        _type_hint: number
      - category: table_calculation
        expression: "${ret_4}/${player_4}"
        label: Retention 4
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_4
        _type_hint: number
      - category: table_calculation
        expression: "${ret_5}/${player_5}"
        label: Retention 5
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_5
        _type_hint: number
      - category: table_calculation
        expression: "${ret_7}/${player_7}"
        label: Retention 7
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_7
        _type_hint: number
      hidden_pivots: {}
      hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
        player_3, player_4, player_5, player_7]
      join_fields:
      - field_name: session_pdt.installed_date
        source_field_name: fruit_merge_cost.date_date
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      fruit_merge_cost.date_date: Install Date
      cost_sum: Spend
      install_sum_cond: Installs
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      cost_sum:
        is_active: false
    series_text_format:
      fruit_merge_cost.date_date:
        align: center
      cost_sum:
        align: center
      install_sum_cond:
        align: center
      cpc:
        align: center
      cti:
        align: center
      ctr:
        align: center
      ipm:
        align: center
      cpi:
        align: center
      cpm:
        align: center
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
    table_theme: white
    enable_conditional_formatting: false
    header_font_color: "#E52592"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, install_sum, click_sum, impression_sum,
      cost_sum, retention_4, retention_1, retention_2, retention_3, retention_7, retention_5,
      cpc, cti, ctr, ipm, cpm, cpi]
    type: looker_line
    listen:
    - Creative: fruit_merge_cost.ad_network
      Campaign: fruit_merge_cost.campaign_network
      Partner: fruit_merge_cost.partner
      Adgroup: fruit_merge_cost.adgroup_network
      Install Date: fruit_merge_cost.date_date
      Country Code: fruit_merge_cost.country_code
    - Creative: session_pdt.creative
      Campaign: session_pdt.campaign
      Partner: session_pdt.network
      Adgroup: session_pdt.adgroup
      Install Date: session_pdt.installed_date
      Country Code: session_pdt.country
    row: 27
    col: 12
    width: 12
    height: 9
  - name: AD SPEND (COST)
    title: AD SPEND (COST)
    merged_queries:
    - model: fruit-merge
      explore: fruit_merge_cost
      type: looker_line
      fields: [fruit_merge_cost.date_date, cost_sum, click_sum, install_sum, impression_sum,
        install_sum_cond]
      fill_fields: [fruit_merge_cost.date_date]
      filters:
        fruit_merge_cost.partner: ''
        fruit_merge_cost.date_date: ''
        fruit_merge_cost.creative: ''
        fruit_merge_cost.adgroup: ''
        fruit_merge_cost.campaign: ''
      sorts: [fruit_merge_cost.date_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: ''
        label: cost_sum
        value_format:
        value_format_name: usd_0
        based_on: fruit_merge_cost.ad_spend_network
        _kind_hint: measure
        measure: cost_sum
        type: sum
        _type_hint: number
      - category: measure
        expression: ''
        label: click_sum
        based_on: fruit_merge_cost.clicks_network
        _kind_hint: measure
        measure: click_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${click_sum}"
        label: CPC
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpc
        _type_hint: number
      - category: measure
        expression: ''
        label: install_sum
        based_on: fruit_merge_cost.installs_network
        _kind_hint: measure
        measure: install_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${install_sum}/${click_sum}"
        label: CTI
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: cti
        _type_hint: number
      - category: measure
        expression: ''
        label: impression_sum
        based_on: fruit_merge_cost.impressions_network
        _kind_hint: measure
        measure: impression_sum
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${click_sum}/${impression_sum}"
        label: CTR
        value_format:
        value_format_name: percent_2
        _kind_hint: measure
        table_calculation: ctr
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${install_sum}/${impression_sum})
        label: IPM
        value_format:
        value_format_name: decimal_2
        _kind_hint: measure
        table_calculation: ipm
        _type_hint: number
      - category: table_calculation
        expression: 1000*(${cost_sum}/${impression_sum})
        label: CPM
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpm
        _type_hint: number
      - category: dimension
        expression: if(${fruit_merge_cost.partner}="Organic",${fruit_merge_cost.installs},${fruit_merge_cost.installs_network})
        label: conditional_installs
        value_format:
        value_format_name:
        dimension: conditional_installs
        _kind_hint: dimension
        _type_hint: number
      - category: measure
        expression:
        label: install_sum_cond
        value_format:
        value_format_name:
        based_on: conditional_installs
        _kind_hint: measure
        measure: install_sum_cond
        type: sum
        _type_hint: number
      - category: table_calculation
        expression: "${cost_sum}/${install_sum_cond}"
        label: CPI
        value_format:
        value_format_name: usd
        _kind_hint: measure
        table_calculation: cpi
        _type_hint: number
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      hidden_pivots: {}
      hidden_fields: [click_sum, install_sum, impression_sum, cpc, cpi, cpm, ipm,
        ctr, cti, cost_sum]
    - model: fruit-merge
      explore: session_pdt
      type: table
      fields: [session_pdt.installed_date, ret_1, ret_2, ret_3, ret_4, ret_5, ret_7,
        player_1, player_2, player_3, player_4, player_5, player_7]
      fill_fields: [session_pdt.installed_date]
      sorts: [session_pdt.installed_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Ret 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: ret_1
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_1: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Ret 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: ret_2
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_2: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Ret 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: ret_3
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_3: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Ret 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: ret_4
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_4: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Ret 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: ret_5
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_5: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Ret 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: ret_7
        type: count_distinct
        _type_hint: number
        filters:
          session_pdt.retention_7: '1'
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        label: Player 1
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>1
        _kind_hint: measure
        measure: player_1
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        label: Player 2
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>2
        _kind_hint: measure
        measure: player_2
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        label: Player 3
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>3
        _kind_hint: measure
        measure: player_3
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        label: Player 4
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>4
        _kind_hint: measure
        measure: player_4
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        label: Player 5
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>5
        _kind_hint: measure
        measure: player_5
        type: count_distinct
        _type_hint: number
      - category: measure
        expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        label: Player 7
        value_format:
        value_format_name:
        based_on: session_pdt.advertising_id
        filter_expression: diff_days(${session_pdt.installed_date},trunc_days(now()))>7
        _kind_hint: measure
        measure: player_7
        type: count_distinct
        _type_hint: number
      - category: table_calculation
        expression: "${ret_1}/${player_1}"
        label: Retention 1
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_1
        _type_hint: number
      - category: table_calculation
        expression: "${ret_2}/${player_2}"
        label: Retention 2
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_2
        _type_hint: number
      - category: table_calculation
        expression: "${ret_3}/${player_3}"
        label: Retention 3
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_3
        _type_hint: number
      - category: table_calculation
        expression: "${ret_4}/${player_4}"
        label: Retention 4
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_4
        _type_hint: number
      - category: table_calculation
        expression: "${ret_5}/${player_5}"
        label: Retention 5
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_5
        _type_hint: number
      - category: table_calculation
        expression: "${ret_7}/${player_7}"
        label: Retention 7
        value_format:
        value_format_name: percent_1
        _kind_hint: measure
        table_calculation: retention_7
        _type_hint: number
      hidden_pivots: {}
      hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
        player_3, player_4, player_5, player_7]
      join_fields:
      - field_name: session_pdt.installed_date
        source_field_name: fruit_merge_cost.date_date
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      fruit_merge_cost.date_date: Install Date
      cost_sum: Spend
      install_sum_cond: Installs
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      cost_sum:
        is_active: false
    series_text_format:
      fruit_merge_cost.date_date:
        align: center
      cost_sum:
        align: center
      install_sum_cond:
        align: center
      cpc:
        align: center
      cti:
        align: center
      ctr:
        align: center
      ipm:
        align: center
      cpi:
        align: center
      cpm:
        align: center
      retention_1:
        align: center
      retention_2:
        align: center
      retention_3:
        align: center
      retention_4:
        align: center
      retention_5:
        align: center
      retention_7:
        align: center
    table_theme: white
    enable_conditional_formatting: false
    header_font_color: "#E52592"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [ret_1, ret_2, ret_3, ret_4, ret_5, ret_7, player_1, player_2,
      player_3, player_4, player_5, player_7, install_sum, click_sum, impression_sum,
      retention_4, retention_1, retention_2, retention_3, retention_7, retention_5,
      cpc, cti, ctr, ipm, cpm, cpi, install_sum_cond]
    type: looker_line
    listen:
    - Creative: fruit_merge_cost.ad_network
      Campaign: fruit_merge_cost.campaign_network
      Partner: fruit_merge_cost.partner
      Adgroup: fruit_merge_cost.adgroup_network
      Install Date: fruit_merge_cost.date_date
      Country Code: fruit_merge_cost.country_code
    - Creative: session_pdt.creative
      Campaign: session_pdt.campaign
      Partner: session_pdt.network
      Adgroup: session_pdt.adgroup
      Install Date: session_pdt.installed_date
      Country Code: session_pdt.country
    row: 36
    col: 0
    width: 12
    height: 9
  filters:
  - name: Install Date
    title: Install Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: fruit-merge
    explore: fruit_merge_cost
    listens_to_filters: []
    field: fruit_merge_cost.date_date
  - name: Country Code
    title: Country Code
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: fruit-merge
    explore: fruit_merge_cost
    listens_to_filters: []
    field: fruit_merge_cost.country_code
  - name: Partner
    title: Partner
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: fruit-merge
    explore: fruit_merge_cost
    listens_to_filters: []
    field: fruit_merge_cost.partner
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: fruit-merge
    explore: fruit_merge_cost
    listens_to_filters: []
    field: fruit_merge_cost.campaign_network
  - name: Adgroup
    title: Adgroup
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: fruit-merge
    explore: fruit_merge_cost
    listens_to_filters: []
    field: fruit_merge_cost.adgroup_network
  - name: Creative
    title: Creative
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: fruit-merge
    explore: fruit_merge_cost
    listens_to_filters: []
    field: fruit_merge_cost.ad_network
