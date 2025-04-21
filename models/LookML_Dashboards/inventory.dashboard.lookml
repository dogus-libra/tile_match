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
    explore: inventory2_pdt
    type: looker_line
    fields: [inventory2_pdt.event_date, inventory2_pdt.coin_inventory_per10, inventory2_pdt.coin_inventory_per25,
      inventory2_pdt.coin_inventory_per50, inventory2_pdt.coin_inventory_per75, inventory2_pdt.coin_inventory_per90,
      inventory2_pdt.coin_inventory_avg]
    fill_fields: [inventory2_pdt.event_date]
    filters: {}
    sorts: [inventory2_pdt.event_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: inventory2_pdt.coin_inventory
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
    hidden_series: [inventory2_pdt.coin_inventory_per75, inventory2_pdt.coin_inventory_per25]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Event Date: inventory2_pdt.event_date
      App Version: inventory2_pdt.app_version
      Level No: inventory2_pdt.level_no
      Install Dt Date: inventory2_pdt.install_dt_date
      Country: inventory2_pdt.country_code
      Platform: inventory2_pdt.user_platform
      Partner: users_pdt.network
      IsPayer: users_pdt.isPayer
    row: 0
    col: 0
    width: 24
    height: 12
  - title: InGame Booster Inventory
    name: InGame Booster Inventory
    model: tile_match
    explore: inventory2_pdt
    type: looker_line
    fields: [inventory2_pdt.event_date, inventory2_pdt.extra_slot_inventory_avg, inventory2_pdt.glove_inventory_avg,
      inventory2_pdt.magic_wand_inventory_avg, inventory2_pdt.shuffle_inventory_avg,
      inventory2_pdt.time_freezer_inventory_avg, inventory2_pdt.toss_inventory_avg]
    fill_fields: [inventory2_pdt.event_date]
    filters:
      inventory2_pdt.advertising_id: "-2FCECACA-0BCA-42F6-9585-AAA580E35306"
    sorts: [inventory2_pdt.event_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: inventory2_pdt.coin_inventory
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
    hidden_series: [inventory2_pdt.coin_inventory_per75, inventory2_pdt.coin_inventory_per25]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Country: inventory2_pdt.country_code
      Level No: inventory2_pdt.level_no
      Install Dt Date: inventory2_pdt.install_dt_date
      App Version: inventory2_pdt.app_version
      Event Date: inventory2_pdt.event_date
      Platform: inventory2_pdt.user_platform
      Partner: users_pdt.network
      IsPayer: users_pdt.isPayer
    row: 29
    col: 0
    width: 24
    height: 11
  - title: 'Coin Gain '
    name: 'Coin Gain '
    model: tile_match
    explore: inventory2_pdt
    type: looker_line
    fields: [inventory2_pdt.event_date, inventory2_pdt.coin_gain_avg, inventory2_pdt.coin_gain_per10,
      inventory2_pdt.coin_gain_per25, inventory2_pdt.coin_gain_per50, inventory2_pdt.coin_gain_per75,
      inventory2_pdt.coin_gain_per90]
    fill_fields: [inventory2_pdt.event_date]
    filters: {}
    sorts: [inventory2_pdt.event_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: inventory2_pdt.coin_inventory
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
    hidden_series: [inventory2_pdt.coin_inventory_per75, inventory2_pdt.coin_inventory_per25]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Country: inventory2_pdt.country_code
      Level No: inventory2_pdt.level_no
      Install Dt Date: inventory2_pdt.install_dt_date
      App Version: inventory2_pdt.app_version
      Event Date: inventory2_pdt.event_date
      Platform: inventory2_pdt.user_platform
      Partner: users_pdt.network
      IsPayer: users_pdt.isPayer
    row: 12
    col: 0
    width: 24
    height: 8
  - title: Coin Spend
    name: Coin Spend
    model: tile_match
    explore: inventory2_pdt
    type: looker_line
    fields: [inventory2_pdt.event_date, inventory2_pdt.coin_spend_avg, inventory2_pdt.coin_spend_per10,
      inventory2_pdt.coin_spend_per25, inventory2_pdt.coin_spend_per50, inventory2_pdt.coin_spend_per75,
      inventory2_pdt.coin_spend_per90]
    fill_fields: [inventory2_pdt.event_date]
    filters: {}
    sorts: [inventory2_pdt.event_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: inventory2_pdt.coin_inventory
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
    hidden_series: [inventory2_pdt.coin_inventory_per75, inventory2_pdt.coin_inventory_per25,
      inventory2_pdt.coin_spend_per25, inventory2_pdt.coin_spend_per75]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Country: inventory2_pdt.country_code
      Level No: inventory2_pdt.level_no
      Install Dt Date: inventory2_pdt.install_dt_date
      App Version: inventory2_pdt.app_version
      Event Date: inventory2_pdt.event_date
      Platform: inventory2_pdt.user_platform
      Partner: users_pdt.network
      IsPayer: users_pdt.isPayer
    row: 20
    col: 0
    width: 24
    height: 9
  - title: PreGame Booster Gain
    name: PreGame Booster Gain
    model: tile_match
    explore: inventory2_pdt
    type: looker_line
    fields: [inventory2_pdt.event_date, inventory2_pdt.extra_time_gain_avg, inventory2_pdt.magnet_gain_avg]
    filters:
      inventory2_pdt.advertising_id: "-2FCECACA-0BCA-42F6-9585-AAA580E35306"
      inventory2_pdt.extra_time_gain_avg: "<20"
    sorts: [inventory2_pdt.event_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: inventory2_pdt.coin_inventory
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
    hidden_series: [inventory2_pdt.coin_inventory_per75, inventory2_pdt.coin_inventory_per25]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Country: inventory2_pdt.country_code
      Level No: inventory2_pdt.level_no
      Install Dt Date: inventory2_pdt.install_dt_date
      App Version: inventory2_pdt.app_version
      Event Date: inventory2_pdt.event_date
      Platform: inventory2_pdt.user_platform
      Partner: users_pdt.network
      IsPayer: users_pdt.isPayer
    row: 73
    col: 0
    width: 24
    height: 11
  - title: PreGame Booster Inventory
    name: PreGame Booster Inventory
    model: tile_match
    explore: inventory2_pdt
    type: looker_line
    fields: [inventory2_pdt.event_date, inventory2_pdt.extra_time_inventory_avg, inventory2_pdt.magnet_inventory_avg]
    fill_fields: [inventory2_pdt.event_date]
    filters:
      inventory2_pdt.advertising_id: "-2FCECACA-0BCA-42F6-9585-AAA580E35306"
    sorts: [inventory2_pdt.event_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: inventory2_pdt.coin_inventory
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
    hidden_series: [inventory2_pdt.coin_inventory_per75, inventory2_pdt.coin_inventory_per25]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Country: inventory2_pdt.country_code
      Level No: inventory2_pdt.level_no
      Install Dt Date: inventory2_pdt.install_dt_date
      App Version: inventory2_pdt.app_version
      Event Date: inventory2_pdt.event_date
      Platform: inventory2_pdt.user_platform
      Partner: users_pdt.network
      IsPayer: users_pdt.isPayer
    row: 62
    col: 0
    width: 24
    height: 11
  - title: InGame Booster Gain
    name: InGame Booster Gain
    model: tile_match
    explore: inventory2_pdt
    type: looker_line
    fields: [inventory2_pdt.event_date, inventory2_pdt.extra_slot_gain_avg, inventory2_pdt.glove_gain_avg,
      inventory2_pdt.magic_wand_gain_avg, inventory2_pdt.shuffle_gain_avg, inventory2_pdt.time_freezer_gain_avg,
      inventory2_pdt.toss_gain_avg]
    fill_fields: [inventory2_pdt.event_date]
    filters:
      inventory2_pdt.advertising_id: "-2FCECACA-0BCA-42F6-9585-AAA580E35306"
    sorts: [inventory2_pdt.event_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: inventory2_pdt.coin_inventory
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
    hidden_series: [inventory2_pdt.coin_inventory_per75, inventory2_pdt.coin_inventory_per25]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Country: inventory2_pdt.country_code
      Level No: inventory2_pdt.level_no
      Install Dt Date: inventory2_pdt.install_dt_date
      App Version: inventory2_pdt.app_version
      Event Date: inventory2_pdt.event_date
      Platform: inventory2_pdt.user_platform
      Partner: users_pdt.network
      IsPayer: users_pdt.isPayer
    row: 40
    col: 0
    width: 24
    height: 11
  - title: PreGame Booster Spend
    name: PreGame Booster Spend
    model: tile_match
    explore: inventory2_pdt
    type: looker_line
    fields: [inventory2_pdt.event_date, inventory2_pdt.extra_time_spend_avg, inventory2_pdt.magnet_spend_avg]
    filters:
      inventory2_pdt.advertising_id: "-2FCECACA-0BCA-42F6-9585-AAA580E35306"
    sorts: [inventory2_pdt.event_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: inventory2_pdt.coin_inventory
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
    hidden_series: [inventory2_pdt.coin_inventory_per75, inventory2_pdt.coin_inventory_per25]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Country: inventory2_pdt.country_code
      Level No: inventory2_pdt.level_no
      Install Dt Date: inventory2_pdt.install_dt_date
      App Version: inventory2_pdt.app_version
      Event Date: inventory2_pdt.event_date
      Platform: inventory2_pdt.user_platform
      Partner: users_pdt.network
      IsPayer: users_pdt.isPayer
    row: 84
    col: 0
    width: 24
    height: 11
  - title: InGame Booster Spend
    name: InGame Booster Spend
    model: tile_match
    explore: inventory2_pdt
    type: looker_line
    fields: [inventory2_pdt.event_date, inventory2_pdt.extra_slot_spend_avg, inventory2_pdt.glove_spend_avg,
      inventory2_pdt.magic_wand_spend_avg, inventory2_pdt.shuffle_spend_avg, inventory2_pdt.time_freezer_spend_avg,
      inventory2_pdt.toss_spend_avg]
    fill_fields: [inventory2_pdt.event_date]
    filters:
      inventory2_pdt.advertising_id: "-2FCECACA-0BCA-42F6-9585-AAA580E35306"
    sorts: [inventory2_pdt.event_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: inventory2_pdt.coin_inventory
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
    hidden_series: [inventory2_pdt.coin_inventory_per75, inventory2_pdt.coin_inventory_per25]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Country: inventory2_pdt.country_code
      Level No: inventory2_pdt.level_no
      Install Dt Date: inventory2_pdt.install_dt_date
      App Version: inventory2_pdt.app_version
      Event Date: inventory2_pdt.event_date
      Platform: inventory2_pdt.user_platform
      Partner: users_pdt.network
      IsPayer: users_pdt.isPayer
    row: 51
    col: 0
    width: 24
    height: 11
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
    explore: inventory2_pdt
    listens_to_filters: []
    field: inventory2_pdt.install_dt_date
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
    explore: inventory2_pdt
    listens_to_filters: []
    field: inventory2_pdt.event_date
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
    explore: inventory2_pdt
    listens_to_filters: []
    field: inventory2_pdt.level_no
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
    explore: inventory2_pdt
    listens_to_filters: []
    field: inventory2_pdt.country_code
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
    explore: inventory2_pdt
    listens_to_filters: []
    field: inventory2_pdt.app_version
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
    explore: inventory2_pdt
    listens_to_filters: []
    field: inventory2_pdt.user_platform
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
    explore: inventory2_pdt
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
    explore: inventory2_pdt
    listens_to_filters: []
    field: users_pdt.isPayer
