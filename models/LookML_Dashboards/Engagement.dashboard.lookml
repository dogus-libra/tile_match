---
- dashboard: engagement_dashboard
  title: Engagement Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: I8R7hgKNUhfBYwEdIfBMZ9
  elements:
  - title: Per25 Play Time per User
    name: Per25 Play Time per User
    model: tile_match
    explore: engagement_pdt
    type: looker_line
    fields: [engagement_pdt.client_date, engagement_pdt.per25playtime, median_of_playtime,
      engagement_pdt.per75playtime, engagement_pdt.per90playtime]
    fill_fields: [engagement_pdt.client_date]
    filters: {}
    sorts: [engagement_pdt.client_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: median_of_playtime
      based_on: engagement_pdt.playtime
      expression: ''
      label: Median of Playtime
      type: median
      _kind_hint: measure
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${engagement_pdt.per25playtime},-3,7))
      label: Mov Avg of Per25 Playtime
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_per25_playtime
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${median_of_playtime},-3,7))
      label: Mov Avg of Median Playtime
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_median_playtime
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${engagement_pdt.per75playtime},-3,7))
      label: Mov Avg of Per75 Playtime
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_per75_playtime
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${engagement_pdt.per90playtime},-3,7))
      label: Mov Avg of Per90 Playtime
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_per90_playtime
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
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [median_of_playtime, engagement_pdt.per75playtime, engagement_pdt.per90playtime,
      mov_avg_of_median_playtime, mov_avg_of_per75_playtime, mov_avg_of_per90_playtime]
    hidden_series: [mov_avg_of_per25_playtime]
    listen:
      Client Date: engagement_pdt.client_date
      Installed Date: engagement_pdt.installed_date
      Install Day of User: engagement_pdt.install_day_of_user
      Creative: engagement_pdt.creative
      Country: engagement_pdt.country
      Partner: engagement_pdt.network
      Campaign: engagement_pdt.campaign
      Adgroup: engagement_pdt.adgroup
      App Version: engagement_pdt.app_version
    row: 12
    col: 0
    width: 8
    height: 6
  - title: Median Play Time per User
    name: Median Play Time per User
    model: tile_match
    explore: engagement_pdt
    type: looker_line
    fields: [engagement_pdt.client_date, engagement_pdt.per25playtime, median_of_playtime,
      engagement_pdt.per75playtime, engagement_pdt.per90playtime]
    fill_fields: [engagement_pdt.client_date]
    filters: {}
    sorts: [engagement_pdt.client_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: median_of_playtime
      based_on: engagement_pdt.playtime
      expression: ''
      label: Median of Playtime
      type: median
      _kind_hint: measure
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${engagement_pdt.per25playtime},-3,7))
      label: Mov Avg of Per25 Playtime
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_per25_playtime
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${median_of_playtime},-3,7))
      label: Mov Avg of Median Playtime
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_median_playtime
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${engagement_pdt.per75playtime},-3,7))
      label: Mov Avg of Per75 Playtime
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_per75_playtime
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${engagement_pdt.per90playtime},-3,7))
      label: Mov Avg of Per90 Playtime
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_per90_playtime
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
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [engagement_pdt.per75playtime, engagement_pdt.per90playtime, mov_avg_of_per75_playtime,
      mov_avg_of_per90_playtime, engagement_pdt.per25playtime, mov_avg_of_per25_playtime]
    hidden_series: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime]
    listen:
      Client Date: engagement_pdt.client_date
      Installed Date: engagement_pdt.installed_date
      Install Day of User: engagement_pdt.install_day_of_user
      Creative: engagement_pdt.creative
      Country: engagement_pdt.country
      Partner: engagement_pdt.network
      Campaign: engagement_pdt.campaign
      Adgroup: engagement_pdt.adgroup
      App Version: engagement_pdt.app_version
    row: 6
    col: 0
    width: 8
    height: 6
  - title: Per75 Play Time per User
    name: Per75 Play Time per User
    model: tile_match
    explore: engagement_pdt
    type: looker_line
    fields: [engagement_pdt.client_date, engagement_pdt.per25playtime, median_of_playtime,
      engagement_pdt.per75playtime, engagement_pdt.per90playtime]
    fill_fields: [engagement_pdt.client_date]
    filters: {}
    sorts: [engagement_pdt.client_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: median_of_playtime
      based_on: engagement_pdt.playtime
      expression: ''
      label: Median of Playtime
      type: median
      _kind_hint: measure
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${engagement_pdt.per25playtime},-3,7))
      label: Mov Avg of Per25 Playtime
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_per25_playtime
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${median_of_playtime},-3,7))
      label: Mov Avg of Median Playtime
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_median_playtime
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${engagement_pdt.per75playtime},-3,7))
      label: Mov Avg of Per75 Playtime
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_per75_playtime
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${engagement_pdt.per90playtime},-3,7))
      label: Mov Avg of Per90 Playtime
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_per90_playtime
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
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [engagement_pdt.per90playtime, mov_avg_of_per90_playtime, engagement_pdt.per25playtime,
      mov_avg_of_per25_playtime, median_of_playtime, mov_avg_of_median_playtime]
    hidden_series: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, mov_avg_of_per75_playtime]
    listen:
      Client Date: engagement_pdt.client_date
      Installed Date: engagement_pdt.installed_date
      Install Day of User: engagement_pdt.install_day_of_user
      Creative: engagement_pdt.creative
      Country: engagement_pdt.country
      Partner: engagement_pdt.network
      Campaign: engagement_pdt.campaign
      Adgroup: engagement_pdt.adgroup
      App Version: engagement_pdt.app_version
    row: 18
    col: 0
    width: 8
    height: 6
  - title: Per90 Play Time per User
    name: Per90 Play Time per User
    model: tile_match
    explore: engagement_pdt
    type: looker_line
    fields: [engagement_pdt.client_date, engagement_pdt.per25playtime, median_of_playtime,
      engagement_pdt.per75playtime, engagement_pdt.per90playtime]
    fill_fields: [engagement_pdt.client_date]
    filters: {}
    sorts: [engagement_pdt.client_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: median_of_playtime
      based_on: engagement_pdt.playtime
      expression: ''
      label: Median of Playtime
      type: median
      _kind_hint: measure
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${engagement_pdt.per25playtime},-3,7))
      label: Mov Avg of Per25 Playtime
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_per25_playtime
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${median_of_playtime},-3,7))
      label: Mov Avg of Median Playtime
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_median_playtime
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${engagement_pdt.per75playtime},-3,7))
      label: Mov Avg of Per75 Playtime
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_per75_playtime
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${engagement_pdt.per90playtime},-3,7))
      label: Mov Avg of Per90 Playtime
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_per90_playtime
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
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [engagement_pdt.per25playtime, mov_avg_of_per25_playtime, median_of_playtime,
      mov_avg_of_median_playtime, engagement_pdt.per75playtime, mov_avg_of_per75_playtime]
    hidden_series: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, mov_avg_of_per75_playtime,
      mov_avg_of_per90_playtime]
    listen:
      Client Date: engagement_pdt.client_date
      Installed Date: engagement_pdt.installed_date
      Install Day of User: engagement_pdt.install_day_of_user
      Creative: engagement_pdt.creative
      Country: engagement_pdt.country
      Partner: engagement_pdt.network
      Campaign: engagement_pdt.campaign
      Adgroup: engagement_pdt.adgroup
      App Version: engagement_pdt.app_version
    row: 24
    col: 0
    width: 8
    height: 6
  - title: Per25 Session Count per User
    name: Per25 Session Count per User
    model: tile_match
    explore: engagement_pdt
    type: looker_line
    fields: [engagement_pdt.client_date, engagement_pdt.per25sessioncount, median_of_sessioncount,
      engagement_pdt.per75sessioncount, engagement_pdt.per90sessioncount]
    fill_fields: [engagement_pdt.client_date]
    filters: {}
    sorts: [engagement_pdt.client_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: median_of_sessioncount
      based_on: engagement_pdt.sessioncount
      expression: ''
      label: Median of Sessioncount
      type: median
      _kind_hint: measure
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
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, mov_avg_of_per75_playtime,
      median_of_sessioncount, engagement_pdt.per75sessioncount, engagement_pdt.per90sessioncount]
    hidden_series: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, mov_avg_of_per75_playtime,
      mov_avg_of_per90_playtime]
    listen:
      Client Date: engagement_pdt.client_date
      Installed Date: engagement_pdt.installed_date
      Install Day of User: engagement_pdt.install_day_of_user
      Creative: engagement_pdt.creative
      Country: engagement_pdt.country
      Partner: engagement_pdt.network
      Campaign: engagement_pdt.campaign
      Adgroup: engagement_pdt.adgroup
      App Version: engagement_pdt.app_version
    row: 12
    col: 8
    width: 8
    height: 6
  - title: Median Session Count per User
    name: Median Session Count per User
    model: tile_match
    explore: engagement_pdt
    type: looker_line
    fields: [engagement_pdt.client_date, engagement_pdt.per25sessioncount, median_of_sessioncount,
      engagement_pdt.per75sessioncount, engagement_pdt.per90sessioncount]
    fill_fields: [engagement_pdt.client_date]
    filters: {}
    sorts: [engagement_pdt.client_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: median_of_sessioncount
      based_on: engagement_pdt.sessioncount
      expression: ''
      label: Median of Sessioncount
      type: median
      _kind_hint: measure
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
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, mov_avg_of_per75_playtime,
      engagement_pdt.per75sessioncount, engagement_pdt.per90sessioncount, engagement_pdt.per25sessioncount]
    hidden_series: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, mov_avg_of_per75_playtime,
      mov_avg_of_per90_playtime]
    listen:
      Client Date: engagement_pdt.client_date
      Installed Date: engagement_pdt.installed_date
      Install Day of User: engagement_pdt.install_day_of_user
      Creative: engagement_pdt.creative
      Country: engagement_pdt.country
      Partner: engagement_pdt.network
      Campaign: engagement_pdt.campaign
      Adgroup: engagement_pdt.adgroup
      App Version: engagement_pdt.app_version
    row: 6
    col: 8
    width: 8
    height: 6
  - title: Per75 Session Count per User
    name: Per75 Session Count per User
    model: tile_match
    explore: engagement_pdt
    type: looker_line
    fields: [engagement_pdt.client_date, engagement_pdt.per25sessioncount, median_of_sessioncount,
      engagement_pdt.per75sessioncount, engagement_pdt.per90sessioncount]
    fill_fields: [engagement_pdt.client_date]
    filters: {}
    sorts: [engagement_pdt.client_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: median_of_sessioncount
      based_on: engagement_pdt.sessioncount
      expression: ''
      label: Median of Sessioncount
      type: median
      _kind_hint: measure
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
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, mov_avg_of_per75_playtime,
      engagement_pdt.per90sessioncount, engagement_pdt.per25sessioncount, median_of_sessioncount]
    hidden_series: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, mov_avg_of_per75_playtime,
      mov_avg_of_per90_playtime]
    listen:
      Client Date: engagement_pdt.client_date
      Installed Date: engagement_pdt.installed_date
      Install Day of User: engagement_pdt.install_day_of_user
      Creative: engagement_pdt.creative
      Country: engagement_pdt.country
      Partner: engagement_pdt.network
      Campaign: engagement_pdt.campaign
      Adgroup: engagement_pdt.adgroup
      App Version: engagement_pdt.app_version
    row: 18
    col: 8
    width: 8
    height: 6
  - title: Per90 Session Count per User
    name: Per90 Session Count per User
    model: tile_match
    explore: engagement_pdt
    type: looker_line
    fields: [engagement_pdt.client_date, engagement_pdt.per25sessioncount, median_of_sessioncount,
      engagement_pdt.per75sessioncount, engagement_pdt.per90sessioncount]
    fill_fields: [engagement_pdt.client_date]
    filters: {}
    sorts: [engagement_pdt.client_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: median_of_sessioncount
      based_on: engagement_pdt.sessioncount
      expression: ''
      label: Median of Sessioncount
      type: median
      _kind_hint: measure
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
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, mov_avg_of_per75_playtime,
      engagement_pdt.per25sessioncount, median_of_sessioncount, engagement_pdt.per75sessioncount]
    hidden_series: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, mov_avg_of_per75_playtime,
      mov_avg_of_per90_playtime]
    listen:
      Client Date: engagement_pdt.client_date
      Installed Date: engagement_pdt.installed_date
      Install Day of User: engagement_pdt.install_day_of_user
      Creative: engagement_pdt.creative
      Country: engagement_pdt.country
      Partner: engagement_pdt.network
      Campaign: engagement_pdt.campaign
      Adgroup: engagement_pdt.adgroup
      App Version: engagement_pdt.app_version
    row: 24
    col: 8
    width: 8
    height: 6
  - title: Avg Play Time per User
    name: Avg Play Time per User
    model: tile_match
    explore: engagement_pdt
    type: looker_line
    fields: [engagement_pdt.client_date, average_of_sessioncount, average_of_playtime]
    fill_fields: [engagement_pdt.client_date]
    filters: {}
    sorts: [engagement_pdt.client_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: average_of_sessioncount
      based_on: engagement_pdt.sessioncount
      expression: ''
      label: Average of Sessioncount
      type: average
      _kind_hint: measure
      _type_hint: number
    - measure: average_of_playtime
      based_on: engagement_pdt.playtime
      expression: ''
      label: Average of Playtime
      type: average
      _kind_hint: measure
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${average_of_playtime},-3,7))
      label: Mov Avg of Avg Play Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: mov_avg_of_avg_play_time
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
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, mov_avg_of_per75_playtime,
      mov_avg_of_per90_playtime, mov_avg_of_avg_play_time]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, mov_avg_of_per75_playtime,
      average_of_sessioncount]
    listen:
      Client Date: engagement_pdt.client_date
      Installed Date: engagement_pdt.installed_date
      Install Day of User: engagement_pdt.install_day_of_user
      Creative: engagement_pdt.creative
      Country: engagement_pdt.country
      Partner: engagement_pdt.network
      Campaign: engagement_pdt.campaign
      Adgroup: engagement_pdt.adgroup
      App Version: engagement_pdt.app_version
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Avg Session Count per User
    name: Avg Session Count per User
    model: tile_match
    explore: engagement_pdt
    type: looker_line
    fields: [engagement_pdt.client_date, average_of_sessioncount, average_of_playtime]
    fill_fields: [engagement_pdt.client_date]
    filters: {}
    sorts: [engagement_pdt.client_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: average_of_sessioncount
      based_on: engagement_pdt.sessioncount
      expression: ''
      label: Average of Sessioncount
      type: average
      _kind_hint: measure
      _type_hint: number
    - measure: average_of_playtime
      based_on: engagement_pdt.playtime
      expression: ''
      label: Average of Playtime
      type: average
      _kind_hint: measure
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
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, mov_avg_of_per75_playtime,
      average_of_playtime]
    hidden_series: [mov_avg_of_per25_playtime, mov_avg_of_median_playtime, mov_avg_of_per75_playtime,
      mov_avg_of_per90_playtime]
    listen:
      Client Date: engagement_pdt.client_date
      Installed Date: engagement_pdt.installed_date
      Install Day of User: engagement_pdt.install_day_of_user
      Creative: engagement_pdt.creative
      Country: engagement_pdt.country
      Partner: engagement_pdt.network
      Campaign: engagement_pdt.campaign
      Adgroup: engagement_pdt.adgroup
      App Version: engagement_pdt.app_version
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Per25 Session Time
    name: Per25 Session Time
    model: tile_match
    explore: session_pdt
    type: looker_line
    fields: [session_pdt.client_date, session_pdt.per25sessiontime, session_pdt.per50sessiontime,
      session_pdt.per75sessiontime, session_pdt.per90sessiontime]
    fill_fields: [session_pdt.client_date]
    sorts: [session_pdt.client_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.per25sessiontime},-6,7))
      label: Moving Avg of Per25 Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_per25_session_time
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.per50sessiontime},-6,7))
      label: Moving Avg of Per50 Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_per50_session_time
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.per75sessiontime},-6,7))
      label: Moving Avg of Per75 Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_per75_session_time
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.per90sessiontime},-6,7))
      label: Moving Avg of Per90 Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_per90_session_time
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
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [session_pdt.per50sessiontime, session_pdt.per75sessiontime, session_pdt.per90sessiontime,
      moving_avg_of_per50_session_time, moving_avg_of_per75_session_time, moving_avg_of_per90_session_time]
    hidden_series: [moving_avg_of_per25_session_time]
    listen:
      Client Date: session_pdt.client_date
      Installed Date: session_pdt.installed_date
      Install Day of User: session_pdt.install_day_of_user
      Creative: session_pdt.creative
      Country: session_pdt.country
      Partner: session_pdt.network
      Campaign: session_pdt.campaign
      Adgroup: session_pdt.adgroup
      App Version: session_pdt.app_version
    row: 12
    col: 16
    width: 8
    height: 6
  - title: Median Session Time
    name: Median Session Time
    model: tile_match
    explore: session_pdt
    type: looker_line
    fields: [session_pdt.client_date, session_pdt.per25sessiontime, session_pdt.per50sessiontime,
      session_pdt.per75sessiontime, session_pdt.per90sessiontime]
    fill_fields: [session_pdt.client_date]
    sorts: [session_pdt.client_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.per25sessiontime},-6,7))
      label: Moving Avg of Per25 Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_per25_session_time
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.per50sessiontime},-6,7))
      label: Moving Avg of Per50 Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_per50_session_time
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.per75sessiontime},-6,7))
      label: Moving Avg of Per75 Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_per75_session_time
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.per90sessiontime},-6,7))
      label: Moving Avg of Per90 Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_per90_session_time
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
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [session_pdt.per75sessiontime, session_pdt.per90sessiontime, moving_avg_of_per75_session_time,
      moving_avg_of_per90_session_time, session_pdt.per25sessiontime, moving_avg_of_per25_session_time]
    hidden_series: [moving_avg_of_per25_session_time, moving_avg_of_per50_session_time]
    listen:
      Client Date: session_pdt.client_date
      Installed Date: session_pdt.installed_date
      Install Day of User: session_pdt.install_day_of_user
      Creative: session_pdt.creative
      Country: session_pdt.country
      Partner: session_pdt.network
      Campaign: session_pdt.campaign
      Adgroup: session_pdt.adgroup
      App Version: session_pdt.app_version
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Per75 Session Time
    name: Per75 Session Time
    model: tile_match
    explore: session_pdt
    type: looker_line
    fields: [session_pdt.client_date, session_pdt.per25sessiontime, session_pdt.per50sessiontime,
      session_pdt.per75sessiontime, session_pdt.per90sessiontime]
    fill_fields: [session_pdt.client_date]
    sorts: [session_pdt.client_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.per25sessiontime},-6,7))
      label: Moving Avg of Per25 Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_per25_session_time
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.per50sessiontime},-6,7))
      label: Moving Avg of Per50 Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_per50_session_time
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.per75sessiontime},-6,7))
      label: Moving Avg of Per75 Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_per75_session_time
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.per90sessiontime},-6,7))
      label: Moving Avg of Per90 Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_per90_session_time
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
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [session_pdt.per90sessiontime, moving_avg_of_per90_session_time,
      session_pdt.per25sessiontime, moving_avg_of_per25_session_time, session_pdt.per50sessiontime,
      moving_avg_of_per50_session_time]
    hidden_series: [moving_avg_of_per25_session_time, moving_avg_of_per50_session_time,
      moving_avg_of_per75_session_time]
    listen:
      Client Date: session_pdt.client_date
      Installed Date: session_pdt.installed_date
      Install Day of User: session_pdt.install_day_of_user
      Creative: session_pdt.creative
      Country: session_pdt.country
      Partner: session_pdt.network
      Campaign: session_pdt.campaign
      Adgroup: session_pdt.adgroup
      App Version: session_pdt.app_version
    row: 18
    col: 16
    width: 8
    height: 6
  - title: Per90 Session Time
    name: Per90 Session Time
    model: tile_match
    explore: session_pdt
    type: looker_line
    fields: [session_pdt.client_date, session_pdt.per25sessiontime, session_pdt.per50sessiontime,
      session_pdt.per75sessiontime, session_pdt.per90sessiontime]
    fill_fields: [session_pdt.client_date]
    sorts: [session_pdt.client_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.per25sessiontime},-6,7))
      label: Moving Avg of Per25 Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_per25_session_time
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.per50sessiontime},-6,7))
      label: Moving Avg of Per50 Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_per50_session_time
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.per75sessiontime},-6,7))
      label: Moving Avg of Per75 Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_per75_session_time
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.per90sessiontime},-6,7))
      label: Moving Avg of Per90 Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_per90_session_time
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
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [session_pdt.per25sessiontime, moving_avg_of_per25_session_time,
      session_pdt.per50sessiontime, moving_avg_of_per50_session_time, session_pdt.per75sessiontime,
      moving_avg_of_per75_session_time]
    hidden_series: [moving_avg_of_per25_session_time, moving_avg_of_per50_session_time,
      moving_avg_of_per75_session_time, moving_avg_of_per90_session_time]
    listen:
      Client Date: session_pdt.client_date
      Installed Date: session_pdt.installed_date
      Install Day of User: session_pdt.install_day_of_user
      Creative: session_pdt.creative
      Country: session_pdt.country
      Partner: session_pdt.network
      Campaign: session_pdt.campaign
      Adgroup: session_pdt.adgroup
      App Version: session_pdt.app_version
    row: 24
    col: 16
    width: 8
    height: 6
  - title: Avg Session Time
    name: Avg Session Time
    model: tile_match
    explore: session_pdt
    type: looker_line
    fields: [session_pdt.client_date, session_pdt.avg_sessiontime]
    fill_fields: [session_pdt.client_date]
    sorts: [session_pdt.client_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: median_of_session_time
      based_on: session_pdt.session_time
      expression: ''
      label: Median of Session Time
      type: median
      _kind_hint: measure
      _type_hint: number
    - category: table_calculation
      expression: mean(offset_list(${session_pdt.avg_sessiontime},-6,7))
      label: Moving Avg of Avg Session Time
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: moving_avg_of_avg_session_time
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
    hidden_pivots: {}
    defaults_version: 1
    hidden_series: [moving_avg_of_avg_session_time]
    listen:
      Client Date: session_pdt.client_date
      Installed Date: session_pdt.installed_date
      Install Day of User: session_pdt.install_day_of_user
      Creative: session_pdt.creative
      Country: session_pdt.country
      Partner: session_pdt.network
      Campaign: session_pdt.campaign
      Adgroup: session_pdt.adgroup
      App Version: session_pdt.app_version
    row: 0
    col: 16
    width: 8
    height: 6
  filters:
  - name: Installed Date
    title: Installed Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: tile_match
    explore: engagement_pdt
    listens_to_filters: []
    field: engagement_pdt.installed_date
  - name: Client Date
    title: Client Date
    type: field_filter
    default_value: 2024/01/21 to 2024/02/13
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: tile_match
    explore: engagement_pdt
    listens_to_filters: []
    field: engagement_pdt.client_date
  - name: Install Day of User
    title: Install Day of User
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: tile_match
    explore: engagement_pdt
    listens_to_filters: []
    field: engagement_pdt.install_day_of_user
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
    explore: engagement_pdt
    listens_to_filters: []
    field: engagement_pdt.country
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
    explore: engagement_pdt
    listens_to_filters: []
    field: engagement_pdt.app_version
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
    explore: engagement_pdt
    listens_to_filters: []
    field: engagement_pdt.network
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: engagement_pdt
    listens_to_filters: []
    field: engagement_pdt.campaign
  - name: Adgroup
    title: Adgroup
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: engagement_pdt
    listens_to_filters: []
    field: engagement_pdt.adgroup
  - name: Creative
    title: Creative
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: engagement_pdt
    listens_to_filters: []
    field: engagement_pdt.creative
