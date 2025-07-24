---
- dashboard: level_reach_days_dashboard
  title: Level Reach Days Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: fMcK8XjxUwitpMOsm5V1Tj
  elements:
  - title: Level 200 Reach Days
    name: Level 200 Reach Days
    model: tile_match
    explore: level_x_reach_day
    type: looker_line
    fields: [level_x_reach_day.milestone_reach_week, level_x_reach_day.level200_reach_avg,
      level_x_reach_day.level200_reach_per10, level_x_reach_day.level200_reach_per25,
      level_x_reach_day.level200_reach_per50, level_x_reach_day.level200_reach_per75,
      level_x_reach_day.level200_reach_per90]
    fill_fields: [level_x_reach_day.milestone_reach_week]
    filters:
      level_x_reach_day.milestone_level: '200'
    sorts: [level_x_reach_day.milestone_reach_week desc]
    limit: 500
    column_limit: 50
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
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Event Reach Date: level_x_reach_day.milestone_reach_week
      Campaign: users_pdt.campaign
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Adgroup: users_pdt.adgroup
      Partner: users_pdt.network
      Platform: users_pdt.user_platform
      Country Tier: users_pdt.country_tier
    row: 7
    col: 12
    width: 12
    height: 8
  - title: Level 50 Reach Days
    name: Level 50 Reach Days
    model: tile_match
    explore: level_x_reach_day
    type: looker_line
    fields: [level_x_reach_day.milestone_reach_week, level_x_reach_day.level50_reach_avg,
      level_x_reach_day.level50_reach_per10, level_x_reach_day.level50_reach_per25,
      level_x_reach_day.level50_reach_per50, level_x_reach_day.level50_reach_per75,
      level_x_reach_day.level50_reach_per90]
    fill_fields: [level_x_reach_day.milestone_reach_week]
    filters:
      level_x_reach_day.milestone_level: '50'
    sorts: [level_x_reach_day.milestone_reach_week desc]
    limit: 500
    column_limit: 50
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
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Event Reach Date: level_x_reach_day.milestone_reach_week
      Campaign: users_pdt.campaign
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Adgroup: users_pdt.adgroup
      Partner: users_pdt.network
      Platform: users_pdt.user_platform
      Country Tier: users_pdt.country_tier
    row: 0
    col: 0
    width: 12
    height: 7
  - title: Level 100 Reach Days
    name: Level 100 Reach Days
    model: tile_match
    explore: level_x_reach_day
    type: looker_line
    fields: [level_x_reach_day.milestone_reach_week, level_x_reach_day.level100_reach_avg,
      level_x_reach_day.level100_reach_per10, level_x_reach_day.level100_reach_per25,
      level_x_reach_day.level100_reach_per50, level_x_reach_day.level100_reach_per75,
      level_x_reach_day.level100_reach_per90]
    fill_fields: [level_x_reach_day.milestone_reach_week]
    filters:
      level_x_reach_day.milestone_level: '100'
    sorts: [level_x_reach_day.milestone_reach_week desc]
    limit: 500
    column_limit: 50
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
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Event Reach Date: level_x_reach_day.milestone_reach_week
      Campaign: users_pdt.campaign
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Adgroup: users_pdt.adgroup
      Partner: users_pdt.network
      Platform: users_pdt.user_platform
      Country Tier: users_pdt.country_tier
    row: 0
    col: 12
    width: 12
    height: 7
  - title: Level 150 Reach Days
    name: Level 150 Reach Days
    model: tile_match
    explore: level_x_reach_day
    type: looker_line
    fields: [level_x_reach_day.milestone_reach_week, level_x_reach_day.level150_reach_avg,
      level_x_reach_day.level150_reach_per10, level_x_reach_day.level150_reach_per25,
      level_x_reach_day.level150_reach_per50, level_x_reach_day.level150_reach_per75,
      level_x_reach_day.level150_reach_per90]
    fill_fields: [level_x_reach_day.milestone_reach_week]
    filters:
      level_x_reach_day.milestone_level: '150'
    sorts: [level_x_reach_day.milestone_reach_week desc]
    limit: 500
    column_limit: 50
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
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Event Reach Date: level_x_reach_day.milestone_reach_week
      Campaign: users_pdt.campaign
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Adgroup: users_pdt.adgroup
      Partner: users_pdt.network
      Platform: users_pdt.user_platform
      Country Tier: users_pdt.country_tier
    row: 7
    col: 0
    width: 12
    height: 8
  - title: Level 250 Reach Days
    name: Level 250 Reach Days
    model: tile_match
    explore: level_x_reach_day
    type: looker_line
    fields: [level_x_reach_day.milestone_reach_week, level_x_reach_day.level250_reach_avg,
      level_x_reach_day.level250_reach_per10, level_x_reach_day.level250_reach_per25,
      level_x_reach_day.level250_reach_per50, level_x_reach_day.level250_reach_per75,
      level_x_reach_day.level250_reach_per90]
    fill_fields: [level_x_reach_day.milestone_reach_week]
    filters:
      level_x_reach_day.milestone_level: '250'
    sorts: [level_x_reach_day.milestone_reach_week desc]
    limit: 500
    column_limit: 50
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
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Event Reach Date: level_x_reach_day.milestone_reach_week
      Campaign: users_pdt.campaign
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Adgroup: users_pdt.adgroup
      Partner: users_pdt.network
      Platform: users_pdt.user_platform
      Country Tier: users_pdt.country_tier
    row: 15
    col: 0
    width: 12
    height: 9
  - title: Level 350 Reach Days
    name: Level 350 Reach Days
    model: tile_match
    explore: level_x_reach_day
    type: looker_line
    fields: [level_x_reach_day.milestone_reach_week, level_x_reach_day.level350_reach_avg,
      level_x_reach_day.level350_reach_per10, level_x_reach_day.level350_reach_per25,
      level_x_reach_day.level350_reach_per50, level_x_reach_day.level350_reach_per75,
      level_x_reach_day.level350_reach_per90]
    fill_fields: [level_x_reach_day.milestone_reach_week]
    filters:
      level_x_reach_day.milestone_level: '350'
    sorts: [level_x_reach_day.milestone_reach_week desc]
    limit: 500
    column_limit: 50
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
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Event Reach Date: level_x_reach_day.milestone_reach_week
      Campaign: users_pdt.campaign
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Adgroup: users_pdt.adgroup
      Partner: users_pdt.network
      Platform: users_pdt.user_platform
      Country Tier: users_pdt.country_tier
    row: 15
    col: 12
    width: 12
    height: 9
  - title: Level 500 Reach Days
    name: Level 500 Reach Days
    model: tile_match
    explore: level_x_reach_day
    type: looker_line
    fields: [level_x_reach_day.milestone_reach_week, level_x_reach_day.level500_reach_avg,
      level_x_reach_day.level500_reach_per10, level_x_reach_day.level500_reach_per25,
      level_x_reach_day.level500_reach_per50, level_x_reach_day.level500_reach_per75,
      level_x_reach_day.level500_reach_per90]
    fill_fields: [level_x_reach_day.milestone_reach_week]
    filters:
      level_x_reach_day.milestone_level: '500'
    sorts: [level_x_reach_day.milestone_reach_week desc]
    limit: 500
    column_limit: 50
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
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Event Reach Date: level_x_reach_day.milestone_reach_week
      Campaign: users_pdt.campaign
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Adgroup: users_pdt.adgroup
      Partner: users_pdt.network
      Platform: users_pdt.user_platform
      Country Tier: users_pdt.country_tier
    row: 24
    col: 0
    width: 12
    height: 8
  - title: Level 750 Reach Days
    name: Level 750 Reach Days
    model: tile_match
    explore: level_x_reach_day
    type: looker_line
    fields: [level_x_reach_day.milestone_reach_week, level_x_reach_day.level750_reach_avg,
      level_x_reach_day.level750_reach_per10, level_x_reach_day.level750_reach_per25,
      level_x_reach_day.level750_reach_per50, level_x_reach_day.level750_reach_per75,
      level_x_reach_day.level750_reach_per90]
    fill_fields: [level_x_reach_day.milestone_reach_week]
    filters:
      level_x_reach_day.milestone_level: '750'
    sorts: [level_x_reach_day.milestone_reach_week desc]
    limit: 500
    column_limit: 50
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
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Event Reach Date: level_x_reach_day.milestone_reach_week
      Campaign: users_pdt.campaign
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Adgroup: users_pdt.adgroup
      Partner: users_pdt.network
      Platform: users_pdt.user_platform
      Country Tier: users_pdt.country_tier
    row: 24
    col: 12
    width: 12
    height: 8
  - title: Level 1000 Reach Days
    name: Level 1000 Reach Days
    model: tile_match
    explore: level_x_reach_day
    type: looker_line
    fields: [level_x_reach_day.milestone_reach_week, level_x_reach_day.level1000_reach_avg,
      level_x_reach_day.level1000_reach_per10, level_x_reach_day.level1000_reach_per25,
      level_x_reach_day.level1000_reach_per50, level_x_reach_day.level1000_reach_per75,
      level_x_reach_day.level1000_reach_per90]
    fill_fields: [level_x_reach_day.milestone_reach_week]
    filters:
      level_x_reach_day.milestone_level: '1000'
    sorts: [level_x_reach_day.milestone_reach_week desc]
    limit: 500
    column_limit: 50
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
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Event Reach Date: level_x_reach_day.milestone_reach_week
      Campaign: users_pdt.campaign
      Installed Date: users_pdt.installed_date
      Country: users_pdt.country
      Adgroup: users_pdt.adgroup
      Partner: users_pdt.network
      Platform: users_pdt.user_platform
      Country Tier: users_pdt.country_tier
    row: 32
    col: 0
    width: 12
    height: 9
  filters:
  - name: Installed Date
    title: Installed Date
    type: field_filter
    default_value: 180 day ago for 180 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: tile_match
    explore: level_x_reach_day
    listens_to_filters: []
    field: users_pdt.installed_date
  - name: Event Reach Date
    title: Event Reach Date
    type: field_filter
    default_value: 90 day ago for 90 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: tile_match
    explore: level_x_reach_day
    listens_to_filters: []
    field: level_x_reach_day.milestone_reach_week
  - name: Country Tier
    title: Country Tier
    type: field_filter
    default_value: Tier 1,UK
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: level_x_reach_day
    listens_to_filters: []
    field: users_pdt.country_tier
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
    explore: level_x_reach_day
    listens_to_filters: []
    field: users_pdt.country
  - name: Platform
    title: Platform
    type: field_filter
    default_value: ios
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: level_x_reach_day
    listens_to_filters: []
    field: users_pdt.user_platform
  - name: Partner
    title: Partner
    type: field_filter
    default_value: "-adjoe"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: tile_match
    explore: level_x_reach_day
    listens_to_filters: []
    field: users_pdt.network
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
    explore: level_x_reach_day
    listens_to_filters: []
    field: users_pdt.campaign
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
    explore: level_x_reach_day
    listens_to_filters: []
    field: users_pdt.adgroup
