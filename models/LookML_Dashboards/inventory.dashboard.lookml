---
- dashboard: inventory_dashboard_by_event_date
  title: Inventory Dashboard (by Event Date)
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: WUNcR7pzvOizqswdUBsi4Z
  elements:
  - title: Coin Inventory
    name: Coin Inventory
    model: tile_match
    explore: streak_inventory_pdt
    type: looker_line
    fields: [streak_inventory_pdt.event_date, streak_inventory_pdt.coin_inventory_per10, streak_inventory_pdt.coin_inventory_per25,
      streak_inventory_pdt.coin_inventory_per50, streak_inventory_pdt.coin_inventory_per75, streak_inventory_pdt.coin_inventory_per90,
      streak_inventory_pdt.coin_inventory_avg]
    fill_fields: [streak_inventory_pdt.event_date]
    filters:
      streak_inventory_pdt.advertising_id: "-218E0625-4B89-444A-84D8-AC450EF2D404"
    sorts: [streak_inventory_pdt.event_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: streak_inventory_pdt.coin_inventory
      expression: ''
      label: Median of Coin Inventory
      measure: median_of_coin_inventory
      type: median
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
    show_null_points: false
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [streak_inventory_pdt.coin_inventory_per75, streak_inventory_pdt.coin_inventory_per25]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Install Dt Date: streak_inventory_pdt.install_dt_date
      Event Date: streak_inventory_pdt.event_date
      Level No: streak_inventory_pdt.level_no
      Country: streak_inventory_pdt.country_code
      App Version: streak_inventory_pdt.app_version
      Platform: streak_inventory_pdt.user_platform
      Partner: users_pdt.network
      IsPayer: users_pdt.isPayer
    row: 0
    col: 0
    width: 24
    height: 12
  - title: InGame Booster Inventory
    name: InGame Booster Inventory
    model: tile_match
    explore: streak_inventory_pdt
    type: looker_line
    fields: [streak_inventory_pdt.event_date, streak_inventory_pdt.extra_slot_inventory_avg, streak_inventory_pdt.glove_inventory_avg,
      streak_inventory_pdt.magic_wand_inventory_avg, streak_inventory_pdt.shuffle_inventory_avg,
      streak_inventory_pdt.time_freezer_inventory_avg, streak_inventory_pdt.toss_inventory_avg]
    fill_fields: [streak_inventory_pdt.event_date]
    filters:
      streak_inventory_pdt.advertising_id: "-2FCECACA-0BCA-42F6-9585-AAA580E35306"
    sorts: [streak_inventory_pdt.event_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: streak_inventory_pdt.coin_inventory
      expression: ''
      label: Median of Coin Inventory
      measure: median_of_coin_inventory
      type: median
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
    show_null_points: false
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [streak_inventory_pdt.coin_inventory_per75, streak_inventory_pdt.coin_inventory_per25]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Install Dt Date: streak_inventory_pdt.install_dt_date
      Event Date: streak_inventory_pdt.event_date
      Level No: streak_inventory_pdt.level_no
      Country: streak_inventory_pdt.country_code
      App Version: streak_inventory_pdt.app_version
      Platform: streak_inventory_pdt.user_platform
      Partner: users_pdt.network
      IsPayer: users_pdt.isPayer
    row: 29
    col: 0
    width: 24
    height: 11
  - title: 'Coin Gain '
    name: 'Coin Gain '
    model: tile_match
    explore: streak_inventory_pdt
    type: looker_line
    fields: [streak_inventory_pdt.event_date, streak_inventory_pdt.coin_gain_avg, streak_inventory_pdt.coin_gain_per10,
      streak_inventory_pdt.coin_gain_per25, streak_inventory_pdt.coin_gain_per50, streak_inventory_pdt.coin_gain_per75,
      streak_inventory_pdt.coin_gain_per90]
    fill_fields: [streak_inventory_pdt.event_date]
    filters: {}
    sorts: [streak_inventory_pdt.event_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: streak_inventory_pdt.coin_inventory
      expression: ''
      label: Median of Coin Inventory
      measure: median_of_coin_inventory
      type: median
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
    show_null_points: false
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [streak_inventory_pdt.coin_inventory_per75, streak_inventory_pdt.coin_inventory_per25]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Install Dt Date: streak_inventory_pdt.install_dt_date
      Event Date: streak_inventory_pdt.event_date
      Level No: streak_inventory_pdt.level_no
      Country: streak_inventory_pdt.country_code
      App Version: streak_inventory_pdt.app_version
      Platform: streak_inventory_pdt.user_platform
      Partner: users_pdt.network
      IsPayer: users_pdt.isPayer
    row: 12
    col: 0
    width: 24
    height: 8
  - title: Coin Spend
    name: Coin Spend
    model: tile_match
    explore: streak_inventory_pdt
    type: looker_line
    fields: [streak_inventory_pdt.event_date, streak_inventory_pdt.coin_spend_avg, streak_inventory_pdt.coin_spend_per10,
      streak_inventory_pdt.coin_spend_per25, streak_inventory_pdt.coin_spend_per50, streak_inventory_pdt.coin_spend_per75,
      streak_inventory_pdt.coin_spend_per90]
    fill_fields: [streak_inventory_pdt.event_date]
    filters: {}
    sorts: [streak_inventory_pdt.event_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: streak_inventory_pdt.coin_inventory
      expression: ''
      label: Median of Coin Inventory
      measure: median_of_coin_inventory
      type: median
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
    show_null_points: false
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [streak_inventory_pdt.coin_inventory_per75, streak_inventory_pdt.coin_inventory_per25,
      streak_inventory_pdt.coin_spend_per25, streak_inventory_pdt.coin_spend_per75]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Install Dt Date: streak_inventory_pdt.install_dt_date
      Event Date: streak_inventory_pdt.event_date
      Level No: streak_inventory_pdt.level_no
      Country: streak_inventory_pdt.country_code
      App Version: streak_inventory_pdt.app_version
      Platform: streak_inventory_pdt.user_platform
      Partner: users_pdt.network
      IsPayer: users_pdt.isPayer
    row: 20
    col: 0
    width: 24
    height: 9
  - title: PreGame Booster Gain
    name: PreGame Booster Gain
    model: tile_match
    explore: streak_inventory_pdt
    type: looker_line
    fields: [streak_inventory_pdt.event_date, streak_inventory_pdt.extra_time_gain_avg, streak_inventory_pdt.magnet_gain_avg]
    filters:
      streak_inventory_pdt.advertising_id: "-2FCECACA-0BCA-42F6-9585-AAA580E35306"
      streak_inventory_pdt.extra_time_gain_avg: "<20"
    sorts: [streak_inventory_pdt.event_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: streak_inventory_pdt.coin_inventory
      expression: ''
      label: Median of Coin Inventory
      measure: median_of_coin_inventory
      type: median
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
    show_null_points: false
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [streak_inventory_pdt.coin_inventory_per75, streak_inventory_pdt.coin_inventory_per25]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Install Dt Date: streak_inventory_pdt.install_dt_date
      Event Date: streak_inventory_pdt.event_date
      Level No: streak_inventory_pdt.level_no
      Country: streak_inventory_pdt.country_code
      App Version: streak_inventory_pdt.app_version
      Platform: streak_inventory_pdt.user_platform
      Partner: users_pdt.network
      IsPayer: users_pdt.isPayer
    row: 73
    col: 0
    width: 24
    height: 11
  - title: PreGame Booster Inventory
    name: PreGame Booster Inventory
    model: tile_match
    explore: streak_inventory_pdt
    type: looker_line
    fields: [streak_inventory_pdt.event_date, streak_inventory_pdt.extra_time_inventory_avg, streak_inventory_pdt.magnet_inventory_avg]
    fill_fields: [streak_inventory_pdt.event_date]
    filters:
      streak_inventory_pdt.advertising_id: "-2FCECACA-0BCA-42F6-9585-AAA580E35306"
    sorts: [streak_inventory_pdt.event_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: streak_inventory_pdt.coin_inventory
      expression: ''
      label: Median of Coin Inventory
      measure: median_of_coin_inventory
      type: median
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
    show_null_points: false
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [streak_inventory_pdt.coin_inventory_per75, streak_inventory_pdt.coin_inventory_per25]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Install Dt Date: streak_inventory_pdt.install_dt_date
      Event Date: streak_inventory_pdt.event_date
      Level No: streak_inventory_pdt.level_no
      Country: streak_inventory_pdt.country_code
      App Version: streak_inventory_pdt.app_version
      Platform: streak_inventory_pdt.user_platform
      Partner: users_pdt.network
      IsPayer: users_pdt.isPayer
    row: 62
    col: 0
    width: 24
    height: 11
  - title: InGame Booster Gain
    name: InGame Booster Gain
    model: tile_match
    explore: streak_inventory_pdt
    type: looker_line
    fields: [streak_inventory_pdt.event_date, streak_inventory_pdt.extra_slot_gain_avg, streak_inventory_pdt.glove_gain_avg,
      streak_inventory_pdt.magic_wand_gain_avg, streak_inventory_pdt.shuffle_gain_avg, streak_inventory_pdt.time_freezer_gain_avg,
      streak_inventory_pdt.toss_gain_avg]
    fill_fields: [streak_inventory_pdt.event_date]
    filters:
      streak_inventory_pdt.advertising_id: "-2FCECACA-0BCA-42F6-9585-AAA580E35306"
    sorts: [streak_inventory_pdt.event_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: streak_inventory_pdt.coin_inventory
      expression: ''
      label: Median of Coin Inventory
      measure: median_of_coin_inventory
      type: median
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
    show_null_points: false
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [streak_inventory_pdt.coin_inventory_per75, streak_inventory_pdt.coin_inventory_per25]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Install Dt Date: streak_inventory_pdt.install_dt_date
      Event Date: streak_inventory_pdt.event_date
      Level No: streak_inventory_pdt.level_no
      Country: streak_inventory_pdt.country_code
      App Version: streak_inventory_pdt.app_version
      Platform: streak_inventory_pdt.user_platform
      Partner: users_pdt.network
      IsPayer: users_pdt.isPayer
    row: 40
    col: 0
    width: 24
    height: 11
  - title: PreGame Booster Spend
    name: PreGame Booster Spend
    model: tile_match
    explore: streak_inventory_pdt
    type: looker_line
    fields: [streak_inventory_pdt.event_date, streak_inventory_pdt.extra_time_spend_avg, streak_inventory_pdt.magnet_spend_avg]
    filters:
      streak_inventory_pdt.advertising_id: "-2FCECACA-0BCA-42F6-9585-AAA580E35306"
    sorts: [streak_inventory_pdt.event_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: streak_inventory_pdt.coin_inventory
      expression: ''
      label: Median of Coin Inventory
      measure: median_of_coin_inventory
      type: median
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
    show_null_points: false
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [streak_inventory_pdt.coin_inventory_per75, streak_inventory_pdt.coin_inventory_per25]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Install Dt Date: streak_inventory_pdt.install_dt_date
      Event Date: streak_inventory_pdt.event_date
      Level No: streak_inventory_pdt.level_no
      Country: streak_inventory_pdt.country_code
      App Version: streak_inventory_pdt.app_version
      Platform: streak_inventory_pdt.user_platform
      Partner: users_pdt.network
      IsPayer: users_pdt.isPayer
    row: 84
    col: 0
    width: 24
    height: 11
  - title: InGame Booster Spend
    name: InGame Booster Spend
    model: tile_match
    explore: streak_inventory_pdt
    type: looker_line
    fields: [streak_inventory_pdt.event_date, streak_inventory_pdt.extra_slot_spend_avg, streak_inventory_pdt.glove_spend_avg,
      streak_inventory_pdt.magic_wand_spend_avg, streak_inventory_pdt.shuffle_spend_avg, streak_inventory_pdt.time_freezer_spend_avg,
      streak_inventory_pdt.toss_spend_avg]
    fill_fields: [streak_inventory_pdt.event_date]
    filters:
      streak_inventory_pdt.advertising_id: "-2FCECACA-0BCA-42F6-9585-AAA580E35306"
    sorts: [streak_inventory_pdt.event_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: streak_inventory_pdt.coin_inventory
      expression: ''
      label: Median of Coin Inventory
      measure: median_of_coin_inventory
      type: median
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
    show_null_points: false
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [streak_inventory_pdt.coin_inventory_per75, streak_inventory_pdt.coin_inventory_per25]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Install Dt Date: streak_inventory_pdt.install_dt_date
      Event Date: streak_inventory_pdt.event_date
      Level No: streak_inventory_pdt.level_no
      Country: streak_inventory_pdt.country_code
      App Version: streak_inventory_pdt.app_version
      Platform: streak_inventory_pdt.user_platform
      Partner: users_pdt.network
      IsPayer: users_pdt.isPayer
    row: 51
    col: 0
    width: 24
    height: 11
  - title: Extra Move
    name: Extra Move
    model: tile_match
    explore: progression
    type: looker_line
    fields: [progression.event_timestamp_date, first_extra_moves, second_extra_moves,
      or_more_extra_moves, all_extra_moves, level_complete_1]
    fill_fields: [progression.event_timestamp_date]
    filters:
      progression.event_name: LevelCompleted
      users_pdt.creative: ''
      users_pdt.campaign: ''
      users_pdt.adgroup: ''
      progression.user_split_test_name: ''
    sorts: [progression.event_timestamp_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: First Extra Moves
      based_on: progression.extra_move_count
      _kind_hint: measure
      measure: first_extra_moves
      type: sum
      _type_hint: number
      filters:
        progression.extra_move_count: '1'
    - category: measure
      expression: ''
      label: Second Extra Moves
      based_on: progression.count
      _kind_hint: measure
      measure: second_extra_moves
      type: count
      _type_hint: number
      filters:
        progression.extra_move_count: '2'
    - category: measure
      expression:
      label: Level Complete2
      value_format:
      value_format_name:
      based_on: progression.count
      _kind_hint: measure
      measure: level_complete2
      type: count
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: measure
      expression: ''
      label: All Extra Moves
      based_on: progression.count
      _kind_hint: measure
      measure: all_extra_moves
      type: count
      _type_hint: number
      filters:
        progression.extra_move_count: ">=1"
    - category: measure
      expression: ''
      label: 3 or more Extra Moves
      based_on: progression.count
      _kind_hint: measure
      measure: or_more_extra_moves
      type: count
      _type_hint: number
      filters:
        progression.extra_move_count: ">=3"
    - category: dimension
      expression: concat(${progression.advertising_id},${progression.user_level_at})
      label: primary
      value_format:
      value_format_name:
      dimension: primary
      _kind_hint: dimension
      _type_hint: string
    - category: measure
      expression:
      label: Level Complete
      value_format:
      value_format_name:
      based_on: primary
      _kind_hint: measure
      measure: level_complete_1
      type: count_distinct
      _type_hint: number
      filters:
        progression.event_name: LevelCompleted
    - category: table_calculation
      expression: "${first_extra_moves} /${level_complete_1}"
      label: Avg First ExtraMove Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: avg_first_extramove_rate
      _type_hint: number
    - category: table_calculation
      expression: "${second_extra_moves} /${level_complete_1}"
      label: Avg Second ExtraMove Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: avg_second_extramove_rate
      _type_hint: number
    - category: table_calculation
      expression: "${or_more_extra_moves} /${level_complete_1}"
      label: Avg 3 or more ExtraMove Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: avg_3_or_more_extramove_rate
      _type_hint: number
    - category: table_calculation
      expression: "${all_extra_moves} / ${level_complete_1}"
      label: Avg of All ExtraMove Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: avg_of_all_extramove_rate
      _type_hint: number
    - category: table_calculation
      expression: "mean(offset_list((${all_extra_moves}/${level_complete_1}),-3,7))\n\
        \n \n\n"
      label: 'Moving Avg All ExtraMoves '
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: moving_avg_all_extramoves
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
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: avg_first_extramove_rate,
            id: avg_first_extramove_rate, name: Avg First ExtraMove Rate}, {axisId: avg_second_extramove_rate,
            id: avg_second_extramove_rate, name: Avg Second ExtraMove Rate}, {axisId: avg_3_or_more_extramove_rate,
            id: avg_3_or_more_extramove_rate, name: Avg 3 or more ExtraMove Rate},
          {axisId: avg_of_all_extramove_rate, id: avg_of_all_extramove_rate, name: Avg
              of All ExtraMove Rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [moving_avg_all_extramoves, avg_of_all_extramove_rate]
    hidden_fields: [first_extra_moves, second_extra_moves, or_more_extra_moves, all_extra_moves,
      level_complete_1]
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Install Dt Date: progression.installed_date
      Event Date: progression.event_timestamp_date
      Level No: progression.user_level_at
      Country: users_pdt.country
      App Version: progression.app_version
      Platform: progression.user_platform
      Partner: users_pdt.network
      IsPayer: users_pdt.isPayer
    row: 95
    col: 0
    width: 24
    height: 12
  filters:
  - name: Install Dt Date
    title: Install Dt Date
    type: field_filter
    default_value: 240 day ago for 240 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: tile_match
    explore: streak_inventory_pdt
    listens_to_filters: []
    field: streak_inventory_pdt.install_dt_date
  - name: Event Date
    title: Event Date
    type: field_filter
    default_value: 120 day ago for 120 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: tile_match
    explore: streak_inventory_pdt
    listens_to_filters: []
    field: streak_inventory_pdt.event_date
  - name: Level No
    title: Level No
    type: field_filter
    default_value: "[1,500]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: tile_match
    explore: streak_inventory_pdt
    listens_to_filters: []
    field: streak_inventory_pdt.level_no
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: streak_inventory_pdt
    listens_to_filters: []
    field: streak_inventory_pdt.country_code
  - name: App Version
    title: App Version
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: streak_inventory_pdt
    listens_to_filters: []
    field: streak_inventory_pdt.app_version
  - name: Platform
    title: Platform
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: streak_inventory_pdt
    listens_to_filters: []
    field: streak_inventory_pdt.user_platform
  - name: Partner
    title: Partner
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: streak_inventory_pdt
    listens_to_filters: []
    field: users_pdt.network
  - name: IsPayer
    title: IsPayer
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: streak_inventory_pdt
    listens_to_filters: []
    field: users_pdt.isPayer
